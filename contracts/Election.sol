pragram solidity ^0.4.11;

contract Election {
	string public candidate;
	//need a constructor to initialize:
	function Election() public {
		//this will represent a state variable:
		candidate = "Candidate 1";
	}

	
}