create table dbo.OrdemServico
  (Codigo integer not null primary key nonclustered,
  DataCompra datetime not null,
   ValorCompra nvarchar(5) not null)
   with (memory_optimized = on)
  go

  create procedure dbo.InsereOrdemServico(@Codigo integer, @ValorCompra nvarchar(5))
  with native_compilation, schemabinding, execute as owner
  as
  begin atomic with
  (transaction isolation level = snapshot,
  language = N'English')
  declare @DataCompra datetime = getdate();
    insert into dbo.OrdemServico (Codigo, ValorCompra, DataCompra) values (@Codigo, @ValorCompra, @DataCompra);
  end
  go