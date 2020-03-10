LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY and_gate IS
  PORT (
    a, b : IN std_logic;
    res : OUT std_logic
  );
END and_gate;

ARCHITECTURE behaviour OF and_gate IS
BEGIN
  res <= a AND b;
END behaviour;