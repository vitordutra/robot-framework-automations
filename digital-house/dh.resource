*** Variables ***
${SITE}                                 https://www.digitalhouse.com/br
${NAVEGADOR}                            Firefox
${FRAME}                                xpath=/html/body/iframe[2]
${BOTAO_ACEITAR_COOKIES}                xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[1]/div[2]
${BOTAO_CONHECA_NOSSOS_CURSOS}          css=a[href="/br/cursos"]

# DATA ANALYTICS
${BOTAO_DATA_ANALYTICS}               css=a[href="/br/curso/data-analytics"]
${ELEMENTO_SUBTITULO_DATA_ANALYTICS}  xpath=/html/body/div[1]/div/main/section/div/div/div[1]/div/div[1]/p
${SUBTITULO_DATA_ANALYTICS}           Transforme grandes quantidades de dados em insights.
${TERMO_DATA_ANALYTICS}               manipulação e análise de dados
${BOTAO_INSCREVA_DATA_ANALYTICS}      css=a[href="/br/curso/data-analytics/data-analytics1"]
${ELEMENTO_PRECO_DATA_ANALYTICS}      xpath=/html/body/div[1]/div/main/section[2]/div/div[2]/dl/div/div[4]/div/div/span[1]
${PRECO_DATA_ANALYTICS}               R$ 9.824,00

# DATA SCIENCE
${BOTAO_DATA_SCIENCE}               css=a[href="/br/curso/data-science"]
${ELEMENTO_SUBTITULO_DATA_SCIENCE}  xpath=/html/body/div/div/main/section/div/div/div[1]/div/div[1]/p
${SUBTITULO_DATA_SCIENCE}           Machine learning, inteligência artificial e tudo mais sobre a ciência de dados
${TERMO_DATA_SCIENCE}               processamento e análise de grandes quantidades de dados
${BOTAO_INSCREVA_DATA_SCIENCE}      xpath=/html/body/div[1]/div/main/div[6]/div/div[2]/div[1]/div/div/div/div/div/div/div/div/a
${ELEMENTO_PRECO_DATA_SCIENCE}      xpath=/html/body/div[1]/div/main/section[2]/div/div[2]/dl/div/div[4]/div/div/span[1]
${PRECO_DATA_SCIENCE}               R$ 11.312,00

# DESENVOLVIMENTO MOBILE ANDROID
${BOTAO_DESENVOLVIMENTO_MOBILE_ANDROID}               css=a[href="/br/curso/desenvolvimento-mobile-android"]
${ELEMENTO_SUBTITULO_DESENVOLVIMENTO_MOBILE_ANDROID}  xpath=/html/body/div[1]/div/main/section/div/div/div[1]/div/div[1]/p
${SUBTITULO_DESENVOLVIMENTO_MOBILE_ANDROID}           Crie seu próprio app do zero em até 5 meses
${TERMO_DESENVOLVIMENTO_MOBILE_ANDROID}               desenvolver aplicações móveis como um programador profissional

# DESENVOLVIMENTO MOBILE IOS
${BOTAO_DESENVOLVIMENTO_MOBILE_IOS}               css=a[href="/br/curso/desenvolvimento-mobile-ios"]
${ELEMENTO_SUBTITULO_DESENVOLVIMENTO_MOBILE_IOS}  xpath=/html/body/div[1]/div/main/section/div/div/div[1]/div/div[1]/p
${SUBTITULO_DESENVOLVIMENTO_MOBILE_IOS}           Aprenda Swift e crie seu próprio app em até 5 meses
${TERMO_DESENVOLVIMENTO_MOBILE_IOS}               criar apps estáveis, funcionais e atrativos
${BOTAO_INSCREVA_DESENVOLVIMENTO_MOBILE_IOS}      css=a[href="/br/curso/desenvolvimento-mobile-ios/desenvolvimento-mobile-ios"]
${ELEMENTO_PRECO_DESENVOLVIMENTO_MOBILE_IOS}      xpath=/html/body/div[1]/div/main/section[2]/div/div[2]/dl/div/div[4]/div/div/span[1]
${PRECO_DESENVOLVIMENTO_MOBILE_IOS}               R$ 8.269,00

# DESENVOLVIMENTO WEB FULL STACK
${BOTAO_DESENVOLVIMENTO_WEB_FULL_STACK}               css=a[href="/br/curso/desenvolvimento-web-full-stack"]
${ELEMENTO_SUBTITULO_DESENVOLVIMENTO_WEB_FULL_STACK}  xpath=/html/body/div[1]/div/main/section/div/div/div[1]/div/div[1]/p
${SUBTITULO_DESENVOLVIMENTO_WEB_FULL_STACK}           Aprenda a criar sites e aplicativos web, do começo ao fim
${TERMO_DESENVOLVIMENTO_WEB_FULL_STACK}               integração do front-end com o back-end
${BOTAO_INSCREVA_DESENVOLVIMENTO_WEB_FULL_STACK}      xpath=/html/body/div[1]/div/main/div[6]/div/div[2]/div[1]/div/div/div/div/div/div[1]/div/div/a
${ELEMENTO_PRECO_DESENVOLVIMENTO_WEB_FULL_STACK}      xpath=/html/body/div[1]/div/main/section[2]/div/div[2]/dl/div/div[4]/div/div/span[1]
${PRECO_DESENVOLVIMENTO_WEB_FULL_STACK}               R$ 9.824,00

