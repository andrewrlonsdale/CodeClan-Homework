var React = require('react');
var ResultsBox = require('./ResultsBox.jsx');

var films = [
  {id: 1, title: "Sausage Party", showtimes: "showtimes"}, 
  {id: 2, title: "Cafe Society", showtimes: "showtimes"},
  {id: 3, title: "Morgan", showtimes: "showtimes"},
  {id: 4, title: "The 9th Life of Louis Drax", showtimes: "showtimes"},
  {id: 5, title: "Naam Hai Akira", showtimes: "showtimes"},
  {id: 6, title: "Equity", showtimes: "showtimes"},
  {id: 7, title: "Things to Come", showtimes: "showtimes"}
];

var ContentBox = React.createClass({

  getInitialState: function(){
    return {data: films};
  },


  render: function(){
    return  (
      <div className="content-box">
          <p>UK Opening This Week</p>
           <ResultsBox data={this.state.data}/>
           <p className="results">See more opening this week >></p>
           <button>Get showtimes</button>
        </div>
      )
  }
});



module.exports = ContentBox;