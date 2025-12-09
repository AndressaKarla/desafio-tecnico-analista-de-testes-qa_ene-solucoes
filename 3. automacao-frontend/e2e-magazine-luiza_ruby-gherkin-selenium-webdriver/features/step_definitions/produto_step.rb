Dado('que eu acesse a tela inicial do grande portal de comércio online Magazine Luiza') do
  tela_inicial.load
end

Dado('que no campo Buscar no Magalu eu informe o produto {string}') do |produto|
  @titulo_produto = produto
  tela_inicial.buscar_produto(produto)
end

Dado('que na seção de resultados seja apresentado o produto pesquisado anteriormente') do
  resultados.wait_until_titulo_secao_resultados_visible

  resultados.wait_until_titulo_produto_visible
  expect(resultados.titulo_produto.text).to have_content(@titulo_produto)
end

Dado('que eu escolha o produto apresentado anteriormente') do
  resultados.wait_until_titulo_produto_visible
  resultados.titulo_produto.click
end

Dado('que sejam apresentadas as Principais características') do
  produto.wait_until_principais_caracteristicas_produto_visible
  expect(produto.principais_caracteristicas_produto.text).to have_content("Principais características")
end

Dado('que eu clique no botão Adicionar à sacola') do
  sacola.wait_until_botao_adicionar_a_sacola_visible
  sacola.botao_adicionar_a_sacola.click
end

Dado('que eu esteja na tela Proteção com uma opção já marcada por padrão') do
  protecao.wait_until_titulo_protecao_visible
  expect(protecao.titulo_protecao.first.text).to have_content("Proteção")

  expect(protecao).to have_checked_field("1 ano de Garantia Estendida")
end

Quando('eu adicionar o produto ao carrinho\/sacola ao clicar no botão Incluir') do
  protecao.wait_until_botao_incluir_visible
  protecao.botao_incluir.click
end

Então('na seção Sacola deverá apresentar o produto adicionado anteriormente') do
  sleep 2
  expect(sacola.current_url).to include('sacola')

  sacola.wait_until_titulo_produto_visible
  expect(sacola.titulo_produto.text).to have_content(@titulo_produto)
end
