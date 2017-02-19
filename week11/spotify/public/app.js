var app = function(){
  handleSearch();
  var saved = localStorage.getItem("urlSearch");
  var lastSearch = setSearchText(saved);
  var url = "https://api.spotify.com/v1/search?q=" + saved + "&type=album";
  makeRequest(url, requestComplete)
}

window.onload = app;


var handleSearch = function(){
  var searchQuery = document.getElementById("search-query");
  var albumsDiv = document.getElementById("albums");

  searchQuery.onkeyup = function (){
    var url = "https://api.spotify.com/v1/search?q=" + this.value + "&type=album";
    localStorage.setItem("urlSearch", this.value);
    makeRequest(url, requestComplete);
  } 
}

var setSearchText = function(text){
  var searchBox = document.querySelector("#search-query");
  searchBox.value = text;
}

var ResultInfo = null;

var makeRequest = function (url, callback) {
  var request = new XMLHttpRequest();
  request.open("GET", url);
  request.onload = callback;
  request.send();
}

var requestComplete = function (){
  if (this.status !== 200) return;
    var jsonString = this.responseText;
    ResultInfo = JSON.parse(jsonString);
    var resultArray = ResultInfo.albums.items;
    console.log(ResultInfo);
    console.log(resultArray);
    showAlbums(resultArray);
  }


  var showAlbums = function(resultArray){

    var albumsDiv = document.querySelector("#albums");
    albumsDiv.innerHTML = "";

    resultArray.forEach(function(album){
      var title = document.createElement("h3");
      title.innerText = album.name + "\n";
      albumsDiv.appendChild(title);
    })
  }





