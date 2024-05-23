use avaliacao_22c;

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values("As Crônicas de Nárnias", "CS.Lewis", 1950, true, "fantasia", "978-0064471190", "HarperCollins", 768, "frances");

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, true, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol");

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, true, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês");

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, true, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values("A Guerra dos 100 anos", "Richard Obama", 1999, true, "historia", '425-0611484257', "Fillinsbooks", 423, "Português");

update Livros
set disponivel = false 
where ano_publicacao < 2000;

update Livros
set editora = "Plume Books" 
where titulo = "1984";

update Livros
set idioma = "inglês" 
where editora =  "Penguin Books";

update Livros
set titulo =  "Harry Potter e a Pedra Filosofal (Edição Especial)" 
where isbn =  "978-0439708180";

delete from Livros where categoria = "terror";

delete from Livros where idioma = "frances", ano_publicacao < 1970;

delete from Livros where titulo = "As Crônicas de Nárnia";

delete from Livros where editora = "Penguin Books";

select *
from Livros
where quantidade_paginas > 500;

select categoria, count(categoria)
from Livros 
group by categoria;

select *
from Livros 
limit 5;

select quantidade_paginas, sum(quantidade_paginas), avg(quantidade_paginas)
from Livros
where categoria = "drama";

select avg(ano_publicação)
from Livros
where disponivel = true;

select ano_publicacao, max(ano_publicacao), min(ano_publicacao)
from Livros;

select *
from Livros 
order by ano_publicacao desc;

select titulo 
from livro
where idioma = "inglês"

union 

select titulo 
from livro
where idioma = "Português";

select *
from livros
where autor = "George Orwell";
