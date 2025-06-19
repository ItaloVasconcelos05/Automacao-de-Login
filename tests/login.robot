*** Settings ***
Documentation     Test suite for login functionality
Resource          ../resources/login_keywords.resource
Suite Setup      Open Browser    https://www.saucedemo.com/    chrome
Suite Teardown    Close Browser
Test Teardown   Capture Page Screenshot    filename=../results/screenshot-${TEST_NAME}.png

*** Variables ***
${USERNAME}    testuser
${PASSWORD}    testpassword

*** Test Cases ***
Cenário 1: Login com Credenciais Válidas
    [Documentation]    Testa o login com credenciais válidas
    [Tags]    login_sucesso    critico
    Realizar Login Com Sucesso