pragma solidity ^0.5.0;

contract Election {
	string public candidate;
	//need a constructor to initialize
	constructor() public {
		//this will represent a state variable:
		candidate = "Candidate 1";
	}

	
}