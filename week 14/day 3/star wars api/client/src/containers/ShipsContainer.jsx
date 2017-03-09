import React from 'react';
import ShipList from '../components/ShipList.jsx';

class Ships extends React.Component{
  constructor() {
    super();
    this.state = {ships: []}
  }

  componentDidMount() {
    let url = 'http://swapi.co/api/starships/?format=json'
    const request = new XMLHttpRequest();
    request.open('GET', url);

    request.onload = () => {
      const responseData = JSON.parse(request.responseText);
      const shipList = responseData.results;
      this.setState({ships: shipList});
    }

    request.send();
  }

  render() {
    return(<ShipList ships={this.state.ships} />)
  }
}

module.exports = Ships;
