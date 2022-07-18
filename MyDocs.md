# Title: NFT Marketplace Creation
## Requirements: 
***Installation of the following dependencies:***
- [Solidity](https://docs.soliditylang.org/en/v0.8.15/): Programming language to write smart contracts. 
- [Javascript](https://developer.mozilla.org/en-US/docs/Web/JavaScript): For using front-end dev and back-end testing tools.
- [Hardhat](https://hardhat.org/): Testing tool and a JS framework.
- [IPFS](https://ipfs.io/): A peer-to-peer hypermedia protocol
designed to preserve and grow humanity's knowledge
by making the web upgradeable, resilient, and more open.
  - [NFT.storage](https://nft.storage/): It is a long-term storage service designed for off-chain NFT data (like metadata, images, and other assets) for up to 31GiB in size per individual upload. Data is content addressed using IPFS, meaning the URI pointing to a piece of data (“ipfs://…”) is completely unique to that data (using a content identifier, or CID). IPFS URLs and CIDs can be used in NFTs and metadata to ensure the NFT forever actually refers to the intended data (eliminating things like rug pulls, and making it trustlessly verifiable what content an NFT is associated with).
- [React routers](https://v5.reactrouter.com/): Navigational components.
- [Ethers.js](https://docs.ethers.io/v5/): It is a library that aims to be a complete and compact library for interacting with the Ethereum Blockchain.
- [Etherscan](https://etherscan.io/):  Etherscan allows you to explore and search the Ethereum blockchain for transactions, addresses, tokens, prices and other activities taking place on Ethereum (ETH).

- [MetaMask](https://metamask.io/): A software cryptocurrency wallet used to interact with the Ethereum blockchain.
- [Alchemy](https://www.alchemy.com/): It is a PaaS.
- [OpenZeppelin](https://www.openzeppelin.com/): A solidity library of reusable and secure smart contracts and provides a   complete suite of security products to build, manage, and inspect all aspects of software development and operations for Ethereum projects.

----

***Initial setup: ***
- Install [NodeJS](https://nodejs.org/en/), should work with any node version below 16.5.0
- Install [Hardhat](https://hardhat.org/)

### Use the following commands for initial setup:
```
$ cd nft_marketplace
$ npm install
```
### Boot up local development blockchain
```
$ cd nft_marketplace
$ npx hardhat node
```

### Connect development blockchain accounts to Metamask
- Copy private key of the addresses and import to Metamask
- Connect your metamask to hardhat blockchain, network 127.0.0.1:8545.
- If you have not added hardhat to the list of networks on your metamask, open up a browser, click the fox icon, then click the top center dropdown button that lists all the available networks then click add networks. A form should pop up. For the "Network Name" field enter "Hardhat". For the "New RPC URL" field enter "http://127.0.0.1:8545". For the chain ID enter "31337". Then click save.  


### Migrate Smart Contracts
`npx hardhat run src/backend/scripts/deploy.js --network localhost`

### Run Tests
`$ npx hardhat test`

### Launch Frontend
`$ npm run start`



