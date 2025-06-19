*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Realizar Login Com Sucesso
    Preencher o Campo de Usuário    standard_user
    Preencher o Campo de Senha    secret_sauce
    Clicar no Botão de Login

Preencher o Campo de Usuário 
    [Arguments]    ${USUARIO}
    Input Text      id:user-name      ${USUARIO}
Preencher o Campo de Senha
    [Arguments]    ${SENHA}
    Input Text      id:password       ${SENHA}
Clicar no Botão de Login
    Click Button    id:login-button
