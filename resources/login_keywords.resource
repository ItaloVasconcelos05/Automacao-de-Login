*** Settings ***
Library           SeleniumLibrary
Resource    ./login_variables.resource

*** Keywords ***
Iniciar Ambiente de Teste
    [Documentation]    Configura o ambiente de teste inicial
    Log To Console    Definindo o diretório de screenshots para: ${PASTA_SCREENSHOTS}
    Set Screenshot Directory    ${PASTA_SCREENSHOTS}
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    


Realizar Login Com Sucesso
    [Arguments]    ${USUARIO}    ${SENHA}
    Preencher o Campo de Usuário    ${USUARIO}  
    Preencher o Campo de Senha    ${SENHA}    
    Clicar no Botão de Login
    Verificar se o Login Foi Bem Sucedido
    Go To    ${URL}

Realizar Login Com Falha
    [Arguments]    ${USUARIO}    ${SENHA}
    Preencher o Campo de Usuário    ${USUARIO}
    Preencher o Campo de Senha    ${SENHA}
    Clicar no Botão de Login
    Verificar Mensagem de Erro de Usuário Inválido

Verificar se o Login Foi Bem Sucedido
    Page Should Contain Element    xpath://span[@class="title" and text()="Products"]
    Capture Page Screenshot    filename=Login_Sucesso.png
Verificar Mensagem de Erro de Usuário Inválido
    Page Should Contain Element    xpath://h3[text()="Epic sadface: Username and password do not match any user in this service"]
    Capture Page Screenshot    filename=Login_Inválido.png
Preencher o Campo de Usuário 
    [Arguments]    ${USUARIO}
    Input Text      id:user-name      ${USUARIO}
Preencher o Campo de Senha
    [Arguments]    ${SENHA}
    Input Text      id:password       ${SENHA}
Clicar no Botão de Login
    Click Button    id:login-button
