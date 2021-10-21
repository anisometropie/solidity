var Contract = artifacts.require("Struct");
module.exports = function(deployer) {
  deployer.deploy(Contract, "Michou", 56, "Fire");
};