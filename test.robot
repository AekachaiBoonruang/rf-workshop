*** Settings ***
Library  SeleniumLibrary
Test Setup  Visit Google Website
Test Teardown  Close Browser

*** Variables ***
${HOMEPAGE}  http://www.google.com
${BROWSER}  chrome

*** Keywords ***
Visit Google Website
  Open Browser  ${HOMEPAGE}  ${BROWSER}
Type Text For Search
  Input Text  name:q  Aekachai Boonruang
Press Enter For Search
  Press Keys  name:q  ENTER
Verify Facebook Is Displayed
  Wait Until Page Contains  Aekachai Boonruang | Facebook

*** Test Cases ***
Search google by name
  Type Text For Search
  Press Enter For Search
  Verify Facebook Is Displayed