var Review = function(options){
  this.comment = options.comment;
  this.rating = options.rating;
  this.author = options.author;
  this.genres = options.genres;
}

module.exports = Review;