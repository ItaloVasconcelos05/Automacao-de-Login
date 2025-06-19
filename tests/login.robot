*** Settings ***
Documentation     Test suite for login functionality
Resource          ../resources/login_keywords.resource
Suite Setup      Iniciar Ambiente de Teste
Suite Teardown    Close Browser


*** Test Cases ***
Cenário 1: Login com Credenciais Válidas
    [Documentation]    Testa o login com credenciais válidas
    [Tags]    login_sucesso    critico
    Realizar Login Com Sucesso    standard_user    secret_sauce

Cenário 2: Login com Credenciais Inválidas
    [Documentation]    Testa o login com credenciais inválidas
    [Tags]    login_falha    critico
    Realizar Login Com Falha    invalid_user    invalid_password