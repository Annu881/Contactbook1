# Decentralized Contact Book on Flare Network

## Contract Address
[0xB1B22F04943b9a4B1c0397e14059b926B313C59a](https://coston2-explorer.flare.network/address/0xB1B22F04943b9a4B1c0397e14059b926B313C59a)

---

## Project Overview

The **Decentralized Contact Book** is a blockchain-based solution designed to provide users with a secure, transparent, and immutable method to store and manage their personal contact information. By leveraging the Flare network, this application ensures that users maintain full ownership of their data while eliminating reliance on centralized servers. 

In a traditional system, contact information is stored in databases controlled by companies, which exposes it to risks such as data breaches, unauthorized access, and potential loss. This project solves these challenges by storing contact information directly on-chain, providing an auditable and tamper-proof record.

This project is ideal for users who want to manage their personal contacts securely, for developers exploring decentralized identity systems, and for applications that require a verifiable and transparent storage mechanism for user data.

---

## Key Features

1. **Secure On-Chain Storage**
   - Users can save their contact information (name and phone number) directly to a smart contract.
   - Each user’s data is stored under their wallet address, ensuring personal ownership and privacy.

2. **Retrieval of Stored Contacts**
   - Fetch your stored contact details at any time.
   - Ensures transparency as anyone can verify the data on-chain using the contract.

3. **Wallet Integration**
   - Compatible with Flare-compatible wallets such as MetaMask.
   - Only the wallet owner can save or update their contact data, ensuring control over personal information.

4. **Transaction Lifecycle Feedback**
   - Provides real-time updates on transaction status:
     - **Pending:** Transaction is submitted but not yet mined.
     - **Confirming:** Transaction is being processed on-chain.
     - **Confirmed:** Transaction successfully included in a block.
   - Visual feedback ensures users know the exact state of their interactions.

5. **Error Handling**
   - Detects and displays errors from the blockchain interaction.
   - Ensures users are informed if a transaction fails or is rejected.

6. **User-Friendly Interface**
   - Responsive web interface with wallet gating.
   - Input validation ensures only proper Ethereum addresses and valid data are submitted.
   - Modern design with clear transaction status indicators.

7. **Immutable & Transparent Data**
   - All data stored on-chain is immutable.
   - Blockchain explorer links allow verification of contract transactions.

---

## Technical Architecture

1. **Smart Contract**
   - Written in Solidity and deployed on the Flare Coston2 testnet.
   - Key Functions:
     - `getContact()`: Returns the stored name and phone number for the caller.
     - `saveContact(string _name, string _phone)`: Saves or updates the caller's contact information.
     - `owner()`: Returns the contract owner address for administrative purposes.
   - Contract ensures that each wallet address has its unique contact entry.

2. **Frontend**
   - Built with React/Next.js and TypeScript.
   - Uses Wagmi and Viem libraries for Ethereum blockchain interaction.
   - Features:
     - Wallet connection handling
     - Smart contract read/write hooks
     - Input validation and state management
     - Transaction tracking and user notifications

3. **Hooks**
   - `useContactContract`: Custom hook managing:
     - Reading current contact data
     - Writing new contact data
     - Handling transaction state and errors

---

## How It Solves Real-World Problems

### Traditional Issues with Contact Storage:
- Centralized databases can be hacked or manipulated.
- Users have limited control over their personal information.
- Lack of transparency makes verifying data ownership difficult.
- Recovery or migration of data is complicated in centralized systems.

### Blockchain Solution:
- **Ownership:** Contact data is tied to the wallet address of the user.
- **Security:** Immutable on-chain storage prevents tampering.
- **Transparency:** Users and third parties can verify transactions on the blockchain.
- **Decentralization:** No reliance on central servers or intermediaries.
- **Auditability:** Complete transaction history ensures accountability.

### Use Cases:
- **Personal Contact Management:** Users can securely store their personal contacts without depending on third-party services.
- **Emergency Contact Storage:** Immutable and accessible anywhere.
- **Decentralized Identity Applications:** Users can prove ownership of contact information without centralized databases.
- **Blockchain Verification Services:** Verify user-submitted contact information for decentralized apps or services.

---

## User Flow

1. **Connect Wallet**
   - User connects a Flare-compatible wallet to the application.
   - Wallet gating ensures only authorized users interact with their own data.

2. **Save Contact**
   - Input name and phone number.
   - Submit transaction to save contact on-chain.
   - Real-time status updates inform the user of transaction progress.

3. **Retrieve Contact**
   - Automatically fetches stored contact information from the blockchain.
   - Displays current name and phone number associated with the wallet.

4. **Transaction Feedback**
   - Displays transaction hash, pending status, confirmation, or errors.
   - Users can verify transactions on Flare Explorer.

---

## Benefits

- **Security:** Reduces risk of data breaches by removing centralized storage.
- **Privacy:** User data is controlled by the wallet owner.
- **Reliability:** Blockchain ensures permanence and resistance to tampering.
- **Transparency:** All interactions are verifiable on-chain.
- **Ease of Use:** Intuitive frontend allows users to manage contacts effortlessly.

---

## Getting Started

1. Install a Flare-compatible wallet (MetaMask recommended).
2. Connect the wallet to the Coston2 testnet.
3. Access the frontend interface.
4. Enter **Name** and **Phone Number**.
5. Click **Save Contact** to store your information on-chain.
6. Observe transaction status until confirmation.
7. Retrieve your saved contact information anytime.