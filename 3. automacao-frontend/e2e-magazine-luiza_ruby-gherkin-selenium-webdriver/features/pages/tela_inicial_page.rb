class TelaInicial < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    set_url '/'

    element :campo_buscar_no_magalu, 'input[placeholder="Buscar no Magalu"]'
    element :icone_buscar_no_magalu, 'i[data-testid="input-icon-end"]'

    def buscar_produto(produto)
        wait_until_campo_buscar_no_magalu_visible
        campo_buscar_no_magalu.click
        campo_buscar_no_magalu.set produto

        sleep(2)
        wait_until_icone_buscar_no_magalu_visible
        icone_buscar_no_magalu.click
    end
end
