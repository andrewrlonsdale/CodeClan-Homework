var express = require('express');
var gameRouter = express.Router();
var Game = require('../client/src/models/game');
var GameQuery = require('../client/db/gameQuery');
var query = new GameQuery();

gameRouter.get('/', function(req, res){
  query.all(function(results){
    res.json(results);
  });
});

gameRouter.get('/:id', function(req, res){
  query.all(function(results){
    res.json(results[req.params.id]);
  });
});

gameRouter.post('/', function(req, res){
  var newgame = new Game(req.body);
  query.addgame(newgame, function(results){
    res.json(results);
  });
});

gameRouter.put('/:id', function(req, res){
  var updatedDetails = req.body;
  query.updategame(updatedDetails, req.params.id, function(results){
    res.json(results);
  });
});

gameRouter.delete('/:id', function(req, res){
  query.deletegame(req.params.id, function(results){
    res.json(results);
  })
});
module.exports = gameRouter;
