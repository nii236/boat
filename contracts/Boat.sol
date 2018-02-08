pragma solidity ^0.4.18;
pragma experimental ABIEncoderV2;

contract Boat {
	
	mapping(string => Thread) private threads;
	string[] private threadHashMap;
	string[] private threadIndex;

	struct Thread {
		string title;
		bool archived;
		uint index;
	}

	function create(string uuid, string title) public returns (string) {
		threads[uuid].title = title;
		threads[uuid].index = threadIndex.push(uuid) - 1;
		
	}

	function count() returns (uint) {
		return threadIndex.length;
	}

	function get(string uuid) constant returns (string) {
		return threads[uuid].title;
	}

	function update(string uuid, Thread input) {
		var thisThread = threads[uuid];
		thisThread.title = input.title;
	}

	function del(string uuid) {
		var thisThread = threads[uuid];
		thisThread.archived = true;
	}

	function undel(string uuid) {
		var thisThread = threads[uuid];
		thisThread.archived = false;
	}

	function submit(string submission) public {
		// submissions.push(submission);
	}

}
