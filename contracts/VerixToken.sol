// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts@4.9.3/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.3/access/Ownable.sol";

contract VerixToken is ERC20, Ownable {
    uint256 private constant INITIAL_SUPPLY = 100_000_000 * 10**18;
    bool public tradingEnabled = false;
    mapping(address => bool) private _isExemptedFromFee;

    event TradingStatusChanged(bool enabled);
    event AddressExemptedFromFee(address indexed account, bool isExempt);

    constructor() ERC20("Verix", "VRX") {
        _mint(msg.sender, INITIAL_SUPPLY);
    }

    modifier onlyWhenTradingEnabled() {
        require(tradingEnabled, "Trading is not enabled");
        _;
    }

    function enableTrading(bool _enabled) external onlyOwner {
        tradingEnabled = _enabled;
        emit TradingStatusChanged(_enabled);
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function setExemptFromFee(address account, bool exempt) external onlyOwner {
        _isExemptedFromFee[account] = exempt;
        emit AddressExemptedFromFee(account, exempt);
    }

    function transfer(address recipient, uint256 amount)
        public
        override
        onlyWhenTradingEnabled
        returns (bool)
    {
        require(
            _isExemptedFromFee[msg.sender] || _isExemptedFromFee[recipient],
            "Address is not exempt from fee"
        );

        return super.transfer(recipient, amount);
    }

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public override onlyWhenTradingEnabled returns (bool) {
        require(
            _isExemptedFromFee[sender] || _isExemptedFromFee[recipient],
            "Address is not exempt from fee"
        );

        return super.transferFrom(sender, recipient, amount);
    }

    function airdrop(address[] calldata recipients, uint256 amount) external onlyOwner {
        for (uint256 i = 0; i < recipients.length; i++) {
            _transfer(msg.sender, recipients[i], amount);
        }
    }

    function withdrawERC20(address token, uint256 amount) external onlyOwner {
        IERC20(token).transfer(msg.sender, amount);
    }

    function withdrawNative() external onlyOwner {
        payable(msg.sender).transfer(address(this).balance);
    }

    receive() external payable {}
}
