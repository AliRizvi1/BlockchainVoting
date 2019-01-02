pragma solidity ^0.5.0;

contract Election {
	//Model a candidate struct:
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	//Store Candidates:
	//Note: mapping is similar to hash for Solidity

	mapping(uint => Candidate) public candidates;
	//where key=uint and value=Candidate
	//Solidity will create a getter function with keyword "public"

	uint public candidatesCount;
	
	constructor() public {
		//initialize with 2 candidates in the election
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	function addCandidate (string memory _name) private {
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}

	
}
