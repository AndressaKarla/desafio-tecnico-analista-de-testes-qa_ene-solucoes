class Produto < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    element :principais_caracteristicas_produto, 'h2[data-testid="key-selling-points-title"]'
end
