-- Zadanie 2
CREATE OR REPLACE VIEW v_pomiary_dzienne AS
SELECT p.data, m.nazwa AS miasto, s.nazwa AS stacja, p.pm10
FROM pomiary_dobowe p
JOIN stacje s ON s.kod = p.kod_stacji
JOIN miasta m ON m.id = s.miasto_id;

SELECT * FROM v_pomiary_dzienne;
