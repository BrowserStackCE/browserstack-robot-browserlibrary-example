*** Settings ***
Documentation    Test Suite
Library          Browser    jsextension=${CURDIR}/bstack_module/module.js


*** Variables ***
&{desiredCapabilities}      os=Windows
...                         os_version=10
...                         browser=playwright-firefox
...                         browserstack.username=${BROWSERSTACK_USERNAME}
...                         browserstack.accessKey=${BROWSERSTACK_ACCESSKEY}
...                         client.playwrightVersion=1.22.2

*** Keywords ***
Setup Browserstack
    ${BSENCODEDCAPS}            Evaluate    urllib.parse.quote( json.dumps(${desiredCapabilities}) )
    Connect To Browser          wss://cdp.browserstack.com/playwright?caps=${BSENCODEDCAPS}
    

End web test
    Browser.Close Browser