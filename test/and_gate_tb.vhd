LIBRARY ieee;
LIBRARY vunit_lib;
USE ieee.std_logic_1164.ALL;
CONTEXT vunit_lib.vunit_context;

ENTITY and_gate_tb IS
	GENERIC (runner_cfg : STRING);
END and_gate_tb;

ARCHITECTURE tb OF and_gate_tb IS

	SIGNAL a, b : std_logic;
	SIGNAL res : std_logic;

	TYPE test_case IS RECORD
		a, b : std_logic;
		res : std_logic;
	END RECORD;

	TYPE test_case_array IS ARRAY (NATURAL RANGE <>) OF test_case;

	CONSTANT time_span : TIME := 20 ns;
	CONSTANT test_cases : test_case_array := (
	('0', '0', '0'),
	('0', '1', '0'),
	('1', '0', '0'),
	('1', '1', '1')
	);

BEGIN

	UUT : ENTITY work.and_gate PORT MAP (a => a, b => b, res => res);

	main : PROCESS
	BEGIN

		test_runner_setup(runner, runner_cfg);

		FOR i IN test_cases'RANGE LOOP

			a <= test_cases(i).a;
			b <= test_cases(i).b;

			WAIT FOR time_span;
			ASSERT (res = test_cases(i).res)
			REPORT "test " & INTEGER'image(i) & " failed " SEVERITY error;

		END LOOP;

		WAIT FOR time_span;
		test_runner_cleanup(runner);
		WAIT;

	END PROCESS;

END tb;