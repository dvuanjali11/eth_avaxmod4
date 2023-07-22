#  Degen Token (ERC-20)

The contract is an ERC20 token smart contract designed to provide the following features:

1. Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
2. Transferring tokens: Players should be able to transfer their tokens to others.
3. Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
4. Checking token balance: Players should be able to check their token balance at any time.
5. Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.

### Prerequisites
- Remix IDE: A web-based integrated development environment for Ethereum smart contracts (https://remix.ethereum.org) to access the IDE.
- MetaMask: A browser extension wallet for interacting with Ethereum-based applications.

### Deployment on Remix IDE

1. Open the remix ide in your web browser.
2. Create a new file in Remix IDE. 
3. Compile the contract by selecting the appropriate Solidity compiler version in Remix IDE and clicking the "Compile" button.
4. Connect MetaMask to Remix IDE by clicking on the MetaMask extension icon in your browser and following the instructions to log in.
5. Deploy the contract by clicking the "Deploy & Run Transactions" tab in Remix IDE.
6. Click the "Deploy" button to deploy the contract to the selected testnet.
7. Confirm the transaction in MetaMask and wait for the contract to be deployed. Once deployed, you will see the contract address in the Remix IDE.

## Functions

### mint

The `mint` function allows the contract owner to create new tokens and It takes two parameters: `to` and `amount`. Only the contract owner can call this function.

### transferTokens

The `transferTokens` function enables to transfer their tokens to others. 

### checkBalance

The `checkBalance` function allows to check their token balance at any time.

### burnTokens

The `burnTokens` function enables any token holder to burn their own tokens if they are no longer needed. The function requires that the caller has a sufficient balance of tokens.

### PlayStore

The `PlayStore` function provides information about the available items in the in-game store. 

### redeemTokens

The `redeemTokens` function allows to redeem tokens for items in the in-game store. Players need to provide the `choice` parameter, If the conditions are met, it transfers the corresponding token value to the contract owner.
