var catArray = [
{name: 'Boba',
faveFood: 'Sock fluff',
image: 'http://66.media.tumblr.com/d1f01bbe0150fda0c40d2151c5eaeac8/tumblr_odlqqskjj61v9cejwo1_400.jpg'},
{name: 'Barnaby',
faveFood: 'Tuna',
image: 'https://pbs.twimg.com/media/C1hFLZaWEAYjIwb.jpg:large'},
{name: 'Max',
faveFood: 'Whiskas Temptations',
image: 'http://66.media.tumblr.com/7c5784ea89369c780e782bf10c60315a/tumblr_npb0hlYwhV1u63jaco1_1280.jpg'}
];

var createCatUl = function(){
  var createdUL = document.createElement('ul');
  createdUL.classList.add('cat');
  return createdUL;
};

var createNameLi = function(name){
  var createdLi = document.createElement('li');
  createdLi.innerText = 'Name: ' + name;
  return createdLi;
};

var createFoodLi = function(food){
  var createdLi = document.createElement('li');
  createdLi.innerText = 'Favourite Food: ' + food;
  return createdLi;
};

var createImg = function(url){
  var createdImg = document.createElement('img');
  createdImg.src = url;
  createdImg.width = '500';
  return createdImg;
};

var appendElements = function(){
  for(var i = 0; i < (arguments.length-1); i++){
    var child = arguments[i];
    var parent = arguments[i + 1];

    parent.appendChild(child)
  }
};

var createCat = function(name, favouriteFood, imageUrl){
  var catUl = createCatUl();
  var nameLi = createNameLi(name);
  var foodLi = createFoodLi(favouriteFood);
  var image = createImg(imageUrl);
  var catSection = document.querySelector('#cats');

  appendElements(nameLi, catUl);
  appendElements(foodLi, catUl);
  appendElements(image, catUl);
  appendElements(catUl, catSection);

};


window.onload = app;