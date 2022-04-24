/*
"There are three environments for a blockchain network: mainnet, devnet, and testnet.

devnet
Till now we were using the local development network to run our smart contracts. This is the easiest and fastest way to get started, iterate and run things without having to setup tons of stuff. For setting up devnet, we used Hardhat that provided us a local ethereum like blockchain environment. Remember at the start of this project, I mentioned, how every time we deploy a smart contract it is a start from scratch. Now we are being promoted. Since we have setup a basic contract which we believe can run. We will use a testnet environment.

testnet
Because devnets are a simplified simulation of the real network, they don't always behave in quite the same way. This is a good thing when you want fast development cycles, but not so great when you want to know how your contract will actually work on mainnet.

For that, you can deploy and run your contract on a test network, or testnet. These networks generally run the same code as the mainnet, but they have separate blockchain states and may be configured differently in various ways.

mainnet
The mainnet is the official production network. It is considered the source of truth, and its tokens can be exchanged for "real world" money in various ways. As you might imagine, using the mainnet for development and testing is an expensive proposition."
*/