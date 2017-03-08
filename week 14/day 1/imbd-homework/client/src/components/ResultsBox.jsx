var React = require('react');
var Film = require('./film.jsx');

var ResultsBox = React.createClass({
  render: function(){

    var filmNodes = this.props.data.map(function (film){
        return (
            <Film title={film.title} showtimes={film.showtimes} key={film.id}>
            </Film>
          )
    });

    return (
        <div className="results">
            {filmNodes}
        </div>
      );
  }
});



module.exports = ResultsBox;