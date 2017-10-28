select *
from dbo.Genero

select *
from dbo.CapituloA

select *
from dbo.Anime

select *
from dbo.CapituloM

select *
from dbo.Manga


create view Animes as
select a.IdAnime, g.Nombre as Genero, a.Nombre as Nombre_Anime, a.Descripcion, a.Estado, a.Descarga
from Anime a
join Genero as g on g.IdGenero = a.IdGenero

select * from Animes

create view Mangas as
select a.IdAnime, cm.Nombre, a.Descripcion, cm.Temporada, cm.NombreCapitulo, cm.NumeroCapitulo, a.Estado, a.Descarga, cm.URL
from Anime a
join CapituloM as cm on cm.Nombre = a.Nombre

select * from Mangas










