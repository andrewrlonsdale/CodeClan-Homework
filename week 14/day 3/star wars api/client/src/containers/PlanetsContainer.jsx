import React from 'react';
import PlanetList from '../components/PlanetList.jsx';

class Planets extends React.Component{
  constructor() {
    super();
    this.state = {planets: []}
  }

  componentDidMount() {
    let url = 'http://swapi.co/api/planets/?format=json'
    const request = new XMLHttpRequest();
    request.open('GET', url);

    request.onload = () => {
      const responseData = JSON.parse(request.responseText);
      const planetList = responseData.results;
      this.setState({planets: planetList});
    }

    request.send();
  }

  render() {
    return(<PlanetList planets={this.state.planets} />)
  }
}

module.exports = Planets;
