const Hacker = artifacts.require('Hacker');

module.exports = function (deployer) {
  deployer.deploy(Hacker);
};
