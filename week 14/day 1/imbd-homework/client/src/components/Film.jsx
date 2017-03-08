var React = require('react');

var Film = React.createClass({
  render: function(){
    return (
      <div className="film">
       <p className="filmTitle">{this.props.title}</p>
       <p className="showtimes">{this.props.showtimes}</p>
      
      </div>

      );
  }
});


module.exports = Film;