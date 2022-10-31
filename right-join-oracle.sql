-- Vai listar todos as datas da tabela b listando os ids que combinam com a tabela a, se a combinação resultar falso os registros da a serão nulos
select
a.id,
b.data
from
Tabela_A a,
Tabela_B b,
where
a.id = b.id(+) 