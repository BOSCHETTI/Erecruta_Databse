SELECT
	T02.Id,
	T02.Decricao
FROM OportunidadeNivel T01
	JOIN Nivel T02 on T02.Id = T01.NivelId
WHERE OportunidadeId = 2