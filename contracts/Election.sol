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

	mapping(address => bool) public voters;

	event votedEvent (
        uint indexed _candidateId
    );

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

	function vote (uint _candidateId) public {
        // require that they haven't voted before
        require(!voters[msg.sender]);

        // require a valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        // record that voter has voted
        voters[msg.sender] = true;

        // update candidate vote Count
        candidates[_candidateId].voteCount ++;

        // trigger voted event
        votedEvent(_candidateId);
    }

	
}