# CERTFIED WEB DEVELOPER
${BOTAO_CERTIFIED_WEB_DEVELOPER}               css=a[href="https://www.digitalhouse.com/br/acoes/certified-tech-developer"]
${ELEMENTO_SUBTITULO_CERTIFIED_WEB_DEVELOPER}  xpath=/html/body/main/div[2]/div/div/div[2]/h1/font/b
${SUBTITULO_CERTIFIED_WEB_DEVELOPER}           Crie novas formas de viver o mundo
${TERMO_CERTIFIED_WEB_DEVELOPER}               Venha desenvolver uma carreira que pode mudar o mundo
${BOTAO_INSCREVA_CERTIFIED_WEB_DEVELOPER}      xpath=/html/body/main/div[2]/div/div/a[1]

# FORMULÁRIO
${CAMPO_NOME}           id=SPxdIrhGPqy1WTAe5qzVoB7MONOoSOZB
${NOME}                 João Vitor
${CAMPO_SOBRENOME}      id=DyESSyoTrg8EZUGtiPbmZmuL5y03FlCN
${SOBRENOME}            Dutra Pacheco Gois
${CAMPO_EMAIL}          id=Lbqhh6B7SmT1OnakIxZ0TBmT2o2IxVNq
${EMAIL}                jo.vitor.d@gmail.com
${CAMPO_CELULAR}        id=zVe3bzxdSNmVk5qFPuJgonal9LqQMlq8
${CELULAR}              98982470868
${CAMPO_ESTADO}         name:provincia_residencia
${ESTADO}               Maranhão
${CAMPO_COMO_CONHECEU}  name:inscripcion_conociste
${COMO_CONHECEU}        LinkedIn



*** Keywords ***
Abrir o site da Digital House
        Open Browser                    ${SITE}        ${NAVEGADOR}
        # Maximize Browser Window
        # Set Selenium Speed              0.5

Clicar em “Aceitar Cookies”
        Sleep          1
        Select frame   ${FRAME}
        Click Element  ${BOTAO_ACEITAR_COOKIES}
        Unselect Frame

Clicar em “Conheça nossos cursos”
        Wait and Click  ${BOTAO_CONHECA_NOSSOS_CURSOS}

# DATA ANALYTICS
Selecionar o curso “Data Analytics”
        Wait and click  ${BOTAO_DATA_ANALYTICS}

Verificar se o subtitulo do curso corresponde a “Transforme grandes quantidades de dados em insights.”
        Element Should Contain  ${ELEMENTO_SUBTITULO_DATA_ANALYTICS}  ${SUBTITULO_DATA_ANALYTICS}

Verificar se a página contém o termo “manipulação e análise de dados”
        Page Should Contain  ${TERMO_DATA_ANALYTICS}

Clicar em “Inscreva-se Data Analytics”
        Wait and Click  ${BOTAO_INSCREVA_DATA_ANALYTICS}

Validar se o valor do curso é “R$ 9.824,00”
        Element Should Contain  ${ELEMENTO_PRECO_DATA_ANALYTICS}  ${PRECO_DATA_ANALYTICS}

# DATA SCIENCE
Selecionar o curso “Data Science”
        Wait and click  ${BOTAO_DATA_SCIENCE}

Verificar se o subtitulo do curso corresponde a “Machine learning, inteligência artificial e tudo mais sobre a ciência de dados.”
        Element Should Contain  ${ELEMENTO_SUBTITULO_DATA_SCIENCE}  ${SUBTITULO_DATA_SCIENCE}

Verificar se a página contém o termo “processamento e análise de grandes quantidades de dados”
        Page Should Contain  ${TERMO_DATA_SCIENCE}

Clicar em “Inscreva-se Data Science”
        Wait and Click  ${BOTAO_INSCREVA_DATA_SCIENCE}

Validar se o valor do curso é “R$ 11.312,00”
        Element Should Contain  ${ELEMENTO_PRECO_DATA_SCIENCE}  ${PRECO_DATA_SCIENCE}

# DESENVOLVIMENTO MOBILE ANDROID
Selecionar o curso “Desenvolvimento Mobile Android”
        Wait and click  ${BOTAO_DESENVOLVIMENTO_MOBILE_ANDROID}

