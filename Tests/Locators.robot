*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${BROWSER}  ie
*** Test Cases ***
Should be able to search for product
    open browser  http://www.amazon.com  ${BROWSER}
    sleep  3s
    input text  id=twotabsearchtextbox Ferrari 458
    sleep  3s
    click button  css=#nav-search > form > div.nav-right > div > input
    click link  xpath=//*[@id="pdagDesktopSparkle"]/div/div[1]/div[2]/div/div[2]/a
    close browser
*** Keywords ***
