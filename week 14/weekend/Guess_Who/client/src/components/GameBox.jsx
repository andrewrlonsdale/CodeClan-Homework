var React = require('react');
var GuessForm = require('./GuessForm.jsx');
var CharactersBox = require('./CharactersBox.jsx');
var QuestionsForm = require('./QuestionsForm.jsx');
var seeds = require('../seeds.js');

var GameBox = React.createClass({
  getInitialState: function() {
    return { allSeeds: seeds, gameVillain: null }
  },
  removeImage: function(image){

  },
  componentDidMount: function() {
  this.selectRandomCharacter();
  },
  selectRandomCharacter: function(){
    var villains = this.getVillains();
    var rand = villains[Math.floor(Math.random() * villains.length)];
    this.setRandomCharacter(rand);
  },
  setRandomCharacter: function(name){
    var gVillain = name;
    this.setState( { gameVillain: gVillain })
  },
 
  getVillains: function(){
    var villains = []
    for (var item of this.state.allSeeds){
      villains.push(item.Name)
    }
    return villains;
  },
  handleQuestion: function(e){
    var options = this.state.allSeeds
    e.preventDefault();

    var forDeselection = []
    var selection = e.target.value

    for (var item of options){
      if(selection ==="0"){
        if(item.Armour === "No"){
        forDeselection.push(item.Name)
        }
      } 
        if(selection ==="1"){
          if(item.Mask === "No"){
          forDeselection.push(item.Name)
          }
        }
        if(selection ==="2"){
          if(item.Hair === "No"){
          forDeselection.push(item.Name)
          }
        }
      }
     this.changeImageEnMass(forDeselection);
    },

    handleClick: function(e){
      var options= this.state.allSeeds
      e.preventDefault();
      var names =[]
      for (var item of options){
        names.push(item.Name)
      }

      var index = e.target.value
      names.splice(index, 1);
      
      this.changeImageEnMass(names)
    },

    handleVillain: function(e){
      var options=this.state.allSeeds
      var cpuPlayer=this.state.gameVillain
      var index = e.target.value

      if(options[index].Name === cpuPlayer){
        this.handleWin()
      } else {
        this.handleLose()
      }
   },

    handleWin: function(){
      window.alert("You win!")
    },

    handleLose: function(){
      window.alert("Incorrect try again")
    },

   

    changeImage: function(e){
      e.target.src ="http://www.clker.com/cliparts/5/9/5/4/12456868161725760927raemi_Cross_Out.svg.hi.png"
    },

    changeImageEnMass: function(array){
      var all = this.state.allSeeds
      var cpuPlayer = this.state.gameVillain
      for (var item of array){
        for (var character of all){
          if(item === character.Name){
            if(item != cpuPlayer){
            character.src="http://www.clker.com/cliparts/5/9/5/4/12456868161725760927raemi_Cross_Out.svg.hi.png"
            }
          }
        }
      }
      this.setState( { allSeeds: all } )
      return all
      this.render();
    },

  render: function() {
    return (
      <div className="GameBox">
        <h1 id="title">Guess Who</h1>
        <h1 id="title">Marvel Villians</h1>

        <div className="CharactersBox">
        <CharactersBox 
        data={this.state.allSeeds}
        switchImage={this.switchImage}
        changeImage={this.changeImage}
        changeImageEnMass={this.changeImageEnMass}
        />
        </div>

        <div className="QuestionsForm">
        <h1 id="DoesVillainHave">Question?</h1>
        <QuestionsForm 
        data={this.state.allSeeds}
        handleQuestion={this.handleQuestion}
        />
        </div>

        <div className="GuessForm">
        <h1 id="VillainGuess">Guess</h1>
        <GuessForm 
        data={this.state.allSeeds}
        villains={this.getVillains()}
        handleVillain={this.handleVillain}
        />
        </div>

      </div>
    );
  }
});

  module.exports = GameBox;

  

