ENTITY questao_1_a IS
	PORT (
			 a : IN bit_vector(0 to 3);
			 b : IN bit_vector(0 to 3);
			 s : OUT bit_vector(0 to 3)
		  );
END;
ARCHITECTURE arq1a OF questao_1_a IS
BEGIN
	s(0) <= (NOT a(0)) AND (NOT b(0));
	s(1) <= (NOT a(1)) AND b(1);
	s(2) <= a(2) AND (NOT b(0));
	s(3) <= NOT (a(3) AND b(3));
END arq1a;