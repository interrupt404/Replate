// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract RecipeContract {
    
    // Struct to store recipe details
    struct Recipe {
        uint recipeId;
        string name;
        string description;
        uint chefId;
        uint credits;
    }

    // Mapping to store recipes
    mapping(uint => Recipe) public recipes;

    // Event to signal when a new recipe is suggested
    event RecipeSuggested(uint indexed recipeId, string name, string description, uint chefId, uint credits);

    // Function to suggest a new recipe
    function suggestRecipe(uint recipeId, string memory name, string memory description, uint chefId, uint credits) public {
        // Ensure that the recipe ID has not already been suggested
        require(recipes[recipeId].chefId == 0, "Recipe already suggested");

        // Store the recipe details in the mapping
        recipes[recipeId] = Recipe(recipeId, name, description, chefId, credits);

        // Emit an event to signal that the recipe has been suggested
        emit RecipeSuggested(recipeId, name, description, chefId, credits);
    }

    // Function to get the details of a recipe
    function getRecipe(uint recipeId) public view returns (string memory, string memory, uint, uint) {
        // Ensure that the recipe ID has been suggested
        require(recipes[recipeId].chefId != 0, "Recipe not suggested");

        // Return the details of the recipe
        return (recipes[recipeId].name, recipes[recipeId].description, recipes[recipeId].chefId, recipes[recipeId].credits);
    }
}
