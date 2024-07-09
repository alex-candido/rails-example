import React from "react";

const Header = ({ name, price }: { name: string; price: string }) => {
  return (
    <>
      <h1>
        {name} - {price}
      </h1>
    </>
  );
};

export default Header;