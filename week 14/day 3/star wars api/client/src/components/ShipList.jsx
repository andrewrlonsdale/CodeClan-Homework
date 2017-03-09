import React from 'react';
import Ship from './Ship.jsx';

const ShipList = ({ships}) => {
  const shipNodes = ships.map((ship, index) => {
    return (
      <Ship
        key={index}
        name={ship.name}
        model={ship.model}
        cost={ship.cost_in_credits} />
    )
  });

  return (
    <div>
      {shipNodes}
    </div>
  );
}

export default ShipList;
