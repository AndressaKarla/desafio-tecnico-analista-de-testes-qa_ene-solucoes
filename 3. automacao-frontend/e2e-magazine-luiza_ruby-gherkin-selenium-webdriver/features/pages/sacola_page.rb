class Sacola < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    element :botao_adicionar_a_sacola, 'button[class="btn btn-lg btn-success justify-center w-full"]'
    element :titulo_produto, 'p[aria-label="Título do produto"]'
end
