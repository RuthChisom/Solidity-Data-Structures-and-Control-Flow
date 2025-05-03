# 📚 Lisk Africa Developer’s Bootcamp – Week 3: Data Structures

## 📝 Assignment: Create a Basic Todo List in Solidity

Solidity Data Structures and Control Flow
From creating enum and struct to handling mappings, arrays, and events

In this assignment, you'll create a simple **Todo List smart contract** to demonstrate key Solidity concepts such as enums, structs, mappings, arrays, and events.

---

## ✅ Instructions

### 1. Create a Todo Status Enum
Define an enum to represent the status of a todo:
- `Pending`
- `InProgress`
- `Completed`

### 2. Create a Todo Struct
Create a struct named `Todo` with the following fields:
- `id` (`uint`)
- `content` (`string`)
- `status` (use the enum from step 1)

### 3. Use a Mapping and Array
- Use a mapping to store todos by ID: `mapping(uint => Todo)`
- Use an array to track all todo IDs: `uint[] public todoIds`

### 4. Implement Basic Functions
- `addTodo(string memory _content)` – Adds a new todo
- `updateStatus(uint _id, Status _status)` – Updates a todo’s status
- `getTodo(uint _id)` – Returns a specific todo item

### 5. Add One Simple Event
Emit an event when a new todo is added:
```solidity
event TodoAdded(uint id, string content);
```

---

## 🧠 Concepts Covered
- Enums and Structs
- Mappings and Arrays
- Events in Solidity
- View vs. State-changing functions