Verificar se o subtitulo do curso corresponde a “Crie seu próprio app do zero em até 5 meses”
        Element Should Contain  ${ELEMENTO_SUBTITULO_DESENVOLVIMENTO_MOBILE_ANDROID}  ${SUBTITULO_DESENVOLVIMENTO_MOBILE_ANDROID}

Verificar se a página contém o termo “desenvolver aplicações móveis como um programador profissional”
        Page Should Contain  ${TERMO_DESENVOLVIMENTO_MOBILE_ANDROID}

# DESENVOLVIMENTO MOBILE IOS
Selecionar o curso “Desenvolvimento Mobile IOS”
        Wait and click  ${BOTAO_DESENVOLVIMENTO_MOBILE_IOS}

Verificar se o subtitulo do curso corresponde a “Aprenda Swift e crie seu próprio app em até 5 meses”
        Element Should Contain  ${ELEMENTO_SUBTITULO_DESENVOLVIMENTO_MOBILE_IOS}  ${SUBTITULO_DESENVOLVIMENTO_MOBILE_IOS}

Verificar se a página contém o termo “criar apps estáveis, funcionais e atrativos”
        Page Should Contain  ${TERMO_DESENVOLVIMENTO_MOBILE_IOS}

Clicar em “Inscreva-se Desenvolvimento Mobile IOS”
        Wait and Click  ${BOTAO_INSCREVA_DESENVOLVIMENTO_MOBILE_IOS}

Validar se o valor do curso é “R$ 8.269,00”
        Element Should Contain  ${ELEMENTO_PRECO_DESENVOLVIMENTO_MOBILE_IOS}  ${PRECO_DESENVOLVIMENTO_MOBILE_IOS}


# DESENVOLVIMENTO WEB FULL STACK
Selecionar o curso “Desenvolvimento Web Full Stack”
        Wait and click  ${BOTAO_DESENVOLVIMENTO_WEB_FULL_STACK}

Verificar se o subtitulo do curso corresponde a “Aprenda a criar sites e aplicativos web, do começo ao fim.”
        Element Should Contain  ${ELEMENTO_SUBTITULO_DESENVOLVIMENTO_WEB_FULL_STACK}  ${SUBTITULO_DESENVOLVIMENTO_WEB_FULL_STACK}

Verificar se a página contém o termo “integração do front-end com o back-end”
        Page Should Contain  ${TERMO_DESENVOLVIMENTO_WEB_FULL_STACK}

Clicar em “Inscreva-se Desenvolvimento Web Full Stack”
        Wait and Click  ${BOTAO_INSCREVA_DESENVOLVIMENTO_WEB_FULL_STACK}

Validar se o valor do curso é “R$ 9.824,00" Full Stack”
        Element Should Contain  ${ELEMENTO_PRECO_DESENVOLVIMENTO_WEB_FULL_STACK}  ${PRECO_DESENVOLVIMENTO_WEB_FULL_STACK}

# CERTFIED WEB DEVELOPER
Selecionar o curso “Certified Tech Developer”
        Wait and click  ${BOTAO_CERTIFIED_WEB_DEVELOPER}

Verificar se o subtitulo do curso corresponde a “Crie novas formas de viver o mundo”
        Element Should Contain  ${ELEMENTO_SUBTITULO_CERTIFIED_WEB_DEVELOPER}  ${SUBTITULO_CERTIFIED_WEB_DEVELOPER}

Verificar se a página contém o termo “Venha desenvolver uma carreira que pode mudar o mundo”
        Page Should Contain  ${TERMO_CERTIFIED_WEB_DEVELOPER}

Clicar em “Inscreva-se CTD”
        Wait and Click  ${BOTAO_INSCREVA_CERTIFIED_WEB_DEVELOPER}
        Sleep  1

Preencher os campos do formulário “Faça parte do futuro digital”
        Wait and Input Text  ${CAMPO_NOME}  ${NOME}
        Wait and Input Text  ${CAMPO_SOBRENOME}  ${SOBRENOME}
        Wait and Input Text  ${CAMPO_EMAIL}  ${EMAIL}
        Wait and Input Text  ${CAMPO_CELULAR}  ${CELULAR}
        Select From List By Value  ${CAMPO_ESTADO}  ${ESTADO}
        Select From List By Value  ${CAMPO_COMO_CONHECEU}  ${COMO_CONHECEU}

Wait and Click
        [Arguments]                                 ${ELEMENTO}
        Wait Until Element is Visible               ${ELEMENTO}
        Click Element                               ${ELEMENTO}

Wait and Input Text
        [Arguments]                           ${ELEMENTO}        ${TEXTO}
        Wait Until Element is Visible         ${ELEMENTO}
        Wait Until Element is Enabled         ${ELEMENTO}
        Scroll Element Into View              ${ELEMENTO}
        Input Text                            ${ELEMENTO}        ${TEXTO}
