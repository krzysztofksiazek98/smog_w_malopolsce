-- Zadanie 1
CREATE OR REPLACE VIEW v_stacje AS
SELECT s.kod, s.nazwa AS stacja, m.nazwa AS miasto, s.typ_stacji,
       CONCAT(s.szerokosc, ',', s.dlugosc) AS wspolrzedne
FROM stacje s
JOIN miasta m ON m.id = s.miasto_id;

SELECT * FROM v_stacje;
