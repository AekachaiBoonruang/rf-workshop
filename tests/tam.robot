*** Settings ***
Library  SeleniumLibrary
Test Setup  Visit youtube Website
Test Teardown  Close Browser

*** Variables ***
${HOMEPAGE}  http://www.youtube.com
${BROWSER}  chrome

*** Keywords ***
Visit youtube Website
  Open Browser  ${HOMEPAGE}  ${BROWSER}
Type Text For Search
  Input Text  name:search_query   Something in the way
Press Enter For Search
  Press Keys  name:search_query   ENTER
Click first video
  Click Element   xpath://*[@id="contents"]/ytd-video-renderer[1]
Verify text and url
  Wait Until Page Contains  Nirvana - Something In The Way (Audio)
  Location Should Be    https://www.youtube.com/watch?v=4VxdufqB9zg

*** Test Cases ***
Search youtube
  Type Text For Search
  Press Enter For Search
  Sleep   1
  Click first video
  Verify text and url
  Sleep   1