Dir["path/to/pages/* .rb"].each {|file| require file}

class CreateUserPage < BasePage

    attr_accessor :driver
    def initialize(webDriver)
        @driver = webDriver
    end

    # Mapeamento

        # menu_trilha menu caminho

            def link_home
                @driver.find_element(:css, 'body > div.row > div.col.s9 > div:nth-child(1) > div > a:nth-child(1)')
            end

            def link_treinamento
                @driver.find_element(:css, 'body > div.row > div.col.s9 > div:nth-child(1) > div > a:nth-child(2)')
            end

            def link_novo_usuario
                @driver.find_element(:css, 'body > div.row > div.col.s9 > div:nth-child(1) > div > a:nth-child(3)')
            end

        # end

        # body Criar Usuários

            def titulo_criar_usuarios
                @driver.find_element(:css, 'body > div.row > div.col.s9 > div:nth-child(2) > div > h5')
            end

            def input_nome
                @driver.find_element(:id, 'user_name')
            end

            def input_ultimo_nome
                @driver.find_element(:id, 'user_lastname')
            end

            def input_email
                @driver.find_element(:id, 'user_email')
            end

            def input_endereco
                @driver.find_element(:id, 'user_address')
            end

            def input_univers
                @driver.find_element(:id, 'user_university')
            end

            def input_profissao
                @driver.find_element(:id, 'user_profile')
            end

            def input_genero
                @driver.find_element(:id, 'user_gender')
            end

            def input_idade
                @driver.find_element(:id, 'user_age')
            end

        # end

        # botoes

            def btn_criar
                @driver.find_element(:css, '#new_user > div:nth-child(7) > div > div > input[type=submit]')
            end

            def btn_voltar_criar_usuario
                @driver.find_element(:css, '#new_user > div:nth-child(7) > div > a')
            end

        # end

    # end

    # metodos

        def fazer_preenchimento_obrigatorio(nome, ultimoNome, email)
            input_nome.send_keys(nome)
            input_ultimo_nome.send_keys(ultimoNome)
            input_email.send_keys(email)
        end

        def fazer_clicar_em_criar()
            btn_criar.click
        end

        def fazer_procedimento_basico_completo(nome, ultimoNome, email)
            fazer_preenchimento_obrigatorio(nome, ultimoNome, email)
            fazer_clicar_em_criar
        end

    # end

    def irPara
        @driver.navigate.to("https://automacaocombatista.herokuapp.com/users/new")
    end
    
end