*** Variables ***
${SITE}                                 https://www.hurb.com/br
${NAVEGADOR}                            Chrome
${BOTAO_COOKIES}                        css=#CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll
${BOTAO_PACOTES}                        css=.hrc-46qds:nth-child(2) > .hrc-1ul7R
${CAMPO_CIDADE}                         destination-input
${CIDADE}                               Orlando
${BOTAO_PESQUISAR}                      css=#__next > div.Header_Header__1jiZz > div.hrc-2LOsj > div > div > div.h-rr9hdz > button
${OPCAO_DESTINO}                        css=.hrc-1_8b9:nth-child(3) .hrc-1Xnc_
${BOTAO_OPCAO}                          css=.mapx-produto-pacotes-click-header_btn_escolher
${BOTAO_COMPRAR}                        css=.mapx-produto-pacotes-click-oferta_btn_comprar_1
${ELEMENTO_CONFIGURACAO}                css=.col-md-4 .booking-info:nth-child(7) .col-xs-8
${VALOR_CONFIGURACAO}                   7 Noites\n1 pessoa por pacote
${ELEMENTO_DATA_INICIO}                 css=.col-md-4 .row:nth-child(2) > .col-xs-7
${VALOR_DATA_INICIO}                    01 Mar 2024
${ELEMENTO_DATA_FIM}                    css=.col-md-4 .row:nth-child(3) > .col-xs-7
${VALOR_DATA_FIM}                       30 Nov 2024
${OPCAO_BOLETO}                         css=.text-field > span
${PAGADOR}                              name=billHolder
${NOME-PAGADOR}                         Francieli Celeghim
${CPF}                                  name=billHolderCpf
${CPF-PAGADOR}                          705.127.670-09
${CELULAR}                              name=billHolderTel
${CELULAR-PAGADOR}                      (11) 99000-0000
${CHECKBOX}                             css=#cancellation-policy
${CANCELAR}                             css=.col-xs-12 > .free-cancellation-policy__message
${TXT-CANCELAR}                         Cancelamento Grátis!


*** Keywords ***
Abrir o site da Hurb
        Open Browser                    ${SITE}        ${NAVEGADOR}
        Maximize Browser Window
        Set Selenium Speed              0.75

Clicar em "Permitir todos os cookies"
        Wait and Click                  ${BOTAO_COOKIES}
     

Selecionar a opção "Pacotes"
        Wait and Click       ${BOTAO_PACOTES}
        
      

Buscar por alguma cidade turística (Ex: Buenos Aires, Florença, Orlando) e clicar em "Pesquisar"
        Wait and Input Text               ${CAMPO_CIDADE}       ${CIDADE}
        Wait and Click                    ${BOTAO_PESQUISAR}


Selecionar um pacote de viagem
        Wait and Click                    ${OPCAO_DESTINO}
        



Clicar em "ESCOLHER OPÇÃO"
        Switch Window                     NEW
        Wait and Click                  ${BOTAO_OPCAO}



Escolher uma opção de viagem e clicar em "COMPRAR"
        Wait and Click                    ${BOTAO_COMPRAR}


Validar as informações da "Configuração" da viagem
        Element Should Contain          ${ELEMENTO_CONFIGURACAO}  ${VALOR_CONFIGURACAO}


Validar as informações do período da viagem
        Element Should Contain          ${ELEMENTO_DATA_INICIO}   ${VALOR_DATA_INICIO}
        Element Should Contain          ${ELEMENTO_DATA_FIM}      ${VALOR_DATA_FIM}

Selecionar a opção "Boleto parcelado"
        Wait and Click                    ${OPCAO_BOLETO}


Preencher os dados de pagamento
        Wait and Input Text               ${PAGADOR}                ${NOME-PAGADOR}
        Wait and Input Text               ${CPF}                    ${CPF-PAGADOR}
        Wait and Input Text               ${CELULAR}                ${CELULAR-PAGADOR}


Marcar o checkbox "Li e aceito as condições de termos de uso e política de privacidade"
        Select Checkbox                   ${CHECKBOX}


Validar a informação sobre cancelamento grátis
        Element Should Contain            ${CANCELAR}               ${TXT-CANCELAR}

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
