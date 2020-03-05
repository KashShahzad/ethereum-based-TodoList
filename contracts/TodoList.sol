pragma solidity >=0.4.21 <0.7.0;

contract TodoList {
    //First we need to keep the track of the tasks that we need in todo list
    //we do this with the use of state variable
    //state variables are written into BC represent the state of the SC on BC
    //it changes anytime the this taskcount changes
    uint public taskCount = 0;
    //on compiling truffle will create a build and json version of this file
    //includes the abstract binary interface and bytecode which runs on ethereum VM
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    constructor() public {
        createTask("Check out this");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}