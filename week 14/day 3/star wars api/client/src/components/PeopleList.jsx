import React from 'react';
import Person from './Person.jsx';

const PeopleList = ({people}) => {
  const personNodes = people.map((person, index) => {
    return (
      <Person
        key={index}
        name={person.name}
        mass={person.mass}
        height={person.height} />
    )
  });

  return (
    <div>
      {personNodes}
    </div>
  );
}

export default PeopleList;
