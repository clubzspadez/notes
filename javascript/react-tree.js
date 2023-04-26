import React, { useState } from "react";

const Tree = ({ data }) => {
  const [expanded, setExpanded] = useState(false);

  const toggleExpanded = () => {
    setExpanded(!expanded);
  };

  return (
    <ul>
      <li>
        <div onClick={toggleExpanded}>{data.name}</div>
        {expanded && (
          <ul>
            {data.children.map((child) => (
              <li key={child.id}>
                <Tree data={child} />
              </li>
            ))}
          </ul>
        )}
      </li>
    </ul>
  );
};

export default Tree;


       A
     /   \
    B     C
  / | \
D   E  F


// Tree Component
function Tree({ data }) {
  return (
    <ul>
      {data.map((node) => (
        <Node key={node.id} node={node} />
      ))}
    </ul>
  );
}

// Node Component
function Node({ node }) {
  return (
    <li>
      {node.name}
      {node.children && <Tree data={node.children} />}
    </li>
  );
}

// Example data structure
const data = [
  {
    id: 1,
    name: "Parent Node 1",
    children: [
      {
        id: 2,
        name: "Child Node 1",
      },
      {
        id: 3,
        name: "Child Node 2",
      },
    ],
  },
  {
    id: 4,
    name: "Parent Node 2",
    children: [
      {
        id: 5,
        name: "Child Node 3",
        children: [
          {
            id: 6,
            name: "Child Node 4",
          },
        ],
      },
    ],
  },
];

// Usage example
function App() {
  return <Tree data={data} />;
}
