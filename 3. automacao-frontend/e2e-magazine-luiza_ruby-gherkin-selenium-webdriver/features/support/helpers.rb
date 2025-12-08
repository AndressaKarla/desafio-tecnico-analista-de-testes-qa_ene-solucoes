module Helpers
    def carregar_fixture(nome_fixture)
        JSON.parse(File.read("features/support/fixtures/#{nome_fixture}.json"))
    end

    def print_screen(nome_cenario, resultado)
        data = "#{Time.now.strftime("%d_%m_%Y")}"
        hora = "#{Time.now.strftime("-%d_%m_%Y-%H_%M_%S")}"

        diretorio_arquivo = "../../../../0. artefatos/2. reports-ruby/screenshots/testes_#{resultado}/#{data}"
        screenshots = "#{diretorio_arquivo}/#{nome_cenario}#{hora}.png"
        page.save_screenshot(screenshots)
        attach(screenshots, 'image/png')
    end
end
