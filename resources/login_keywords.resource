*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Realizar Login Com Sucesso
    [Arguments]    ${USUARIO}    ${SENHA}
    Preencher o Campo de Usuário    ${USUARIO}  
    Preencher o Campo de Senha    ${SENHA}    
    Clicar no Botão de Login
    Verificar se o Login Foi Bem Sucedido

Verificar se o Login Foi Bem Sucedido
    Page Should Contain Element    xpath://span[@class="title" and text()="Products"]
Preencher o Campo de Usuário 
    [Arguments]    ${USUARIO}
    Input Text      id:user-name      ${USUARIO}
Preencher o Campo de Senha
    [Arguments]    ${SENHA}
    Input Text      id:password       ${SENHA}
Clicar no Botão de Login
    Click Button    id:login-button
