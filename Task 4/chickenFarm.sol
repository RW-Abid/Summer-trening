// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract ChickenFarm {
    // Create chickens and counter variables where chickens is a key-value pair variable that stores all the created chickens.
    struct Chicken {
        uint256 id;
        string name;
    }

    uint256 public counter; // counter variable to keep track of the number of chickens.
    mapping(uint256 => Chicken) public chickens; // mapping to store chickens using their IDs.

    function checkStatus() public pure returns (string memory) {
        // Return a message that checks whether the farm is working or not.
        return "Farm is operational.";
    }

    function addChicken(string memory name) public {
        // This function is going to add our new chickens to the Chicken struct.
        counter++;
        chickens[counter] = Chicken(counter, name);
    }

    // Create getChicken function which takes the ID of the chicken and returns the chicken's ID and its name.
    function getChicken(uint256 id) public view returns (uint256, string memory) {
        return (chickens[id].id, chickens[id].name);
    }
}
