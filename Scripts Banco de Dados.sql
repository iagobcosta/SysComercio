USE [bancoComercio]
GO
/****** Object:  Table [dbo].[apresentacao]    Script Date: 04/06/2018 10:04:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[apresentacao](
	[idapresentacao] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[descricao] [varchar](256) NULL,
 CONSTRAINT [PK_presentacion] PRIMARY KEY CLUSTERED 
(
	[idapresentacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categoria](
	[idcategoria] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[descricao] [varchar](256) NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[idcategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[idcliente] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[sobrenome] [varchar](40) NULL,
	[sexo] [varchar](1) NULL,
	[data_nascimento] [date] NULL,
	[tipo_documento] [varchar](20) NOT NULL,
	[num_documento] [varchar](11) NOT NULL,
	[endereco] [varchar](100) NULL,
	[telefone] [varchar](30) NOT NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contaLoja]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contaLoja](
	[id_loja] [int] NOT NULL,
	[id_funcionario] [int] NOT NULL,
	[saldo_caixa] [decimal](10, 2) NOT NULL,
	[conta_corrente] [decimal](10, 2) NOT NULL,
	[lucro] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK__contaLoj__9A04659DC065BD43] PRIMARY KEY CLUSTERED 
(
	[id_loja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[detalhe_entrada]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalhe_entrada](
	[iddetalhe_entrada] [int] IDENTITY(1,1) NOT NULL,
	[identrada] [int] NOT NULL,
	[idproduto] [int] NOT NULL,
	[preco_compra] [decimal](10, 2) NOT NULL,
	[preco_venda] [decimal](10, 2) NOT NULL,
	[estoque_inicial] [int] NOT NULL,
	[estoque_atual] [int] NULL,
	[data_producao] [date] NOT NULL,
	[data_vencimento] [date] NOT NULL,
 CONSTRAINT [PK_detalle_ingreso] PRIMARY KEY CLUSTERED 
(
	[iddetalhe_entrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[detalhe_venda]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalhe_venda](
	[iddetalhe_venda] [int] IDENTITY(1,1) NOT NULL,
	[idvenda] [int] NOT NULL,
	[iddetalhe_entrada] [int] NOT NULL,
	[quantidade] [int] NOT NULL,
	[preco_venda] [decimal](10, 2) NOT NULL,
	[desconto] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_detalle_venta] PRIMARY KEY CLUSTERED 
(
	[iddetalhe_venda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[empresa]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empresa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[razao_social] [varchar](45) NOT NULL,
	[endreco] [varchar](45) NOT NULL,
	[bairro] [varchar](20) NOT NULL,
	[cidade] [varchar](20) NOT NULL,
	[IE] [varchar](12) NOT NULL,
	[CNPJ] [varchar](18) NOT NULL,
	[telefone] [varchar](11) NULL,
	[nome_fantasia] [varchar](50) NOT NULL,
	[numero] [varchar](6) NOT NULL,
	[ccf] [varchar](10) NOT NULL,
	[coo] [varchar](8) NOT NULL,
	[estado] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[entrada]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[entrada](
	[identrada] [int] IDENTITY(1,1) NOT NULL,
	[idfuncionario] [int] NOT NULL,
	[idfornecedor] [int] NOT NULL,
	[data] [date] NOT NULL,
	[tipo_comprovante] [varchar](20) NOT NULL,
	[serie] [varchar](4) NOT NULL,
	[correlativo] [varchar](7) NOT NULL,
	[imposto] [decimal](4, 2) NULL,
	[estado] [varchar](7) NULL,
 CONSTRAINT [PK_ingreso] PRIMARY KEY CLUSTERED 
(
	[identrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fornecedor]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fornecedor](
	[idfornecedor] [int] IDENTITY(1,1) NOT NULL,
	[empresa] [varchar](150) NOT NULL,
	[setor_comercial] [varchar](50) NOT NULL,
	[tipo_documento] [varchar](20) NOT NULL,
	[num_documento] [varchar](11) NOT NULL,
	[endereco] [varchar](100) NULL,
	[telefone] [varchar](10) NULL,
	[email] [varchar](50) NULL,
	[url] [varchar](100) NULL,
 CONSTRAINT [PK_proveedor] PRIMARY KEY CLUSTERED 
(
	[idfornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[funcionario]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[funcionario](
	[idfuncionario] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](20) NOT NULL,
	[sobrenome] [varchar](40) NOT NULL,
	[sexo] [varchar](1) NOT NULL,
	[data_nasc] [date] NOT NULL,
	[num_documento] [varchar](8) NOT NULL,
	[endereco] [varchar](100) NULL,
	[telefone] [varchar](10) NULL,
	[email] [varchar](50) NULL,
	[acesso] [varchar](20) NOT NULL,
	[usuario] [varchar](20) NOT NULL,
	[senha] [varchar](20) NOT NULL,
 CONSTRAINT [PK_trabajador] PRIMARY KEY CLUSTERED 
(
	[idfuncionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[movimentacaoCaixa]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[movimentacaoCaixa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_funcionario] [int] NOT NULL,
	[valor_inicial] [varchar](20) NOT NULL,
	[ativo] [bit] NOT NULL,
	[data_Abertura] [date] NOT NULL,
	[saida] [varchar](20) NULL,
 CONSTRAINT [PK__moviment__3213E83F4C5BECEA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[produto]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[produto](
	[idproduto] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](50) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[descricao] [varchar](1024) NULL,
	[imagem] [image] NULL,
	[idcategoria] [int] NOT NULL,
	[idapresentacao] [int] NOT NULL,
 CONSTRAINT [PK_articulo] PRIMARY KEY CLUSTERED 
(
	[idproduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[venda]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[venda](
	[idvenda] [int] IDENTITY(1,1) NOT NULL,
	[idcliente] [int] NOT NULL,
	[idfuncionario] [int] NOT NULL,
	[data] [date] NOT NULL,
	[tipo_comprovante] [varchar](20) NOT NULL,
	[serie] [varchar](4) NOT NULL,
	[correlativo] [varchar](7) NOT NULL,
	[imposto] [decimal](4, 2) NOT NULL,
	[tipo_pagamento] [varchar](45) NULL,
 CONSTRAINT [PK_venta] PRIMARY KEY CLUSTERED 
(
	[idvenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[contaLoja]  WITH CHECK ADD  CONSTRAINT [FK_contaLoja_funcionario] FOREIGN KEY([id_funcionario])
REFERENCES [dbo].[funcionario] ([idfuncionario])
GO
ALTER TABLE [dbo].[contaLoja] CHECK CONSTRAINT [FK_contaLoja_funcionario]
GO
ALTER TABLE [dbo].[detalhe_entrada]  WITH CHECK ADD  CONSTRAINT [FK_detalle_ingreso_articulo] FOREIGN KEY([idproduto])
REFERENCES [dbo].[produto] ([idproduto])
GO
ALTER TABLE [dbo].[detalhe_entrada] CHECK CONSTRAINT [FK_detalle_ingreso_articulo]
GO
ALTER TABLE [dbo].[detalhe_entrada]  WITH CHECK ADD  CONSTRAINT [FK_detalle_ingreso_ingreso] FOREIGN KEY([identrada])
REFERENCES [dbo].[entrada] ([identrada])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[detalhe_entrada] CHECK CONSTRAINT [FK_detalle_ingreso_ingreso]
GO
ALTER TABLE [dbo].[detalhe_venda]  WITH CHECK ADD  CONSTRAINT [FK_detalle_venta_detalle_ingreso] FOREIGN KEY([iddetalhe_entrada])
REFERENCES [dbo].[detalhe_entrada] ([iddetalhe_entrada])
GO
ALTER TABLE [dbo].[detalhe_venda] CHECK CONSTRAINT [FK_detalle_venta_detalle_ingreso]
GO
ALTER TABLE [dbo].[detalhe_venda]  WITH CHECK ADD  CONSTRAINT [FK_detalle_venta_venta] FOREIGN KEY([idvenda])
REFERENCES [dbo].[venda] ([idvenda])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[detalhe_venda] CHECK CONSTRAINT [FK_detalle_venta_venta]
GO
ALTER TABLE [dbo].[entrada]  WITH CHECK ADD  CONSTRAINT [FK_entrada_fornecedor] FOREIGN KEY([idfornecedor])
REFERENCES [dbo].[fornecedor] ([idfornecedor])
GO
ALTER TABLE [dbo].[entrada] CHECK CONSTRAINT [FK_entrada_fornecedor]
GO
ALTER TABLE [dbo].[entrada]  WITH CHECK ADD  CONSTRAINT [FK_entrada_funcionario] FOREIGN KEY([idfuncionario])
REFERENCES [dbo].[funcionario] ([idfuncionario])
GO
ALTER TABLE [dbo].[entrada] CHECK CONSTRAINT [FK_entrada_funcionario]
GO
ALTER TABLE [dbo].[movimentacaoCaixa]  WITH CHECK ADD  CONSTRAINT [FK_movimentacaoCaixa_funcionario] FOREIGN KEY([id_funcionario])
REFERENCES [dbo].[funcionario] ([idfuncionario])
GO
ALTER TABLE [dbo].[movimentacaoCaixa] CHECK CONSTRAINT [FK_movimentacaoCaixa_funcionario]
GO
ALTER TABLE [dbo].[produto]  WITH CHECK ADD  CONSTRAINT [FK_articulo_categoria] FOREIGN KEY([idcategoria])
REFERENCES [dbo].[categoria] ([idcategoria])
GO
ALTER TABLE [dbo].[produto] CHECK CONSTRAINT [FK_articulo_categoria]
GO
ALTER TABLE [dbo].[produto]  WITH CHECK ADD  CONSTRAINT [FK_articulo_presentacion] FOREIGN KEY([idapresentacao])
REFERENCES [dbo].[apresentacao] ([idapresentacao])
GO
ALTER TABLE [dbo].[produto] CHECK CONSTRAINT [FK_articulo_presentacion]
GO
ALTER TABLE [dbo].[venda]  WITH CHECK ADD  CONSTRAINT [FK_venta_cliente] FOREIGN KEY([idcliente])
REFERENCES [dbo].[cliente] ([idcliente])
GO
ALTER TABLE [dbo].[venda] CHECK CONSTRAINT [FK_venta_cliente]
GO
ALTER TABLE [dbo].[venda]  WITH CHECK ADD  CONSTRAINT [FK_venta_trabajador] FOREIGN KEY([idfuncionario])
REFERENCES [dbo].[funcionario] ([idfuncionario])
GO
ALTER TABLE [dbo].[venda] CHECK CONSTRAINT [FK_venta_trabajador]
GO
/****** Object:  StoredProcedure [dbo].[buscarCaixaAberto]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[buscarCaixaAberto]
 @data1 varchar(20), @data2 varchar(20)
 as
 select c.id,(f.nome + + f.sobrenome) as funcionario, c.valor_inicial,c.ativo,c.data_Abertura,c.saida
 from
 movimentacaoCaixa c inner join funcionario f
 on c.id_funcionario=f.idfuncionario
 where c.data_Abertura>=@data1 and data_Abertura<=@data2 and c.ativo = '1'
GO
/****** Object:  StoredProcedure [dbo].[buscarCaixaFechado]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscarCaixaFechado]
 @data1 varchar(20), @data2 varchar(20)
 as
 select c.id,(f.nome + + f.sobrenome) as funcionario, c.valor_inicial,c.ativo,c.data_Abertura,c.saida
 from
 movimentacaoCaixa c inner join funcionario f
 on c.id_funcionario=f.idfuncionario
 where c.data_Abertura>=@data1 and data_Abertura<=@data2 and c.ativo = '0'
GO
/****** Object:  StoredProcedure [dbo].[finalizarCaixa]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[finalizarCaixa]
@id int,
@ativo bit,
@saida decimal(10,2)
as
update movimentacaoCaixa set ativo=@ativo, saida = saida - @saida where id=@id
GO
/****** Object:  StoredProcedure [dbo].[inserirMovimento]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[inserirMovimento]
@id int=null output,
@id_funcionario int,
@valor_inicial decimal(10,2),
@ativo bit,
@data_abertura date
as
insert into movimentacaoCaixa(id_funcionario,valor_inicial,ativo,data_Abertura)
values
(@id_funcionario,@valor_inicial,@ativo,@data_abertura)set @id=@@identity
GO
/****** Object:  StoredProcedure [dbo].[mostrarCaixas]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE proc [dbo].[mostrarCaixas]
 as
 select c.id, (f.nome+ + f.sobrenome) as Funcionario,
 c.valor_inicial,c.ativo,c.data_Abertura,c.saida
 from movimentacaoCaixa c inner join funcionario f on
 c.id_funcionario=f.idfuncionario
GO
/****** Object:  StoredProcedure [dbo].[sp_detalhes_venda]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_detalhes_venda]
@dat1 datetime, @dat2 datetime
as
select d.iddetalhe_entrada,v.data, p.nome as Produto,de.preco_compra,
d.quantidade, d.preco_venda, d.desconto,
((d.preco_venda*d.quantidade)-d.desconto) as 
SubTotal ,((d.quantidade*de.preco_compra)-(d.quantidade*d.preco_venda-d.desconto)) as Lucro
from 
detalhe_venda d inner join detalhe_entrada de on d.iddetalhe_entrada=de.iddetalhe_entrada 
 inner join produto p on de.idproduto=p.idproduto inner join venda v on d.idvenda=v.idvenda
 where v.data>=@dat1 and v.data<=@dat2 and v.tipo_pagamento = 'Dinheiro'
GO
/****** Object:  StoredProcedure [dbo].[sp_detalhes_venda_em_catao_de_credito]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[sp_detalhes_venda_em_catao_de_credito]
@dat1 datetime, @dat2 datetime
as
select d.iddetalhe_entrada,v.data, p.nome as Produto,de.preco_compra,
d.quantidade, d.preco_venda,v.imposto, d.desconto,
(((d.preco_venda*d.quantidade)-d.desconto)) as 
SubTotal ,((d.quantidade*de.preco_compra)-(d.quantidade*d.preco_venda-d.desconto)) as Lucro
from 
detalhe_venda d inner join detalhe_entrada de on d.iddetalhe_entrada=de.iddetalhe_entrada 
 inner join produto p on de.idproduto=p.idproduto inner join venda v on d.idvenda=v.idvenda
 where v.data>=@dat1 and v.data<=@dat2 and v.tipo_pagamento = 'Cartão de Crédito'
GO
/****** Object:  StoredProcedure [dbo].[sp_detalhes_venda_em_catao_de_debito]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[sp_detalhes_venda_em_catao_de_debito]
@dat1 datetime, @dat2 datetime
as
select d.iddetalhe_entrada,v.data, p.nome as Produto,de.preco_compra,
d.quantidade, d.preco_venda, d.desconto,
((d.preco_venda*d.quantidade)-d.desconto) as 
SubTotal ,((d.quantidade*de.preco_compra)-(d.quantidade*d.preco_venda-d.desconto)) as Lucro
from 
detalhe_venda d inner join detalhe_entrada de on d.iddetalhe_entrada=de.iddetalhe_entrada 
 inner join produto p on de.idproduto=p.idproduto inner join venda v on d.idvenda=v.idvenda
 where v.data>=@dat1 and v.data<=@dat2 and v.tipo_pagamento = 'Cartão de Débito'
GO
/****** Object:  StoredProcedure [dbo].[spanular_entrada]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spanular_entrada]
  @identrada int
  as
  update entrada set estado='ANULADO' 
  where identrada=@identrada
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_apresentacao_nome]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spbuscar_apresentacao_nome]
@textobuscar varchar(50)
as select * from apresentacao
where nome like @textobuscar + '%'
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_cliente_documento]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--buscar pelo documento
create proc [dbo].[spbuscar_cliente_documento]
@textobuscar varchar(50)
as select * from cliente where num_documento 
like @textobuscar + '%'
order by nome asc
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_cliente_nome]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--buscar pelo nome
create proc [dbo].[spbuscar_cliente_nome]
@textobuscar varchar(50)
as select * from cliente where nome 
like @textobuscar + '%'     
order by nome asc
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_empresa_cnpj]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spbuscar_empresa_cnpj]
@textobuscar2 varchar(50)
as
select * from empresa
where CNPJ like @textobuscar2 + '%'
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_empresa_nome]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spbuscar_empresa_nome]
@textobuscar varchar(50)
as
select * from empresa
where razao_social like @textobuscar + '%'
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_entrada_data]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spbuscar_entrada_data]
 @textobuscar varchar(20),
 @textobuscar2 varchar(20)
 as 
 select e.identrada, (f.nome+' '+f.sobrenome) as Funcionario,
p.empresa as Fornecedor, e.data, e.tipo_comprovante, e.serie, e.correlativo, e.estado, 
sum(d.preco_compra*d.estoque_inicial) as Total
from detalhe_entrada d inner join entrada e
on d.identrada=e.identrada inner join
fornecedor p on e.idfornecedor=p.idfornecedor
inner join funcionario f on
e.idfuncionario=f.idfuncionario
group by 
e.identrada, f.nome+' '+f.sobrenome,
p.empresa, e.data, e.tipo_comprovante,
 e.serie, e.correlativo, e.estado
 having e.data>=@textobuscar and
 e.data<=@textobuscar2
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_fornecedor_documento]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--buscar por documento
create proc [dbo].[spbuscar_fornecedor_documento]
@textobuscar varchar(50)
as
select * from fornecedor where num_documento
like @textobuscar + '%'
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_fornecedor_empresa]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 

--buscar por empresa
create proc [dbo].[spbuscar_fornecedor_empresa]
@textobuscar varchar(50)
as
select * from fornecedor where empresa
like @textobuscar + '%'
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_funcionario_documento]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--buscar pelo documento
create proc [dbo].[spbuscar_funcionario_documento]
@textobuscar varchar(50)
as select * from funcionario where num_documento 
like @textobuscar + '%'
order by nome asc
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_funcionario_nome]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--buscar pelo nome
create proc [dbo].[spbuscar_funcionario_nome]
@textobuscar varchar(50)
as select * from funcionario where nome 
like @textobuscar + '%'
order by nome asc
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_nome]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spbuscar_nome]
@textobuscar varchar(50)
as select * from categoria 
where nome like @textobuscar + '%'
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_produto_nome]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spbuscar_produto_nome]
@textobuscar varchar(50)
 as
SELECT  dbo.produto.idproduto, dbo.produto.codigo, dbo.produto.nome, 
 dbo.produto.descricao, dbo.produto.imagem, dbo.produto.idcategoria,
 dbo.categoria.nome AS Categoria, dbo.produto.idapresentacao, 
 dbo.apresentacao.nome AS Apresentacao
FROM  dbo.apresentacao INNER JOIN
 dbo.produto ON dbo.apresentacao.idapresentacao = dbo.produto.idapresentacao
 INNER JOIN
 dbo.categoria ON 
 dbo.produto.idcategoria = dbo.categoria.idcategoria
 where dbo.produto.nome like @textobuscar + '%'
 order by dbo.produto.idproduto desc
GO
/****** Object:  StoredProcedure [dbo].[spbuscar_venda_data]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--buscar vendas entre datas
CREATE proc [dbo].[spbuscar_venda_data]
@textobuscar varchar(50),
@textobuscar2 varchar(50)
as
select v.idvenda, (f.nome+' '+f.sobrenome)
as Funcionario, (c.nome+' '+c.sobrenome) as
Cliente, v.data, v.tipo_comprovante, v.serie, 
v.correlativo, v.tipo_pagamento, 
sum((d.quantidade*d.preco_venda)-d.desconto) as Total
from detalhe_venda d inner join venda v on 
d.idvenda=v.idvenda inner join cliente c on 
v.idcliente=c.idcliente inner join funcionario f on 
v.idfuncionario=f.idfuncionario
group by
v.idvenda, (f.nome+' '+f.sobrenome), 
(c.nome+' '+c.sobrenome), 
v.data, v.tipo_comprovante,v.tipo_pagamento, v.serie, 
v.correlativo,v.tipo_pagamento
having v.data>=@textobuscar and 
v.data<=@textobuscar2
GO
/****** Object:  StoredProcedure [dbo].[spbuscarproduto_venda_codigo]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spbuscarproduto_venda_codigo]
 @textobuscar varchar(50)
 as
 select d.iddetalhe_entrada, p.codigo, p.nome,
 c.nome as Categoria, a.nome as Apresentacao,
 d.estoque_atual, d.preco_compra, d.preco_venda,
 d.data_vencimento from produto p inner join 
 categoria c on p.idcategoria=c.idcategoria 
 inner join apresentacao a on 
 p.idapresentacao=a.idapresentacao inner join
 detalhe_entrada d on p.idproduto=d.idproduto 
 inner join entrada e on d.identrada=e.identrada
where p.codigo = @textobuscar and 
d.estoque_atual > 0 and e.estado<>'ANULADO'
GO
/****** Object:  StoredProcedure [dbo].[spbuscarproduto_venda_nome]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


 --mostrar os produtos para venda   pelo none
 CREATE proc [dbo].[spbuscarproduto_venda_nome]
 @textobuscar varchar(50)
 as
 select d.iddetalhe_entrada, p.codigo, p.nome,
 c.nome as Categoria, a.nome as Apresentacao,
 d.estoque_atual, d.preco_compra, d.preco_venda,
 d.data_vencimento from produto p inner join 
 categoria c on p.idcategoria=c.idcategoria 
 inner join apresentacao a on 
 p.idapresentacao=a.idapresentacao inner join
 detalhe_entrada d on p.idproduto=d.idproduto 
 inner join entrada e on d.identrada=e.identrada
where p.nome like @textobuscar + '%' and 
d.estoque_atual > 0 and e.estado<>'ANULADO'
GO
/****** Object:  StoredProcedure [dbo].[spdeletar_apresentacao]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spdeletar_apresentacao]
@idapresentacao int 
as
delete from apresentacao where
idapresentacao=@idapresentacao
GO
/****** Object:  StoredProcedure [dbo].[spdeletar_categoria]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spdeletar_categoria]
@idcategoria int 
as
delete from categoria where
idcategoria=@idcategoria
GO
/****** Object:  StoredProcedure [dbo].[spdeletar_cliente]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--deletar
create proc [dbo].[spdeletar_cliente]
@id int
as delete from cliente where idcliente = @id
GO
/****** Object:  StoredProcedure [dbo].[spdeletar_empresa]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spdeletar_empresa]
 @id int=null output
 as
 delete from empresa where ID = @id;
GO
/****** Object:  StoredProcedure [dbo].[spdeletar_fornecedor]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
        --deletar
create proc [dbo].[spdeletar_fornecedor]
@id int 
as 
delete from fornecedor 
where idfornecedor = @id
GO
/****** Object:  StoredProcedure [dbo].[spdeletar_funcionario]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--deletar
create proc [dbo].[spdeletar_funcionario]
@id int
as delete from funcionario where idfuncionario = @id
GO
/****** Object:  StoredProcedure [dbo].[spdeletar_produto]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spdeletar_produto]
@id int
as
delete from produto 
where idproduto = @id
GO
/****** Object:  StoredProcedure [dbo].[spdeletar_venda]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


 --DELETAR VENDA
 create proc [dbo].[spdeletar_venda]
 @idvenda int
 as 
 delete from venda where idvenda=@idvenda
GO
/****** Object:  StoredProcedure [dbo].[spDepositoNaContaCorrente]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spDepositoNaContaCorrente]
@id_loja int,
@conta_corrente decimal(10,2)
as
update contaLoja set
conta_corrente = conta_corrente + @conta_corrente
where id_loja=@id_loja
GO
/****** Object:  StoredProcedure [dbo].[spDepositoNoCaixa]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spDepositoNoCaixa]
@id_loja int,
@saldo_caixa decimal(10,2)
as
update contaLoja set
saldo_caixa = saldo_caixa + @saldo_caixa
where id_loja=@id_loja
GO
/****** Object:  StoredProcedure [dbo].[spDepositoNoLucro]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spDepositoNoLucro]
@id_loja int,
@lucro decimal(18,0)
as
update contaLoja set
lucro = lucro + @lucro
where id_loja=@id_loja
GO
/****** Object:  StoredProcedure [dbo].[spdiminuir_estoque]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--abater itens estoque apos venda
create proc [dbo].[spdiminuir_estoque]
@iddetalhe_entrada int,
@quantidade int
as update detalhe_entrada set
estoque_atual=estoque_atual - @quantidade
where iddetalhe_entrada=@iddetalhe_entrada
GO
/****** Object:  StoredProcedure [dbo].[speditar_apresentacao]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[speditar_apresentacao]
@idapresentacao int,
@nome varchar(50),
@descricao varchar(256)
as
update apresentacao set nome=@nome, 
descricao=@descricao where 
idapresentacao=@idapresentacao
GO
/****** Object:  StoredProcedure [dbo].[speditar_categoria]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[speditar_categoria]
@idcategoria int,
@nome varchar(50),
@descricao varchar(256)
as
update categoria set nome=@nome, 
descricao=@descricao where 
idcategoria=@idcategoria
GO
/****** Object:  StoredProcedure [dbo].[speditar_cliente]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--editar
CREATE proc [dbo].[speditar_cliente]
@id int,
@nome varchar(20),
@sobrenome varchar(40),
@sexo varchar(1),
@data_nasc date,
@tipo_documento varchar(20),
@num_documento varchar(20),
@endereco varchar(100),
@telefone varchar(30),
@email varchar(50)

as update cliente set nome=@nome, sobrenome=@sobrenome,
sexo=@sexo, data_nascimento=@data_nasc, tipo_documento=@tipo_documento, num_documento = @num_documento,
endereco=@endereco, telefone=@telefone, email=@email
where idcliente = @id
GO
/****** Object:  StoredProcedure [dbo].[speditar_empresa]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[speditar_empresa]
@ID int=null output,
@razao_social varchar(45),
@endreco varchar(45),
@bairro varchar(20),
@cidade varchar(20),
@IE varchar(12),
@CNPJ varchar(18),
@telefone varchar(11),
@nome_fantasia varchar(50),
@numero varchar(6),
@ccf varchar(10),
@coo varchar(8),
@estado varchar(15)
as
update empresa set razao_social=@razao_social, endreco=@endreco, bairro=@bairro,cidade=@cidade,IE=@IE,CNPJ=@CNPJ, telefone=@telefone, nome_fantasia=@nome_fantasia,
numero=@numero, ccf=@ccf,coo=@coo, estado=@estado
where ID=@ID;
GO
/****** Object:  StoredProcedure [dbo].[speditar_fornecedor]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--editar
create proc [dbo].[speditar_fornecedor]
@id int output,
@empresa varchar(150),
@setor_comercial varchar(50),
@tipo_documento varchar(50),
@num_documento varchar(11),
@endereco varchar(100),
@telefone varchar(50),
@email varchar(50),
@url varchar(100)
as
update fornecedor set empresa=@empresa, setor_comercial=@setor_comercial, tipo_documento=@tipo_documento, num_documento=@num_documento,
endereco=@endereco, telefone=@telefone, email=@email,
url=@url where idfornecedor=@id
GO
/****** Object:  StoredProcedure [dbo].[speditar_funcionario]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--editar
create proc [dbo].[speditar_funcionario]
@id int,
@nome varchar(20),
@sobrenome varchar(40),
@sexo varchar(1),
@data_nasc date,
@num_documento varchar(8),
@endereco varchar(100),
@telefone varchar(10),
@email varchar(50),
@acesso varchar(20),
@usuario varchar(20),
@senha varchar(20)
as update funcionario set nome=@nome, sobrenome=@sobrenome,
sexo=@sexo, data_nasc=@data_nasc, num_documento = @num_documento,
endereco=@endereco, telefone=@telefone, email=@email,
acesso=@acesso, usuario=@usuario, senha=@senha
where idfuncionario = @id
GO
/****** Object:  StoredProcedure [dbo].[speditar_produto]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[speditar_produto]
@id int,
@codigo varchar(50),
@nome varchar(50),
@descricao varchar(1024),
@imagem image,
@idcategoria int,
@idapresentacao int
as
update produto set codigo=@codigo, nome=@nome, descricao=@descricao,
imagem=@imagem, idcategoria=@idcategoria, idapresentacao=@idapresentacao
where idproduto=@id
GO
/****** Object:  StoredProcedure [dbo].[spEditarContaLoja]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spEditarContaLoja]
@id_loja int output,
@id_funcionario int,
@saldo_caixa decimal(10,2),
@conta_corrente decimal(10,2),
@lucro decimal(18,0)
as
update  contaLoja set id_loja=@id_loja, id_funcionario=@id_funcionario,
saldo_caixa= saldo_caixa+@saldo_caixa, conta_corrente=conta_corrente+@conta_corrente,lucro=lucro+@lucro
where id_loja=@id_loja
GO
/****** Object:  StoredProcedure [dbo].[spestoque_produtos]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spestoque_produtos]
as
SELECT dbo.produto.codigo, dbo.produto.nome, 
dbo.categoria.nome AS Categoria, 
sum(dbo.detalhe_entrada.estoque_inicial), 
sum(dbo.detalhe_entrada.estoque_atual),
(sum(dbo.detalhe_entrada.estoque_inicial) - 
sum(dbo.detalhe_entrada.estoque_atual)) as Quantidade_Venda
FROM    dbo.entrada INNER JOIN
        dbo.detalhe_entrada ON dbo.entrada.identrada = 
		dbo.detalhe_entrada.identrada INNER JOIN
        dbo.produto ON dbo.detalhe_entrada.idproduto = 
		dbo.produto.idproduto INNER JOIN
        dbo.categoria ON dbo.produto.idcategoria = 
		dbo.categoria.idcategoria
where entrada.estado<>'ANULADO'
group by
dbo.produto.codigo, dbo.produto.nome, 
dbo.categoria.nome
GO
/****** Object:  StoredProcedure [dbo].[spExcluirContaLoja]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spExcluirContaLoja]
@id_loja int output
as
delete from contaLoja where id_loja=@id_loja
GO
/****** Object:  StoredProcedure [dbo].[spinserir_apresentacao]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spinserir_apresentacao]
@idapresentacao int output,
@nome varchar(50),
@descricao varchar(256)
as 
insert into apresentacao (nome, descricao)
 values (@nome, @descricao)
GO
/****** Object:  StoredProcedure [dbo].[spinserir_categoria]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spinserir_categoria]
@idcategoria int output,
@nome varchar(50),
@descricao varchar(256)
as 
insert into categoria (nome, descricao)
 values (@nome, @descricao)
GO
/****** Object:  StoredProcedure [dbo].[spinserir_cliente]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--inserir
CREATE proc [dbo].[spinserir_cliente]
@id int output,
@nome varchar(20),
@sobrenome varchar(40),
@sexo varchar(1),
@data_nasc date,
@tipo_documento varchar(20),
@num_documento varchar(20),
@endereco varchar(100),
@telefone varchar(30),
@email varchar(50)

as insert into cliente (nome, sobrenome, sexo, data_nascimento, tipo_documento, num_documento, endereco, telefone, email) values (@nome, @sobrenome, @sexo, @data_nasc, @tipo_documento, @num_documento, @endereco, @telefone, @email)
GO
/****** Object:  StoredProcedure [dbo].[spinserir_detalhe_entrada]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spinserir_detalhe_entrada]
   @iddetalhe_entrada int output,
   @identrada int,
   @idproduto int,
   @preco_compra money,
   @preco_venda money,
   @estoque_inicial int,
   @estoque_atual int,
   @data_producao date,
   @data_vencimento date
   as 
   insert into detalhe_entrada ( 
   identrada, idproduto, preco_compra, preco_venda,
   estoque_inicial, estoque_atual, data_producao,
   data_vencimento) VALUES (@identrada, @idproduto, 
   @preco_compra, @preco_venda, @estoque_inicial, 
   @estoque_atual, @data_producao, @data_vencimento)
GO
/****** Object:  StoredProcedure [dbo].[spinserir_detalhes_venda]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spinserir_detalhes_venda]
 @iddetalhe_venda int output,
 @idvenda int,
 @iddetalhe_entrada int,
 @quantidade int,
 @preco_venda money,
 @desconto money
 

as insert into detalhe_venda (idvenda,
iddetalhe_entrada, quantidade, preco_venda,
desconto) values (@idvenda,
@iddetalhe_entrada, @quantidade, @preco_venda,
@desconto)
GO
/****** Object:  StoredProcedure [dbo].[spinserir_empresa]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spinserir_empresa]
@ID int=null output,
@razao_social varchar(45),
@endereco varchar(45),
@bairro varchar(20),
@cidade varchar(20),
@IE varchar(12),
@CNPJ varchar(18),
@telefone varchar(11),
@nome_fantasia varchar(50),
@numero varchar(6),
@ccf varchar(10),
@coo varchar(8),
@estado varchar(15)
as
insert into empresa(razao_social, endreco, bairro,cidade,IE,CNPJ,telefone,nome_fantasia,numero,ccf,coo,estado) values
(@razao_social,@endereco,@bairro,@cidade,@IE,@CNPJ,@telefone,@nome_fantasia,@numero,@ccf,@coo,@estado)
SET @ID=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[spinserir_entrada]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spinserir_entrada]
 @identrada int=null output,
 @idfuncionario int,
 @idfornecedor int,
 @data date,
 @tipo_comprovante varchar(20),
 @serie varchar(4),
 @correlativo varchar(7),
 @imposto decimal(4,2),
 @estado varchar(7)
 as
 insert into entrada (idfuncionario, 
 idfornecedor, data, tipo_comprovante, serie,
 correlativo, imposto, estado ) values (
 @idfuncionario, @idfornecedor, @data,
 @tipo_comprovante, @serie, @correlativo,
 @imposto, @estado)
 SET @identrada=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[spinserir_fornecedor]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spinserir_fornecedor]
@id int output,
@empresa varchar(150),
@setor_comercial varchar(50),
@tipo_documento varchar(50),
@num_documento varchar(11),
@endereco varchar(100),
@telefone varchar(50),
@email varchar(50),
@url varchar(100)
as
insert into fornecedor (empresa, setor_comercial, tipo_documento, num_documento, endereco, telefone, email, url) values (@empresa, @setor_comercial, @tipo_documento, @num_documento, @endereco, @telefone, @email, @url)
GO
/****** Object:  StoredProcedure [dbo].[spinserir_funcionario]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--inserir
create proc [dbo].[spinserir_funcionario]
@id int output,
@nome varchar(20),
@sobrenome varchar(40),
@sexo varchar(1),
@data_nasc date,
@num_documento varchar(8),
@endereco varchar(100),
@telefone varchar(10),
@email varchar(50),
@acesso varchar(20),
@usuario varchar(20),
@senha varchar(20)
as insert into funcionario (nome, sobrenome, sexo, data_nasc, num_documento, endereco, telefone, email, acesso, usuario, senha) values (@nome, @sobrenome, @sexo, @data_nasc, @num_documento, @endereco, @telefone, @email, @acesso, @usuario, @senha)
GO
/****** Object:  StoredProcedure [dbo].[spinserir_produto]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spinserir_produto]
@id int output,
@codigo varchar(50),
@nome varchar(50),
@descricao varchar(1024),
@imagem image,
@idcategoria int,
@idapresentacao int
as
insert into produto(codigo, nome, descricao, imagem, idcategoria, idapresentacao)
 values (@codigo, @nome, @descricao,@imagem, @idcategoria, @idapresentacao)
GO
/****** Object:  StoredProcedure [dbo].[spinserir_venda]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--inserir venda
CREATE proc [dbo].[spinserir_venda]
@idvenda int=null output,
@idcliente int,
@idfuncionario int,
@data date,
@tipo_comprovante varchar(20),
@serie varchar(4),
@correlativo varchar(7),
@imposto decimal(4,2),
@tipo_pagamento varchar(45)
as
insert into venda (idcliente, idfuncionario,
data, tipo_comprovante, serie, correlativo, imposto, tipo_pagamento)
 values (@idcliente, @idfuncionario,
@data, @tipo_comprovante, @serie, @correlativo,
 @imposto, @tipo_pagamento)
 set @idvenda=@@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[spInserirContaLoja]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spInserirContaLoja]
@id_loja int ,
@id_funcionario int,
@saldo_caixa decimal(10,2),
@conta_corrente decimal(10,2),
@lucro decimal(18,0)
as
insert into contaLoja  (id_loja, id_funcionario,saldo_caixa,conta_corrente,lucro)
values (@id_loja, @id_funcionario,@saldo_caixa,@conta_corrente,@lucro)
GO
/****** Object:  StoredProcedure [dbo].[splogin]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[splogin]
@usuario varchar(20),
@senha varchar(20)
as
select idfuncionario, nome, sobrenome, acesso 
from funcionario where usuario=@usuario and
senha=@senha
GO
/****** Object:  StoredProcedure [dbo].[spmostrar]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spmostrar]
as
select * from empresa
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_apresentacao]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spmostrar_apresentacao]
as
select top 100 * from apresentacao
order by idapresentacao desc
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_categoria]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spmostrar_categoria]
as
select top 200 * from categoria
order by idcategoria desc
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_cliente]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spmostrar_cliente]
as
select top 100 * from cliente
order by nome asc
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_detalhe_venda]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spmostrar_detalhe_venda]
@textobuscar int
as
select d.iddetalhe_entrada, p.nome as Produto,
d.quantidade, d.preco_venda, d.desconto,
((d.preco_venda*d.quantidade)-d.desconto) as 
SubTotal from detalhe_venda d inner join 
detalhe_entrada de
 on d.iddetalhe_entrada=de.iddetalhe_entrada 
 inner join produto p on de.idproduto=p.idproduto
 where 
 d.idvenda=@textobuscar
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_detalhes_entrada]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[spmostrar_detalhes_entrada]
   @textobuscar int
   as
   select d.idproduto, p.nome as Produto, d.preco_compra,
   d.preco_venda, d.estoque_inicial, d.data_producao,
   d.data_vencimento, (d.estoque_inicial*d.preco_compra)
   as SubTotal from detalhe_entrada d inner join
   produto p on d.idproduto = p.idproduto 
   where d.identrada=@textobuscar
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_empresa]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spmostrar_empresa]
as
select top 100 * from empresa
order by ID desc
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_entrada]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spmostrar_entrada]
as 
select top 100
e.identrada, (f.nome+' '+f.sobrenome) as Funcionario,
p.empresa as Fornecedor, e.data, e.tipo_comprovante, 
e.serie, e.correlativo, e.imposto, e.estado, 
sum(d.preco_compra*d.estoque_inicial) as Total
from detalhe_entrada d inner join entrada e
on d.identrada=e.identrada inner join
fornecedor p on e.idfornecedor=p.idfornecedor
inner join funcionario f on
e.idfuncionario=f.idfuncionario
group by 
e.identrada, f.nome+' '+f.sobrenome,
p.empresa, e.data, e.tipo_comprovante,
 e.serie, e.correlativo, e.imposto, e.estado
 order by e.identrada desc
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_estoque]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spmostrar_estoque]
as
select top 100 produto.codigo, produto.descricao , categoria.descricao,
detalhe_entrada.estoque_atual, detalhe_entrada.preco_venda
from dbo.entrada INNER JOIN
        dbo.detalhe_entrada ON dbo.entrada.identrada = 
		dbo.detalhe_entrada.identrada INNER JOIN
        dbo.produto ON dbo.detalhe_entrada.idproduto = 
		dbo.produto.idproduto INNER JOIN
        dbo.categoria ON dbo.produto.idcategoria = 
		dbo.categoria.idcategoria
		group by
		produto.codigo, produto.descricao , categoria.descricao,
detalhe_entrada.estoque_atual, detalhe_entrada.preco_venda
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_fornecedor]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--mostrar
create proc [dbo].[spmostrar_fornecedor]
as
select top 100 * from fornecedor
order by empresa asc
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_funcionario]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--mostrar
create proc [dbo].[spmostrar_funcionario]
as
select top 100 * from funcionario 
order by nome asc
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_produto]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spmostrar_produto] as
SELECT top 100 dbo.produto.idproduto, dbo.produto.codigo, dbo.produto.nome, 
 dbo.produto.descricao, dbo.produto.imagem, dbo.produto.idcategoria,
 dbo.categoria.nome AS Categoria, dbo.produto.idapresentacao, 
 dbo.apresentacao.nome AS Apresentacao
FROM  dbo.apresentacao INNER JOIN
 dbo.produto ON dbo.apresentacao.idapresentacao = dbo.produto.idapresentacao
 INNER JOIN
 dbo.categoria ON dbo.produto.idcategoria = dbo.categoria.idcategoria
 order by dbo.produto.idproduto desc
GO
/****** Object:  StoredProcedure [dbo].[spmostrar_venda]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spmostrar_venda] 
@dat1 datetime, @dat2 datetime
as 
select top 100 v.idvenda, f.nome
as Funcionario,(c.nome+' '+c.sobrenome) as
Cliente, v.data, v.tipo_comprovante, v.serie, 
v.correlativo, v.imposto,v.tipo_pagamento,
sum((d.quantidade*d.preco_venda)-d.desconto) as Total
from detalhe_venda d inner join venda v on 
d.idvenda=v.idvenda inner join cliente c on 
v.idcliente=c.idcliente inner join funcionario f on 
v.idfuncionario=f.idfuncionario 
where v.data>=@dat1 and v.data<=@dat2

group by
v.idvenda, f.nome, 
(c.nome+' '+c.sobrenome), 
v.data, v.tipo_comprovante, v.serie, 
v.correlativo, v.imposto, v.tipo_comprovante, v.tipo_pagamento
order by v.idvenda desc
GO
/****** Object:  StoredProcedure [dbo].[spmostrarConta]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spmostrarConta]

as
select top 100 l.id_loja as numero_conta, f.idfuncionario as Funcionario, 
sum(l.saldo_caixa+l.saldo_caixa) as Caixa, sum(l.conta_corrente) as Conta_Corrente, sum(l.lucro) as Lucro
from contaLoja l 
inner join funcionario f on l.id_funcionario=f.idfuncionario
 

 group by
 l.id_loja, f.idfuncionario,  l.saldo_caixa, l.conta_corrente, l.lucro
 order by l.id_loja desc
GO
/****** Object:  StoredProcedure [dbo].[spMostrarContaLoja]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spMostrarContaLoja]
as
select top 100 * from contaLoja
order by id_loja desc
GO
/****** Object:  StoredProcedure [dbo].[sprelatorio_fatura]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sprelatorio_fatura]
@idvenda int
as
select 
v.idvenda, (f.nome+' '+f.sobrenome) as Funcionario,
(c.nome+' '+c.sobrenome) as Cliente,
c.endereco, c.telefone, c.num_documento, v.data,
v.tipo_comprovante, v.serie, v.correlativo, v.imposto,v.tipo_pagamento,
p.nome, dv.preco_venda, dv.quantidade, dv.desconto,
(dv.quantidade*dv.preco_venda-dv.desconto) as Total_Parcial
 from detalhe_venda dv inner join detalhe_entrada de
on dv.iddetalhe_entrada=de.iddetalhe_entrada inner join 
produto p on p.idproduto=de.idproduto inner join
venda v on v.idvenda=dv.idvenda inner join
cliente c on v.idcliente=c.idcliente inner join
funcionario f on f.idfuncionario=v.idfuncionario
where v.idvenda=@idvenda
GO
/****** Object:  StoredProcedure [dbo].[sprelatorio_venda_por_data]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sprelatorio_venda_por_data]

as
select 
v.idvenda, f.nome, v.data, v.serie,v.tipo_pagamento,p.nome, dv.preco_venda, dv.quantidade, dv.desconto, de.preco_compra,
(dv.quantidade*dv.preco_venda-dv.desconto) as Total , ((dv.quantidade*de.preco_compra)-(dv.quantidade*dv.preco_venda-dv.desconto)) as Lucro
 from detalhe_venda dv inner join detalhe_entrada de
on dv.iddetalhe_entrada=de.iddetalhe_entrada inner join 
produto p on p.idproduto=de.idproduto inner join
venda v on v.idvenda=dv.idvenda  inner join
funcionario f on f.idfuncionario=v.idfuncionario
GO
/****** Object:  StoredProcedure [dbo].[spSaqueDaContaCorrente]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spSaqueDaContaCorrente]
@id_loja int,
@conta_corrente decimal(10,2)
as
update contaLoja set
conta_corrente = conta_corrente - @conta_corrente
where id_loja=@id_loja
GO
/****** Object:  StoredProcedure [dbo].[spSaqueDoCaixa]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spSaqueDoCaixa]
@id_loja int,
@saldo_caixa decimal(10,2)
as
update contaLoja set
saldo_caixa = saldo_caixa - @saldo_caixa
where id_loja=@id_loja
GO
/****** Object:  StoredProcedure [dbo].[spSaqueDoLucro]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spSaqueDoLucro]
@id_loja int,
@lucro decimal(10,2)
as
update contaLoja set
lucro = lucro - @lucro
where id_loja=@id_loja
GO
/****** Object:  StoredProcedure [dbo].[spVendaDetalhada]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[spVendaDetalhada]

as
select 
v.idvenda, f.nome, v.data, v.serie,v.tipo_pagamento,p.nome, dv.preco_venda, dv.quantidade, dv.desconto, de.preco_compra,
(dv.quantidade*dv.preco_venda-dv.desconto) as Total , ((dv.quantidade*de.preco_compra)-(dv.quantidade*dv.preco_venda-dv.desconto)) as Lucro
 from detalhe_venda dv inner join detalhe_entrada de
on dv.iddetalhe_entrada=de.iddetalhe_entrada inner join 
produto p on p.idproduto=de.idproduto inner join
venda v on v.idvenda=dv.idvenda  inner join
funcionario f on f.idfuncionario=v.idfuncionario
GO
/****** Object:  StoredProcedure [dbo].[transferirCaixaPConta]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[transferirCaixaPConta]
@id_loja int,
@valor decimal(10,2)
as
update contaLoja set conta_corrente = conta_corrente + @valor,
saldo_caixa = saldo_caixa - @valor
where id_loja=@id_loja
GO
/****** Object:  StoredProcedure [dbo].[transferirCaixaPLucro]    Script Date: 04/06/2018 10:04:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[transferirCaixaPLucro]
@id_loja int,
@valor decimal(10,2)
as
update contaLoja set lucro = lucro + @valor,
saldo_caixa = saldo_caixa - @valor
where id_loja=@id_loja
GO
