
---
<h1 align="center">🌐 Verix (VRX) Token 🌐</h1>

<p align="center">
  <img src="images/verix-logo.png" alt="Verix Logo" width="200" height="200"/>
</p>

*An ERC20 token on Ethereum and Polygon with advanced functionalities.*

---

### 📜 **Token Summary**

- **Name**: Verix  
- **Symbol**: VRX  
- **Initial Supply**: 100,000,000 VRX  
- **Network**: Ethereum-Compatible Chains (Ethereum, Polygon, etc.)

---

## ✨ **Features Overview**

🟢 **ERC20 Compliant** – Fully compatible with ERC20 standard, supporting transfer, approval, and allowance functions.

🔥 **Minting & Burning** – Verix allows:
   - **Minting** by the contract owner to create new tokens.
   - **Burning** by any holder to reduce their balance.

🔒 **Controlled Trading** – The contract owner can enable or disable trading at any time.

🌈 **Fee Exemptions** – Select addresses can be exempted from transaction fees, perfect for internal transfers or partnerships.

📤 **Airdrop Functionality** – Distribute tokens to multiple addresses with a single, gas-efficient transaction.

💸 **Withdrawal Mechanisms** – Allows the owner to withdraw other ERC20 tokens or native currency from the contract.

---

## 🚀 **Contract Functions**

| Function                    | Description                                          | Code Example                                      |
|-----------------------------|------------------------------------------------------|---------------------------------------------------|
| **Enable Trading**          | Enables or disables trading.                         | `enableTrading(true);`                            |
| **Mint Tokens**             | Creates new tokens in a specified account.           | `mint(0xAddress, 1000);`                          |
| **Burn Tokens**             | Burns tokens from your balance.                      | `burn(100);`                                      |
| **Set Fee Exemption**       | Exempts an address from transaction fees.            | `setExemptFromFee(0xAddress, true);`              |
| **Airdrop**                 | Distributes tokens to multiple addresses.            | `airdrop([0xAddr1, 0xAddr2], 50);`                |
| **Withdraw ERC20 Tokens**   | Withdraws ERC20 tokens from the contract.            | `withdrawERC20(0xTokenAddress, 500);`             |
| **Withdraw Native Currency**| Withdraws native currency like ETH or MATIC.         | `withdrawNative();`                               |

---

## 📲 **Setup & Installation**

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/YourUsername/Verix-VRX-Token.git
   ```
   
2. **Install Dependencies**  
   ```bash
   npm install
   ```
   
3. **Compile & Deploy**  
   ```bash
   npx hardhat compile
   npx hardhat run scripts/deploy.js --network mumbai
   ```

---

## 🎨 **Visual Representation**

| **Functionality** | **Example Screenshot** |
|-------------------|------------------------|
| Transfer Tokens   | ![Transfer Example](https://via.placeholder.com/300x200.png?text=Transfer+Tokens+Example) |
| Minting Tokens    | ![Minting Example](https://via.placeholder.com/300x200.png?text=Minting+Tokens+Example) |
| Burning Tokens    | ![Burning Example](https://via.placeholder.com/300x200.png?text=Burning+Tokens+Example) |

---

## ⚠️ **Important Notes**

🚧 **Testing**  
Run extensive tests on networks like Rinkeby or Mumbai to ensure the contract’s functionality before mainnet deployment.

🛡️ **Security**  
A security audit is recommended. Be cautious with `onlyOwner` functions and ensure token operations are properly protected.

---

## 🔗 **License**

Verix (VRX) is open-source under the MIT License. See the LICENSE file for details.

---

