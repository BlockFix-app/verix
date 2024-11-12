
**Verix (VRX) Token**
Verix (VRX) is an ERC20-compliant token built on the Ethereum blockchain. This token includes additional functionalities such as minting, burning, trading control, transaction fee exemptions, airdrops, and withdrawal mechanisms.

Token Details
Name: Verix
Symbol: VRX
Initial Supply: 100,000,000 VRX
Features
ERC20 Compliance
The Verix token adheres to the ERC20 standard, including basic functionalities like transfer and allowance.

Minting and Burning
Minting: The contract owner can mint new tokens.
Burning: Any holder can burn tokens from their balance.
Trading Control
Trading can be enabled or disabled by the contract owner.
Transfer and Approval
Standard ERC20 functionalities such as transfer and allowance are supported.
Fee Exemption
Certain addresses can be exempted from transaction fees, as determined by the contract owner.
Airdrop Functionality
Tokens can be efficiently distributed to multiple addresses in a single transaction.
Withdrawal Mechanisms
The contract owner can withdraw ERC20 tokens and native currency (e.g., MATIC on Polygon) from the contract.
Contract Functions
Enable or Disable Trading

solidity

Deploy Contract

Download
Copy code
function enableTrading(bool _enabled) external onlyOwner
Mint Tokens

solidity

Deploy Contract

Download
Copy code
function mint(address to, uint256 amount) external onlyOwner
Burn Tokens

solidity

Deploy Contract

Download
Copy code
function burn(uint256 amount) external
Set Fee Exemptions

solidity

Deploy Contract

Download
Copy code
function setExemptFromFee(address account, bool exempt) external onlyOwner
Airdrop Tokens

solidity

Deploy Contract

Download
Copy code
function airdrop(address[] calldata recipients, uint256 amount) external onlyOwner
Withdraw ERC20 Tokens

solidity

Deploy Contract

Download
Copy code
function withdrawERC20(address token, uint256 amount) external onlyOwner
Withdraw Native Currency

solidity

Deploy Contract

Download
Copy code
function withdrawNative() external onlyOwner
Deployment
The contract can be deployed to any Ethereum-compatible blockchain. It has been tested on Ethereum and Polygon testnets.

Important Notes
Ensure to conduct thorough testing before deploying on the mainnet.
Security audits are recommended for identifying potential vulnerabilities.
Consider gas optimization solutions for high-transaction environments.
License

This project is licensed under the MIT License.
