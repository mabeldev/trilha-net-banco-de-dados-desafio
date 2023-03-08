-- 1
SELECT
	Nome, Ano
		From Filmes
			
-- 2
SELECT
	Nome, Ano
		From Filmes
Order By Ano

-- 3
SELECT
	*
	From Filmes
	Where Nome = 'De Volta Para o Futuro'
		
-- 4
SELECT 
	*
	FROM Filmes
	WHERE Ano = '1997'
	
-- 5
SELECT 
	*
	FROM Filmes
	WHERE Ano > '2000'
	
-- 6
SELECT 
	*
	FROM Filmes
	WHERE Duracao > '100' AND Duracao < '200'
	ORDER BY Duracao
	
-- 7
SELECT 
    Ano, 
    COUNT(*) AS quantidade, 
    MAX(Duracao) AS duracao_maxima
FROM 
    Filmes
GROUP BY 
    Ano
ORDER BY 
    duracao_maxima DESC
    
-- 8
SELECT *
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT 
    Filmes.Nome AS Nome, 
    Generos.Genero  AS Genero
FROM 
    Filmes 
    INNER JOIN FilmesGenero ON Filmes.ID = FilmesGenero.IdFilme 
    INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.ID
    
-- 11
SELECT 
    Filmes.Nome AS Nome, 
    Generos.Genero  AS Genero
FROM 
    Filmes 
    INNER JOIN FilmesGenero ON Filmes.ID = FilmesGenero.IdFilme 
    INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.ID
WHERE Generos.Genero = 'Mistério'

-- 12
SELECT 
    Filmes.Nome AS Nome, 
    Atores.PrimeiroNome AS PrimeiroNome,
    Atores.UltimoNome AS UltimoNome,
    ElencoFilme.Papel AS Papel
FROM
    ElencoFilme
    INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
    INNER JOIN Atores ON ElencoFilme.IdAtor  = Atores.Id

