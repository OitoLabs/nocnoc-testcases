*** Setting ***
Library    Selenium2Library

*** Test Cases ***
Login seller
    Open nocnoc by firefox
*** Keywords ***
Open nocnoc by firefox
    Open Browser    https://qa.nocnoc-internal.com/seller/login  firefox
    Wait Until Page Contains    Forgot Password   10
    Input Text  //input[@name='loginemailphone']     amar.khan@oitolabs.io
    Input Text  //input[@name='loginpassword']  Amar123@
    Click Button    Sign in
    Wait Until Page Contains    My Account   10
    Capture Page Screenshot
    Close Browser
