***Settings***
Resource    ../../Elements/Main_Elements.resource
Resource    ../../Resource/Settings.resource

***Keywords***
Dado que eu acesso o site
    Open Browser    ${url}  ${browser}

Quando clico em Sign In
    Click Element   ${Login.signIn}

E digito os dados corretamente
    Input Text      ${Login.userField}         ${user}
    Input Text      ${Login.passField}         ${pass}
    Click Element   ${Login.logButton}

Então o Login é concluído
    Element Should Be Visible       ${Login.signOff}