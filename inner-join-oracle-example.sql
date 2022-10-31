select
a.id,
b.data
from
Tabela_A a,
Tabela_B b,
where
a.id = b.id

select
a.id,
b.data
from
Tabela_A a INNER OUTER JOIN Tabela_B b
on (a.id = b.id)