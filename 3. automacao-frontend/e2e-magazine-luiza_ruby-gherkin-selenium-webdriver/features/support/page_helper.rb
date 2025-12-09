Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each {|file| require file}

module Pages
    def tela_inicial
        @tela_inicial ||= TelaInicial.new
    end

    def resultados
        @resultados ||= Resultados.new
    end

    def produto
        @produto ||= Produto.new
    end

    def sacola
        @sacola ||= Sacola.new
    end

    def protecao
        @protecao ||= Protecao.new
    end
end
