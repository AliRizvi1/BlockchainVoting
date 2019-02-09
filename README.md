# Blockchain Voting #

Please note error: with Solidity 5.0 the keyword "emit" is required before event invocations. However not sure of current implementation for this app.

A full-stack DApp created on the Ethereum blockchain using Solidity, node.js and HTML for the front-end.
Initially using a framework for a test app but the end product should provide users with a way to vote against the public blockchain.
Will be used in the clubs I participate in.

Steps to run the code:

1. Download Ganache, MetaMask, Truffle framework, and npm (which includes node.js) if you don't already have it
2. Open Ganache and ensure that a test blockchain is running locally on your computer.
3. Navigate to the application folder in your Bash terminal and use "truffle migrate" to migrate the Solidity code into the truffle framework.
4. Setup MetaMask to your local Ganache server.
4. Then, use "npm run dev" in terminal to run the liteserver. Note: the liteserver was contained in the framework application given by Truffle.
5. A locally hosted webpage should appear with the voting results.

Next steps: 
* Implementing with more than two candidates (change Solidity files, test files, and app.js)
* Improving HTML and CSS front-end design
* Using SQL that updates with the blockchain to store the votes and candidates so the site doesn't constantly pull from the blockchain, which would be unsustainable for larger amounts of traffic compared to a local database that has a set update time.


<img src="http://www.dappuniversity.com/dapp_diagram.png" height="210px"></img></br>


