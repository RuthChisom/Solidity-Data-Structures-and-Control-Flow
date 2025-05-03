// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract TaskManager {
    // Step 1: Enum for todo status
    enum Status {
        Pending,
        InProgress,
        Completed
    }

    // Step 2: Struct for a Todo item
    struct Todo {
        uint id;
        string content;
        Status status;
    }

    //Step 5: Emit an event when a new todo is added:
    event TodoAdded(uint id, string content);

    // Step 3: Mapping from todo ID to Todo
    mapping(uint => Todo) public todos;
    // Array to store all todo IDs
    uint[] public todoIds;

    //Step 4: Implement basic functions
    uint public nextId = 1;

    function addTodo(string memory _content) public {
        todos[nextId] = Todo(nextId, _content, Status.Pending);
        todoIds.push(nextId);
        emit TodoAdded(nextId, _content);
        nextId++;
    }

    function updateStatus(uint _id, Status _status) public {
        require(_id < nextId, "Todo does not exist");
        todos[_id].status = _status;
    }

    function getTodo(uint _id) public view returns (Todo memory) {
        require(_id < nextId, "Todo does not exist");
        return todos[_id];
    }

}
