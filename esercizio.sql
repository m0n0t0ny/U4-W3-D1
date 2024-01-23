-- ✅ 1 Estrai tutti i clienti con nome Mario
-- SELECT *
-- FROM clienti
-- WHERE clienti.nome = 'Tony'

-- ✅ 2 Estrarre il nome e il cognome dei clienti nati nel 1982
-- SELECT clienti.nome, clienti.cognome
-- FROM clienti
-- WHERE clienti.anno_di_nascita = 1982

-- ✅ 3 Estrarre il numero delle fatture con iva al 20%
-- SELECT *
-- FROM fatture
-- WHERE fatture.iva = 20

-- ✅ 4 Estrarre i prod0tti attivati nel 2017 e Che sono in produzione oppure in commercio (Per estrarre l'anno da una data si può usare EXTRACT(YEAR FROM data)
-- SELECT *
-- FROM prodotti
-- WHERE EXTRACT(YEAR FROM data_attivazione) = 2017
-- AND (prodotti.in_produzione = true OR prodotti.in_commercio = true)

-- ✅ 5 Estrarre le fatture con importo inferiore a 1000 e i dati dei clienti ad esse collegate
-- SELECT *
-- FROM fatture
-- WHERE importo < '1000'::money;

-- ✅ 6 Riportare delle fatture (numero, importo, iva e data) in aggiunta il nome del fornitore
-- SELECT fatture.numero_fattura, fatture.importo, fatture.iva, fatture.data_fattura, fornitori.denominazione
-- FROM fatture, fornitori

-- ✅ 7 Considerando soltanto le fatture con iva al 20 per cento, estrarre il numero di fatture per ogni anno (Per estrarre l'anno da una data si può usare EXTRACT (YEAR FROM data)
SELECT EXTRACT(YEAR FROM data_fattura) AS anno, COUNT(*) AS numero_fattura
FROM Fatture
WHERE IVA = 21
GROUP BY Anno
ORDER BY Anno
-- 🔽 Opzione con EXTRACT
-- AND EXTRACT(YEAR FROM fatture.data_fattura) = 2024
-- 🔽 Opzione con BETWEEN
-- AND (data_fattura BETWEEN '2024-01-01' AND '2024-12-31')

-- ✅ 8 Riportare il numero di fatture e la somma dei relativi importi divisi per anno di fatturazione
-- SELECT COUNT(fatture.numero_fattura), SUM (fatture.importo)
-- FROM fatture
-- WHERE EXTRACT(YEAR FROM fatture.data_fattura) = 2024

-- • 9 [EXTRA] Estrarre gli anni in cui sono state registrate più di 2 fatture con tipologia 'A'
-- SELECT *
-- from fatture
-- WHERE EXTRACT(YEAR FROM fatture.data_fattura) = 2021
-- AND(COUNTtipologia = 'A')


-- • 10 (EXTRA) Estrarre il totale degli importi delle fatture divisi per residenza dei clienti
-- SELECT *
-- from fatture

-- • 11 [EXTRA] Estrarre il numero dei clienti nati nel 1980 che hanno almeno una fattura superiore a 50 euro
-- SELECT *
-- from clienti