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
    Realizar Login    ${USUARIO}    ${SENHA}
    Verificar se o Login Foi Bem Sucedido
    Go To    ${URL}
Realizar Login Com Falha
    [Arguments]    ${USUARIO}    ${SENHA}
    Realizar Login    ${USUARIO}    ${SENHA}
    Verificar Mensagem de Erro de Usuário Inválido
    Go To    ${URL}
Realizar Login Com Bloqueio
    [Arguments]    ${USUARIO}    ${SENHA}    
    Realizar Login    ${USUARIO}    ${SENHA}
    Verificar Mensagem de Erro de Usuário Bloqueado
    Go To    ${URL}

Realizar Login Com Nada
    [Arguments]    ${USUARIO}    ${SENHA}
    Realizar Login    ${USUARIO}    ${SENHA}
    Verificar Mensagem de Erro de Campo Vazio
    Go To    ${URL}

Realizar Logout
    [Arguments]   ${USUARIO}    ${SENHA}
    Realizar Login    ${USUARIO}    ${SENHA}
    Click Button    id:react-burger-menu-btn
    Click Link    xpath://a[@id="logout_sidebar_link"]
    Verificar Logout
    Go To    ${URL}
Realizar Login
    [Arguments]    ${USUARIO}    ${SENHA}
    Preencher o Campo de Usuário    ${USUARIO}
    Preencher o Campo de Senha    ${SENHA}
    Clicar no Botão de Login

Verificar Logout
    Page Should Contain Element    xpath://div[@class='login_logo']
    Capture Page Screenshot    filename=Logout_Sucesso.png
Verificar Mensagem de Erro de Campo Vazio
    Page Should Contain Element    xpath://h3[text()="Epic sadface: Username is required"]
    Capture Page Screenshot    filename=Login_Vazio.png
Verificar Mensagem de Erro de Usuário Bloqueado
    Page Should Contain Element    xpath://h3[text()="Epic sadface: Sorry, this user has been locked out."]
    Capture Page Screenshot    filename=Login_Bloqueado.png
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
