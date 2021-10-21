const HDWalletProvider = require('@truffle/hdwallet-provider');
const mnemonic = 'midnight predict age diesel huge remember apple magic one degree pulp display';
const QuickNodeURL = "https://ropsten.infura.io/v3/3dc192c99a6b4625b740983910242c71";

module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*"
    },
    ropsten: {
      provider: () => new HDWalletProvider(mnemonic, QuickNodeURL),
      network_id: 3,       // Ropsten's id
      gas: 550000,        // Ropsten has a lower block limit than mainnet
      confirmations: 0,    // # of confs to wait between deployments. (default: 0)
      timeoutBlocks: 200000,  // # of blocks before a deployment times out  (minimum/default: 50)
      skipDryRun: false     // Skip dry run before migrations? (default: false for public nets )
    },
  },
  compilers: {
    solc: {
      version: "0.8.1",   
    }
  },

};