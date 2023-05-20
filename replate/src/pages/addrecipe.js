import React from 'react';

function AddForm() {

  return (
    <div className="add-recipe-form">
      <form>
        <label htmlFor="ingredients" className="form-label">Enter the leftover ingredients separated by commas:</label>
        <input type="text" id="ingredients" className="form-input" />
        <button type="submit" className="add-form-button">Submit Recipes</button>
      </form>
    </div>
  );
}

export default AddForm;
