const Vulnerable = artifacts.require('Vulnerable');

module.exports = function (deployer) {
  deployer.deploy(Vulnerable);
};
