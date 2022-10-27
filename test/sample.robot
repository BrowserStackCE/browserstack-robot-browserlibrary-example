*** Settings ***
Documentation   website test suite
Resource    ../resources/BrowserFramework.resource
Test Setup  Setup Browserstack
Test Teardown   End web test

*** Variables ***
${BROWSERSTACK_USERNAME}    khalidshaikh_Cc8Pao
${BROWSERSTACK_ACCESSKEY}     QqmphGzp7RziVg4Sxaos
*** Test Cases ***
Test 1
    New Page
    go to  https://playwright.dev
    setSessionName  ${test name}
    setSessionStatus    passed
    TakePercySnapshot   Home Page
    
    
