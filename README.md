---
# :test_tube: Cenários de Testes Manuais Baseados em Protótipo | Testes Funcionais Automatizados E2E (Ponta a Ponta) | Ruby v3.1.2 | Selenium Webdriver v4.6.1 | Cucumber/Gherkin | Chromedriver | Geckodriver | Capybara | SitePrism | Rspec 
---
# :information_source: Introdução
Este projeto foi desenvolvido para um Desafio técnico de Analista de Testes/QA da eNe Soluções sobre: 
- criar/especificar ["1. cenarios-de-testes-baseados-em-prototipo"](./1.%20cenarios-de-testes-baseados-em-prototipo/cenarios-de-testes-em-formato-acao-resultado-esperado.md), com protótipo em ["0. artefatos > 1. prototipo.png"](./0.%20artefatos/1.%20prototipo.png)
- identificar ["2. melhorias"](./2.%20melhorias/melhorias.md)
- criar ["3. automacao-frontend > e2e-magazine-luiza_ruby-gherkin-selenium-webdriver"](./3.%20automacao-frontend/e2e-magazine-luiza_ruby-gherkin-selenium-webdriver/) 
  - que é executado: 
    - em um [fluxo de ponta a ponta (e2e) com cenários/casos de teste descritos em Cucumber/Gherkin](./3.%20automacao-frontend/e2e-magazine-luiza_ruby-gherkin-selenium-webdriver/features/specs/produto_spec.feature) ao buscar, escolher e validar um produto adicionado ao carrinho 
    - no [ambiente de produção](./3.%20automacao-frontend/e2e-magazine-luiza_ruby-gherkin-selenium-webdriver/features/support/environments/prod.yml) [ou em uma simulação de [ambiente de homologação](./3.%20automacao-frontend/e2e-magazine-luiza_ruby-gherkin-selenium-webdriver/features/support/environments/hml.yml)] do grande portal de comércio online ["Magazine Luiza"](https://www.magazineluiza.com.br/)
    - nos navegadores [Chrome (chromedriver v142.0.7444.175) e Firefox (geckodriver v0.36.0)](./3.%20automacao-frontend/e2e-magazine-luiza_ruby-gherkin-selenium-webdriver/features/support/env.rb)
    - no Sistema Operacional Windows 11
    - na [resolução 1400 x 1050](./3.%20automacao-frontend/e2e-magazine-luiza_ruby-gherkin-selenium-webdriver/features/support/hooks.rb)
    - nas ferramentas [Ruby v3.1.2, Selenium Webdriver v4.6.1, Cucumber/Gherkin, Capybara, SitePrism e Rspec](./3.%20automacao-frontend/e2e-magazine-luiza_ruby-gherkin-selenium-webdriver/Gemfile)
  - que possui [reports de exemplo (relatórios HTML, screenshots e vídeos)](./0.%20artefatos/2.%20reports-ruby/):
    - exemplos de relatórios html e screenshots de **testes automatizados que falharam/tiveram problemas causados por captcha**, no navegador **chrome em modo headless (2° plano)**, no ambiente de produção:
      **OBSERVAÇÕES**: _algumas possíveis soluções seriam disponibilizarem um ambiente de testes controlado onde o captcha estivesse momentaneamente desabilitado ou fosse fixo durante o período de execução dos testes automatizados_
      - ["falha-chrome-headless_ruby...html"](./0.%20artefatos/2.%20reports-ruby/1.%20reports-exemplo/html-exemplo/falha-chrome-headless_ruby-gherkin-selenium-webdriver-report-html.html), ["falha-chrome-headless_ruby...png"](./0.%20artefatos/2.%20reports-ruby/1.%20reports-exemplo/screenshots-video-exemplo/falha-chrome-headless_ruby-gherkin-selenium-webdriver-report-html.png) e ["falha-chrome-headless_adicionar...png"](./0.%20artefatos/2.%20reports-ruby/1.%20reports-exemplo/screenshots-video-exemplo/falha-chrome-headless_adicionar_produto_ao_carrinho_-_apresentar_produto...-09_12_2025-08_40_41.png)
    - exemplos de relatório html, screenshots, vídeo com quantidade e tempo dos **testes automatizados que passaram** também via terminal, no navegador **firefox na interface gráfica, em uma simulação de ambiente de homologação**:
      - ["firefox-hml_ruby...html"](./0.%20artefatos/2.%20reports-ruby/1.%20reports-exemplo/html-exemplo/firefox-hml_ruby-gherkin-selenium-webdriver-report-html.html), ["firefox-hml_ruby...png"](./0.%20artefatos/2.%20reports-ruby/1.%20reports-exemplo/screenshots-video-exemplo/firefox-hml_ruby-gherkin-selenium-webdriver-report-html.png), ["firefox-hml-terminal_Captura...png"](./0.%20artefatos/2.%20reports-ruby/1.%20reports-exemplo/screenshots-video-exemplo/firefox-hml-terminal_Captura%20de%20tela%202025-12-09%20093132.png) e ["firefox-hml_2025...mp4"](./0.%20artefatos/2.%20reports-ruby/1.%20reports-exemplo/screenshots-video-exemplo/firefox-hml_2025-12-09%2009-29-35.mp4)
    - exemplos de screenshots com quantidade e tempo dos **testes automatizados que passaram** também via terminal, no navegador **chrome na interface gráfica, no ambiente de produção**:
      - ["chrome-prod_adicionar...png"](./0.%20artefatos/2.%20reports-ruby/1.%20reports-exemplo/screenshots-video-exemplo/chrome-prod_adicionar_produto_ao_carrinho_-_apresentar_produto_adicionado_anteriormente-09_12_2025-02_15_06.png) e ["chrome-prod-terminal_Captura...png"](./0.%20artefatos/2.%20reports-ruby/1.%20reports-exemplo/screenshots-video-exemplo/chrome-prod-terminal_Captura%20de%20tela%202025-12-09%20021537.png)

---
# 🧭 Sumário
- [Estrutura da parte com automação de testes](#-estrutura-da-parte-com-automação-de-testes)
- [Antes de clonar ou executar esse projeto localmente no computador, é necessário seguir as instruções ...](#antes-de-clonar-ou-executar-esse-projeto-localmente-no-computador-é-necessário-seguir-as-instruções-abaixo-point_down)
- [Clonar o projeto](#hammer_and_wrench-clonar-o-projeto)
- [Abrir o VS Code diretamente na pasta do projeto](#bookmark_tabs-abrir-o-vs-code-diretamente-na-pasta-do-projeto-desafio-tecnico-analista-de-testes-qa_ene-solucoes)
- [Instalar mais algumas dependências necessárias](#hammer_and_wrench-instalar-mais-algumas-dependências-necessárias)
- [Executar os testes automatizados E2E (ponta a ponta) no navegador chrome na interface gráfica no ambiente de produção e Gerar os resultados dos testes no computador (0. artefatos > 2. reports-ruby > html; 0. artefatos > 2. reports-ruby > screenshots)](#triangular_flag_on_post-executar-os-testes-automatizados-e2e-ponta-a-ponta-no-navegador-chrome-na-interface-gráfica-no-ambiente-de-produção-e-gerar-os-resultados-dos-testes-no-computador-0-artefatos--2-reports-ruby--html-0-artefatos--2-reports-ruby--screenshots)
- [Executar os testes automatizados E2E (ponta a ponta) no navegador firefox na interface gráfica em uma simulação de ambiente de homologação e Gerar os resultados dos testes ...](#triangular_flag_on_post-executar-os-testes-automatizados-e2e-ponta-a-ponta-no-navegador-firefox-na-interface-gráfica-em-uma-simulação-de-ambiente-de-homologação-e-gerar-os-resultados-dos-testes-no-computador-0-artefatos--2-reports-ruby--html-0-artefatos--2-reports-ruby--screenshots)
- [Verificar os resultados das execuções dos testes automatizados e2e no computador](#mag_right-verificar-os-resultados-das-execuções-dos-testes-automatizados-e2e-no-computador)
- [Feito com ❤️ por Andressa Karla](#feito-com-️-por-andressa-karla-wave)

---
# 📂 Estrutura da parte com automação de testes

```
3. automacao-frontend > e2e-magazine-luiza_ruby-gherkin-selenium-webdriver
│
├── features
│   ├── pages
│   │   ├── produto_page.rb                          
│   │   ├── protecao_page.rb  
│   │   ├── resultados_page.rb 
│   │   ├── sacola_page.rb 
│   │   └── tela_inicial_page.rb  
│   ├── specs
│   │   └── produto_spec.feature  
│   ├── step_definitions
│   │   └── produto_step.rb
│   └── support
│       ├── environments 
│       │   ├── hml.yml                              
│       │   └── prod.yml   
│       ├── env.rb 
│       ├── helpers.rb 
│       ├── hooks.rb                              
│       └── page_helper.rb
│
├── cucumber.yml  
│
├── Gemfile
│
├── Gemfile.lock
│   
└── README.md
```

---
# :warning: _Instruções considerando Windows 11, para outras versões do Windows ou outros sistemas operacionais talvez seja necessário algumas adaptações_

# Antes de clonar ou executar esse projeto localmente no computador, é necessário seguir as instruções abaixo :point_down:

## :hammer_and_wrench: Instalar algumas dependências necessárias 
### Janela do "Explorador de Arquivos" > "Visualizar" > "Mostrar" e marcar algumas opções
- No Windows 11, abrir uma janela do "Explorador de Arquivos"
- Clicar em "Visualizar" > "Mostrar"
- Clicar em "Extensões de nomes de arquivos" 
- Clicar em "Itens ocultos"

### Baixar e instalar o git e gitbash; configurar o git
- Caso ainda não tenha o git e gitbash baixado e instalado, acessar o link do [git e gitbash](https://git-scm.com/download/win), baixar e instalar como administrador
- Caso ainda não tenha configurado o git, seguir os passos apresentados neste link ["Configure a ferramenta"](https://training.github.com/downloads/pt_BR/github-git-cheat-sheet/#:~:text=Configure%20a%20ferramenta) e configurar

### Excluir chromedriver que já foi baixado em algum outro momento
- Na janela do "Explorador de Arquivos" acessar o diretório "C:\Users\usuario\AppData\Local\Programs\Python ...\Scripts", procurar e remover "chromedriver.exe"
- Acessar o diretório "C:\Ruby\bin", procurar e remover "chromedriver.exe"
- Acessar o diretório "C:\Windows", procurar e remover "chromedriver.exe"
- Acessar o diretório "C:\Windows\System32", procurar e remover "chromedriver.exe"

### Baixar novo chromedriver 
- Ter o navegador Chrome instalado
- Verificar versão do navegador Chrome (Ex.: Versão 119.0.6045.124)
```
chrome://settings/help
```
- Acessar o site com a versão "Stable" do [chromedriver](https://googlechromelabs.github.io/chrome-for-testing/#stable) (Ex.: Version: 119.0.6045.105 (r1204232)) próxima a versão do Chrome verificada anteriormente 
- Em "chromedriver" > "win32" copiar a "URL"
  - Ex.: https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/119.0.6045.105/win32/chromedriver-win32.zip
- Acessar a "URL" copiada anteriormente
- Baixar o arquivo "chromedriver-win32.zip"
  - Descompactar o arquivo
  - NÃO executar o executável "chromedriver.exe"
  - Mover o executável "chromedriver.exe" para o diretório "C:\Windows\System32"
- Abrir um novo gitbash ou outro terminal, informar o comando abaixo para confirmar se o novo chromedriver realmente foi instalado, e verificar se a versão apresentada é a mesma no qual foi baixada no site com a versão "Stable" anteriormente (Ex.: ChromeDriver 119.0.6045.105 (r1204232))
```
chromedriver -v
```
- Fechar este gitbash ou terminal

### Excluir geckodriver que já foi baixado em algum outro momento
- Na janela do "Explorador de Arquivos" acessar o diretório "C:\Users\usuario\AppData\Local\Programs\Python ...\Scripts", procurar e remover "chromedriver.exe"
- Acessar o diretório "C:\Ruby\bin", procurar e remover "geckodriver.exe"
- Acessar o diretório "C:\Windows", procurar e remover "geckodriver.exe"
- Acessar o diretório "C:\Windows\System32", procurar e remover "geckodriver.exe"

### Instalar novo geckodriver
- Ter o navegador Firefox instalado 
- Verificar versão do navegador Firefox (Ex.: 124.0.1 (64-bits))
  - Menu > Ajuda > Sobre o Firefox
- Acessar o site com a versão "Latest" do [geckodriver](https://github.com/mozilla/geckodriver/releases/latest) (Ex.: v0.34.0) compatível com a versão do Firefox verificada anteriormente 
- Em "Assets", clicar em "geckodriver...win64.zip"
  - Ex.: https://github.com/mozilla/geckodriver/releases/download/v0.34.0/geckodriver-v0.34.0-win64.zip
- Baixar o arquivo "geckodriver...win64.zip"
  - Descompactar o arquivo
  - NÃO executar o executável "geckodriver.exe"
  - Mover o executável "geckodriver.exe" para o diretório "C:\Windows\System32"
- Abrir um novo gitbash, informar o comando abaixo para confirmar se o novo geckodriver realmente foi instalado, e verificar se a versão apresentada é a mesma no qual foi baixada no site com a versão "Latest" anteriormente (Ex.: v0.34.0)
```
geckodriver --version
```
- Fechar este gitbash 

### Desinstalar Ruby e/ou Rails que já foram instalados em algum outro momento
- Na ferramenta de pesquisa do Windows, informar "Adicionar ou remover programas" 
- Clicar na sugestão apresentada 
- Em "Aplicativos" > "Aplicativos instalados", no campo de pesquisa, informar "Ruby" e/ou "Rails"
- Clicar no resultado apresentado
- Clicar em "..." > "Desinstalar" e prosseguir com as etapas de desinstalação
- Na janela do "Explorador de Arquivos" acessar o diretório "C:", procurar e remover a pasta "Ruby" e/ou "Rails"
- Acessar o diretório "C:\Users\usuario", procurar e remover os arquivos ".gem" e ".bundle"

### Ruby+Devkit versão 3.1.2-1 (x64) 
- Baixar o [Ruby+Devkit 3.1.2-1 (x64)](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-3.1.2-1/rubyinstaller-devkit-3.1.2-1-x64.exe)
- Em "Select Components", marcar todas as opções caso ainda não estejam marcadas
- Em "Completing the Ruby 3.1.2-1 ...", verificar se "Run 'ridk install' to set ip MSYS2 ..." está marcado por padrão e clicar em "Finish"
- No terminal aberto automaticamente, após algum tempo teclar "Enter"
- Após o término da instalação, teclar "Enter" novamente
- Fechar este terminal
- Abrir um novo gitbash
- Informar o comando abaixo para confirmar se o ruby realmente foi instalado
```
ruby -v
```
- E verificar se foi retornada a mesma versão do ruby+devkit instalada anteriormente:
> ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x64-mingw-ucrt]
- Fechar este gitbash

### Instalar as extensões no Visual Studio Code (VS Code)
- Caso ainda não tenha o VS Code baixado e instalado, acessar o site do [Visual Studio Code](https://code.visualstudio.com/download), baixar e instalar com a opção "System Installer"
- Com o Visual Studio Code aberto, caso seja apresentado alguma mensagem de "Instalar pacote de idiomas ...", clicar no ícone de configurações > "Don't Show Again"
- Clicar em "Manage" > "Profiles" > "Create Profile"
- Em "Profile name", informar "Ruby E2E"
- Clicar em "Create"
- Clicar em "Extensions", informar e instalar as extensões abaixo:
  - Hyper Term Theme
    - HasseNasse
      - Clicar na opção "Hyper Term Black" apresentada para habilitar a extensão
  - Material Icon Theme
    - Philipp Kief
      - Clicar em "Material Icon Theme" apresentada para habilitar a extensão 
  - Simple Ruby ERB 
    - Victor Ortiz Heredia
  - Snippets and Syntax Highlight for Gherkin (Cucumber) 
    - Euclidity
- Fechar o VS Code

---
# :hammer_and_wrench: Clonar o projeto 
- Abrir uma janela do "Explorador de Arquivos"
- Acessar o diretório onde será clonado o projeto "desafio-tecnico-analista-de-testes-qa_ene-solucoes"
- Copiar esse diretório
- Abrir um novo gitbash
- Informar o comando abaixo para acessar onde será clonado o projeto
> cd "<diretório\copiado\anteriormente>"

Ex.: 
```
cd "C:\Projetos\Automação"
```
- Informar o comando abaixo para clonar este repositório via "HTTPS"

```
git clone https://github.com/AndressaKarla/desafio-tecnico-analista-de-testes-qa_ene-solucoes.git
```

- Ou informar o comando abaixo para clonar este repositório via "SSH"

```
git clone git@github.com:AndressaKarla/desafio-tecnico-analista-de-testes-qa_ene-solucoes.git
```

# :bookmark_tabs: Abrir o VS Code diretamente na pasta do projeto "desafio-tecnico-analista-de-testes-qa_ene-solucoes"
- No gitbash aberto anteriormente, informar o comando abaixo para acessar o projeto “desafio-tecnico-analista-de-testes-qa_ene-solucoes” clonado anteriormente
```
cd desafio-tecnico-analista-de-testes-qa_ene-solucoes
```
- Informar o comando abaixo para abrir o VS Code diretamente na pasta do projeto "desafio-tecnico-analista-de-testes-qa_ene-solucoes"
```
code .
```
- Aguardar o VS Code ser aberto
- No VS Code aberto, caso seja apresentado "Do you trust the authors on the files in this folder?", marcar "Trust the authors of all files in the parent folder ...."
  - Clicar em "Yes, I trust the authors ...."

# :hammer_and_wrench: Instalar mais algumas dependências necessárias  
- No gitbash aberto anteriormente, informar o comando abaixo para acessar a parte com automação de testes “3. automacao-frontend > e2e-magazine-luiza_ruby-gherkin-selenium-webdriver” também clonado junto ao projeto "desafio-tecnico-analista-de-testes-qa_ene-solucoes" anteriormente
```
cd "3. automacao-frontend/e2e-magazine-luiza_ruby-gherkin-selenium-webdriver"
```
- Informar o comando abaixo para instalar mais algumas dependências necessárias da parte com automação de testes
```
bundle install
```
- Fechar este gitbash

---
# :dart: Executar testes e Gerar os resultados dos testes no computador

## :triangular_flag_on_post: Executar os testes automatizados E2E (ponta a ponta) no navegador chrome na interface gráfica no ambiente de produção e Gerar os resultados dos testes no computador (0. artefatos > 2. reports-ruby > html; 0. artefatos > 2. reports-ruby > screenshots)
_**OBSERVAÇÕES**: em alguns momentos (provavelmente por instabilidades ou demora no carregamento de alguns elementos nas telas do portal de comércio online "Magazine Luiza"), os steps "E que no campo Buscar no Magalu eu informe o produto "Notebook Dell G15 Gamer 5530 I7-13650Hx 32Gb Ddr5 Ssd 1Tb"" e "E que sejam apresentadas as Principais características" acabavam falhando. Como solução paliativa tentar executar os testes novamente ou disponibilizarem um ambiente controlado onde seja possível analisar melhor os logs/possíveis motivos destas situações_
- Abrir uma janela do "Explorador de Arquivos"
- Acessar o diretório onde foi clonado o projeto “desafio-tecnico-analista-de-testes-qa_ene-solucoes”
- Copiar esse diretório 
- Abrir um novo gitbash
- Informar o comando abaixo para acessar o projeto "desafio-tecnico-analista-de-testes-qa_ene-solucoes"
> cd "<diretório\copiado\anteriormente>"

Ex.: 
```
cd "C:\Projetos\Automação\desafio-tecnico-analista-de-testes-qa_ene-solucoes"
```
- Informar o comando abaixo para acessar a parte com automação de testes “3. automacao-frontend > e2e-magazine-luiza_ruby-gherkin-selenium-webdriver” também clonado junto ao projeto "desafio-tecnico-analista-de-testes-qa_ene-solucoes" anteriormente
```
cd "3. automacao-frontend/e2e-magazine-luiza_ruby-gherkin-selenium-webdriver"
```
- Informar o comando abaixo para executar cada feature e/ou cenário individualmente da parte com automação de testes:
> bundle exec cucumber -t @nome_tag

Ex. 1:
```
bundle exec cucumber -t @produto_carrinho
```
Ex. 2: 
```
bundle exec cucumber -t @produto
```

- Ou informar o comando abaixo para executar todas as features e/ou cenários da parte com automação de testes:
```
bundle exec cucumber
```

## :triangular_flag_on_post: Executar os testes automatizados E2E (ponta a ponta) no navegador firefox na interface gráfica em uma simulação de ambiente de homologação e Gerar os resultados dos testes no computador (0. artefatos > 2. reports-ruby > html; 0. artefatos > 2. reports-ruby > screenshots)
_**OBSERVAÇÕES**: em alguns momentos (provavelmente por instabilidades ou demora no carregamento de alguns elementos nas telas do portal de comércio online "Magazine Luiza"), os steps "E que no campo Buscar no Magalu eu informe o produto "Notebook Dell G15 Gamer 5530 I7-13650Hx 32Gb Ddr5 Ssd 1Tb"" e "E que sejam apresentadas as Principais características" acabavam falhando. Como solução paliativa tentar executar os testes novamente ou disponibilizarem um ambiente controlado onde seja possível analisar melhor os logs/possíveis motivos destas situações_
- No gitbash aberto anteriormente, informar o comando abaixo para executar cada feature e/ou cenário individualmente da parte com automação de testes:
> bundle exec cucumber -p ff_hml -t @nome_tag

Ex. 1:
```
bundle exec cucumber -p ff_hml @produto_carrinho
```
Ex. 2: 
```
bundle exec cucumber -p ff_hml -t @produto
```

- Ou informar o comando abaixo para executar todas as features e/ou cenários da parte com automação de testes:
```
bundle exec cucumber -p ff
```

---
# :mag_right: Verificar os resultados das execuções dos testes automatizados e2e no computador
## :bookmark_tabs: Screenshots no computador
## :heavy_check_mark: Em caso de sucesso dos testes, verificar os screenshots da pasta "testes_passaram"
- No VS Code aberto anteriormente, acessar "0. artefatos > 2. reports-ruby > screenshots > testes_passaram > dd_mm_aaaa" 
> nome_cenario-dd_mm_aaaa-hh1_mm1_ss1.png 
  
Ex.: 0. artefatos > 2. reports-ruby > screenshots > testes_passaram > 09_12_2025 
> adicionar_produto_ao_carrinho_-_apresentar_produto_adicionado_anteriormente-09_12_2025-09_29_57.png

## :x: Em caso de falha dos testes, verificar os screenshots da pasta "testes_falharam"
- No VS Code aberto anteriormente, acessar "0. artefatos > 2. reports-ruby > screenshots > testes_falharam > dd_mm_aaaa" 
> nome_cenario-dd_mm_aaaa-hh2_mm2_ss2.png 

Ex.: 0. artefatos > 2. reports-ruby > screenshots > testes_falharam > 09_12_2025
> adicionar_produto_ao_carrinho_-_apresentar_produto_adicionado_anteriormente-09_12_2025-08_40_41.png

## :bookmark_tabs: Relatório html no computador
- No VS Code aberto anteriormente, acessar "0. artefatos > 2. reports-ruby > html > ruby-gherkin-selenium-webdriver-report-html.html" 
- Clicar com botão direito do mouse sob o relatório "ruby-gherkin-selenium-webdriver-report-html.html" > "Reveal in File Explorer" 
- Na janela do "Explorador de Arquivos" aberta automaticamente, clicar 2 vezes sob o relatório "ruby-gherkin-selenium-webdriver-report-html.html" para ser aberto e verificado no navegador padrão

---
### Feito com ❤️ por Andressa Karla :wave: 

### [![Medium](https://img.shields.io/badge/-Medium-595D60?style=plastic&logo=Medium&logoColor=white&link=https://medium.com/@andressakarla)](https://medium.com/@andressakarla) [![Linkedin](https://img.shields.io/badge/-LinkedIn-595D60?style=plastic&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/andressakarla/)](https://www.linkedin.com/in/andressakarla/)

---