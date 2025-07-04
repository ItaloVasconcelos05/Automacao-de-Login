﻿# Projeto de Automação de Login com Robot Framework

Este é um projeto de automação de testes para iniciantes, desenvolvido para validar o fluxo de login na plataforma de demonstração **[Sauce Demo](https://www.saucedemo.com/)**.

O objetivo principal é aplicar os conceitos básicos do Robot Framework com a biblioteca SeleniumLibrary para realizar interações em uma aplicação web real.

## 🎯 Sobre o Projeto

O escopo deste projeto cobre o seguinte cenário de teste:
1.  Abrir o navegador na página de login do Sauce Demo.
2.  Preencher as credenciais de um usuário válido.
3.  Clicar no botão "Login".
4.  Verificar se a autenticação foi bem-sucedida e o usuário foi redirecionado para a página de produtos.

## 🤖 Tecnologias Utilizadas

* **[Robot Framework](https://robotframework.org/):** Framework de automação de testes.
* **[SeleniumLibrary](https://robotframework.org/SeleniumLibrary/):** Biblioteca para automação de testes web.
* **[Python](https://www.python.org/):** Linguagem de programação base para o Robot Framework.
* **[Git & GitHub](https://github.com/):** Para versionamento de código.

## ⚙️ Pré-requisitos e Instalação

Antes de começar, você precisará ter o [Python](https://www.python.org/downloads/) e o [Git](https://git-scm.com/downloads) instalados em sua máquina.

Siga os passos abaixo para configurar o ambiente:

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/SEU_USUARIO/projeto-robot-login.git](https://github.com/SEU_USUARIO/projeto-robot-login.git)
    ```

2.  **Navegue até a pasta do projeto:**
    ```bash
    cd projeto-robot-login
    ```

3.  **Instale as dependências do projeto:**
    (É uma boa prática listar as dependências em um arquivo `requirements.txt`)
    ```bash
    pip install -r requirements.txt
    ```
    > **Nota:** O arquivo `requirements.txt` deve conter `robotframework` e `robotframework-seleniumlibrary`.

4.  **Baixe o WebDriver:**
    Este projeto utiliza o `ChromeDriver`. Certifique-se de ter o [WebDriver para o Google Chrome](https://googlechromelabs.github.io/chrome-for-testing/) correspondente à sua versão do navegador. O WebDriver deve estar no `PATH` do seu sistema ou na raiz do projeto.

## 🚀 Como Executar os Testes

Para executar a suíte de testes de automação, utilize o seguinte comando no seu terminal, a partir da pasta raiz do projeto:

```bash
robot -d results tests/
```

**O que o comando faz:**
* `robot`: Executa o Robot Framework.
* `-d results`: Define o diretório `results` como a pasta de saída para os relatórios.
* `tests/`: Aponta para a pasta onde os arquivos de teste (`.robot`) estão localizados.

## 📊 Relatórios de Teste

Após a execução, os seguintes relatórios serão gerados dentro da pasta `results`:

* `log.html`: Um log detalhado com cada passo executado pelo teste. Essencial para depuração.
* `report.html`: Um relatório de alto nível com um resumo dos resultados dos testes e gráficos.

## 👨‍💻 Autor

Desenvolvido por **Ítalo Vasconcelos**.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/SEU-PERFIL/)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/SEU_USUARIO/)
