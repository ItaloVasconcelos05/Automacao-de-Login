*** Settings ***
Documentation     Test suite for login functionality
Resource          ../resources/login_keywords.resource
Resource          ../resources/login_variables.resource
Suite Setup      Iniciar Ambiente de Teste
Suite Teardown    Close Browser


*** Test Cases ***
Cenário 1: Login com Credenciais Válidas
    [Documentation]    Testa o login com credenciais válidas
    [Tags]    login_sucesso    critico
    Realizar Login Com Sucesso    ${VALID_USER}    ${VALID_PASSWORD}
Cenário 2: Login com Usuário e Senha Inválidos
    [Documentation]    Testa a resposta do sistema a um usuário e senha que não existem.
    [Tags]             login_falha    cenario-negativo
    Realizar Login Com Falha    ${INVALID_USER}    ${INVALID_PASSWORD}

Cenário 3: Login com Usuário Válido e Senha Inválida
    [Documentation]    Testa a resposta do sistema a uma senha incorreta para um usuário válido.
    [Tags]             login_falha    cenario-negativo    seguranca
    Realizar Login Com Falha    ${VALID_USER}      ${INVALID_PASSWORD}

Cenário 4: Login com Usuário Inválido e Senha Válida
    [Documentation]    Testa a resposta do sistema a um usuário inexistente com uma senha qualquer.
    [Tags]             login_falha    cenario-negativo
    Realizar Login Com Falha    ${INVALID_USER}      ${VALID_PASSWORD}
Cenário 5: Login com Usuário Bloqueado
    [Documentation]    Testa o login com usuário bloqueado
    [Tags]    login_bloqueado    critico
    Realizar Login Com Bloqueio    ${LOCKED_USER}    ${VALID_PASSWORD}

Cenário 6: Campos Vazios
    [Documentation]    Testa a resposta do sistema ao tentar fazer login com campos vazios.
    [Tags]             login_falha    cenario-negativo
    Realizar Login Com Nada    ${EMPTY}      ${EMPTY}

Cenário 7: Login com Usuário Vazia
    [Documentation]    Testa a resposta do sistema ao tentar fazer login com usuário vazio.
    [Tags]             login_falha    cenario-negativo
    Realizar Login Com Nada    ${EMPTY}      ${VALID_PASSWORD}

Cenário 8: Fluxo de Logout
    [Documentation]    Testa o fluxo de logout do sistema
    [Tags]             logout_sucesso    critico
    Realizar Logout    ${VALID_USER}    ${VALID_PASSWORD}