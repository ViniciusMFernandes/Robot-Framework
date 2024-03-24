***Settings***
Library     SeleniumLibrary

***Variables***
#Dados gerais
${url}          https://demo.testfire.net/index.jsp
${browser}      chrome

#Dados do teste
${user}                     admin
${pass}                     admin
${emailTextFeedBack}        admin@admin.com
${subjectTextFeedBack}      teste
${questionTextFeedBack}     TesteTesteTesteTesteTesteTesteTesteTesteTesteTeste10

#Elementos da página login
${signIn}       //*[@id="LoginLink"]/font
${userField}    //*[@id="uid"]
${passField}    //*[@id="passw"]
${logButton}    //*[@id="login"]/table/tbody/tr[3]/td[2]/input
${signOff}      //*[@id="LoginLink"]/font

#Elementos da página feedback
${feedBack}             //*[contains(text(),"Feedback")]
${emailFeedBack}        //input[@name="email_addr"]
${subjectFeedBack}      //input[@name="subject"]
${questionFeedBack}     //textarea[@name="comments"]
${submitFeedBack}       //input[@name="submit"]

***Keywords***
Dado que eu acesso o site
    Open Browser    ${url}  ${browser}

Quando clico em Sign In
    Click Element   ${signIn}

E digito os dados corretamente
    Input Text      ${userField}         ${user}
    Input Text      ${passField}         ${pass}
    Click Element   ${logButton}

Então o Login é concluído
    Element Should Be Visible       ${signOff}

Quando clico em Feedback
    Click Element   ${feedBack}

E digito todos os campos feedBack corretamente
    Input Text      ${emailFeedBack}     ${emailTextFeedBack}
    Input Text      ${subjectFeedBack}   ${subjectTextFeedBack}
    Input Text      ${questionFeedBack}  ${questionTextFeedBack} 

E clico em Submit
    Click Element   ${submitFeedBack}

Então Feedback é enviado
    Sleep   2s
    Element Should Contain  <div class="fl">Thank You</div>
    Sleep   2s

***Test Cases***
TC01 - Login:
    Dado que eu acesso o site
    Quando clico em Sign In
    E digito os dados corretamente
    Então o Login é concluído

TC02 - Feedback:
    Dado que eu acesso o site
    Quando clico em Feedback
    E digito todos os campos feedBack corretamente
    E clico em Submit
    Então Feedback é enviado