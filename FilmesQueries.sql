SELECT Nome, Ano FROM Filmes;

SELECT Nome, Ano FROM Filmes
	ORDER BY Ano DESC;

Select Nome, Ano, Duracao from Filmes where Nome = 'De Volta Para o Futuro';

select * from Filmes where Ano = 1997;


select * from Filmes where ano > 2000;

select * from Filmes where Duracao > 100 AND Duracao < 150;

select Ano, Count(*) Quantidade from Filmes Group By Ano ORDER BY Quantidade DESC;

select PrimeiroNome, UltimoNome from Atores where Genero = 'M';

select PrimeiroNome, UltimoNome from Atores where Genero = 'F' ORDER BY PrimeiroNome;

select * from Filmes;
select * from Generos;
select * from FilmesGenero;

select F.Nome, G.Genero from Filmes F
	inner join FilmesGenero FG on F.Id = FG.IdFilme
	inner join Generos G on FG.IdGenero = G.Id;

select F.Nome, G.Genero from Filmes F
	inner join FilmesGenero FG on F.Id = FG.IdFilme
	inner join Generos G on FG.IdGenero = G.Id
	where G.Genero = 'Mistério';

select F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel from Filmes F
	inner join ElencoFilme E on E.IdFilme = F.Id
	inner join Atores A on E.IdAtor = A.Id;