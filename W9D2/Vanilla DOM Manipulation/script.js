document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const cityForm = document.querySelector(".list-container > form");

  cityForm.addEventListener('submit', event => {
    event.preventDefault();

    // const cityFavoriteInput = document.getElementsByClassName("favorite-input");
    const cityFavoriteInput = document.querySelector(".favorite-input");

    const cityFavorite = cityFavoriteInput.value;
    cityFavoriteInput.value = "";

    const ul = document.getElementById('sf-places');
    const li = document.createElement('li');
    li.textContent = cityFavorite;
    ul.appendChild(li);
  })


  // adding new photos

  // --- your code here!



});
