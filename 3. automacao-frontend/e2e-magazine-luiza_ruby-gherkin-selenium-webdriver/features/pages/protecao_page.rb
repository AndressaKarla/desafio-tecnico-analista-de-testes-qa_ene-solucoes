class Protecao < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    elements :titulo_protecao, 'p[class="mb-lg h-md text-left font-title-large-highlight"]'
    element :botao_incluir, 'button[class="btn btn-lg btn-primary justify-center h-12 btn-lg btn-success w-full p-md"]'
end
