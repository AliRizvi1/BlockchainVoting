//using Mocha and Chai testing framework through node
//to be used for testing our contract using Truffle before deployment
var Election = artifacts.require("./Election.sol");

//both it instances pass!
contract("Election", function(accounts) {
	var electionInstance;

	it("initializes with two candidates", function() {
		return Election.deployed().then(function(instance) {
			return instance.candidatesCount();
		}).then(function(count) {
			assert.equal(count, 2);
		});
	});

	it("it initializes the candidates with the correct values", function() {
		return Election.deployed().then(function(instance) {
			electionInstance = instance;
			return electionInstance.candidates(1);
		}).then(function(candidate) {
			assert.equal(candidate[0], 1, "correct ID");
			assert.equal(candidate[1], "Candidate 1", "correct name");
			assert.equal(candidate[2], 0, "correct vote count");
			return electionInstance.candidates(2);
		}).then(function(candidate) {
			assert.equal(candidate[0], 2, "correct ID");
			assert.equal(candidate[1], "Candidate 2", "correct name");
			assert.equal(candidate[2], 0, "correct vote count");
		});
	});
});