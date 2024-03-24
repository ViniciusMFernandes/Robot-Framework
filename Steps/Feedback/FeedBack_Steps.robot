***Settings***
Resource    ../../Elements/Main_Elements.resource
Resource    ../../Resource/Settings.resource

***Keywords***
Quando clico em Feedback
    Click Element   ${Feedback.feedBack}

E digito todos os campos feedBack corretamente
    Input Text      ${Feedback.emailFeedBack}        ${emailTextFeedBack}
    Input Text      ${Feedback.subjectFeedBack}      ${subjectTextFeedBack}
    Input Text      ${Feedback.questionFeedBack}     ${questionTextFeedBack} 

E clico em Submit
    Click Element   ${Feedback.submitFeedBack}

Então Feedback é enviado
    Sleep   2s
    Element Text Should Be Thank You