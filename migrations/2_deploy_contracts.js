var Boat = artifacts.require("./Boat.sol")

module.exports = function(deployer) {
	deployer.deploy(Boat)
}
