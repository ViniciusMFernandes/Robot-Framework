***Settings***
Resource    ../../Steps/Main_Steps.robot

***Test Cases***
TC02 - Feedback:
    Dado que eu acesso o site
    Quando clico em Feedback
    E digito todos os campos feedBack corretamente
    E clico em Submit
    Então Feedback é enviado