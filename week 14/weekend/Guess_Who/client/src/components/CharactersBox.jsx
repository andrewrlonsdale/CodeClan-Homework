var React = require('react');
var QuestionsForm = require('./QuestionsForm.jsx');

var CharactersBox = React.createClass({

  render: function() {
    return (
      <div className="CharactersBox">

        <div className="item">
        <img 
        onClick={this.props.changeImage}
        alt ="" 
        src={this.props.data[0].src}
        width="200px" 
        height="300px" 
        />
        <h3>{this.props.data[0].Name}</h3>
        </div>

        <div className="item">
        <img 
        onClick={this.props.changeImage}
        alt ="" 
        src={this.props.data[1].src}
        width="200px" 
        length="300px"/>
        <h3>{this.props.data[1].Name}</h3>
        </div>

        <div className="item">
        <img
        onClick={this.props.changeImage}
        alt ="" 
        src={this.props.data[2].src}
        width="200px" 
        height="300px"/>
        <h3>{this.props.data[2].Name}</h3>
        </div>

        <div className="item">
        <img 
        onClick={this.props.changeImage}
        alt ="" 
        src={this.props.data[3].src}
        width="200px" 
        height="300px"/>
        <h3>{this.props.data[3].Name}</h3>
        </div>

        <div className="item">
        <img 
        onClick={this.props.changeImage}
        alt ="" 
        src={this.props.data[4].src}
        width="200px" 
        height="300px"/>
        <h3>{this.props.data[4].Name}</h3>
        </div>

        <div id="CharacterSeparator">
        </div>

        <div className="item">
        <img 
        onClick={this.props.changeImage}
        alt ="" 
        src={this.props.data[5].src}
        width="200px" 
        height="300px"/>
        <h3>{this.props.data[5].Name}</h3>
        </div>

        <div className="item">
        <img 
        onClick={this.props.changeImage}
        alt ="" 
        src={this.props.data[6].src}
        width="200px" 
        height="300px"/>
        <h3>{this.props.data[6].Name}</h3>
        </div>

        <div className="item">
        <img 
        onClick={this.props.changeImage}
        alt ="" 
        src={this.props.data[7].src}
        width="200px" 
        height="300px"/>
        <h3>{this.props.data[7].Name}</h3>
        </div>

        <div className="item">
        <img 
        onClick={this.props.changeImage}
        alt ="" 
        src={this.props.data[8].src}
        width="200px" 
        height="300px"/>
        <h3>{this.props.data[8].Name}</h3>
        </div>

        <div className="item">
        <img 
        onClick={this.props.changeImage}
        alt ="" 
        src={this.props.data[9].src}
        width="200px" 
        height="300px"/>
        <h3>{this.props.data[9].Name}</h3>
        </div>



      </div>
    );
  }
});

    module.exports = CharactersBox;


    


