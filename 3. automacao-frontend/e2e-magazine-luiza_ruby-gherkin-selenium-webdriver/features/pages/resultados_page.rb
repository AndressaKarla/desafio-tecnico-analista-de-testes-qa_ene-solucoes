class Resultados < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    element :titulo_secao_resultados, 'span[data-testid="main-title"]'
    element :titulo_produto, 'h2[data-testid="product-title"]'
end
