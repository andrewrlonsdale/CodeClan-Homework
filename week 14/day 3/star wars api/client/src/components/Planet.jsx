import React from 'react';

const Planet = ({name, population, diameter}) => {
  return (
    <div className="flex-item">
      <h3 >{name}</h3>
      <p >Population: {population}</p>
      <p >Diameter: {diameter}</p>
    </div>
  )
}

export default Planet;
