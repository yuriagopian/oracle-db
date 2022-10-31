Create
or replace Procedure AtualizaCurso (nome_in In varchar2) IS numero number;
curso c1 IS
Select
    curso_numero
From
    curso_tbl
where
    curso_nome = nome_is;

Begin
  open c1;
  fetch c1 into numero;
  if c1%notfound then
   numero := 9999;
   end if;
   INSERT INTO cursoAluno( curso_nome, curso_numero)
     VALUES ( nome_in, numero );
     commit;
     close c1;
  EXCEPTION
  WHEN OTHERS THEN
     raise_application_error(-20001, 'Ocorreu um erro na inserção do curso');
  END;