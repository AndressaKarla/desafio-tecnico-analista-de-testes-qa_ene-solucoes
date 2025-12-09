# language: pt

@produto
Funcionalidade: Produto
	Como um cliente do grande portal de comércio online Magazine Luiza
	Quero buscar, escolher e adicionar um produto ao carrinho/sacola
	Para validar o produto adicionado no carrinho/sacola neste fluxo de ponta a ponta

@produto_carrinho
Cenario: Adicionar produto ao carrinho - Apresentar produto adicionado anteriormente
	Dado que eu acesse a tela inicial do grande portal de comércio online Magazine Luiza
	E que no campo Buscar no Magalu eu informe o produto "Notebook Dell G15 Gamer 5530 I7-13650Hx 32Gb Ddr5 Ssd 1Tb"
	E que na seção de resultados seja apresentado o produto pesquisado anteriormente 
	E que eu escolha o produto apresentado anteriormente
	E que sejam apresentadas as Principais características
	E que eu clique no botão Adicionar à sacola 
    E que eu esteja na tela Proteção com uma opção já marcada por padrão
	Quando eu adicionar o produto ao carrinho/sacola ao clicar no botão Incluir
	Então na seção Sacola deverá apresentar o produto adicionado anteriormente