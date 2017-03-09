import React from 'react';
import Planet from './Planet.jsx';

const PlanetList = ({planets}) => {
  const planetNodes = planets.map((planet, index) => {
    return (
      <Planet
        key={index}
        name={planet.name}
        population={planet.population}
        diameter={planet.diameter} />
    )
  });

  return (
    <div>
      {planetNodes}
    </div>
  );
}

export default PlanetList;
