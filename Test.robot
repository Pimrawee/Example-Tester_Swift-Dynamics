*** Settings ***
Library   Selenium2Library


*** Variables ***
${Browser}       Chrome
${url}           https://codenboxautomationlab.com/practice/


*** Keywords ***
Open Web
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
    Sleep    5 
    
Select Radio2
    Click Element    xPath=//*[@id="radio-btn-example"]/fieldset/label[2]/input
    Sleep    5

Search with the word Thai
    Input Text       id=autocomplete    Thai
    #Click Element    xPath=//*[@id="ui-id-1"]/li
    #Select From List By Label    xPath=//*[@id="autocomplete"]    Thailand
    Sleep    5

Select API in Dropdown
    Click Element                 xPath=//*[@id="dropdown-class-example"]    
    Select From List By Label     xPath=//*[@id="dropdown-class-example"]    API
    Sleep    5
    
Select Checkbox1 and 3
    Click Element    xPath=//*[@id="checkBoxOption1"]
    Click Element    xPath=//*[@id="checkBoxOption3"]
    Sleep    5

Mouse Hover
    Mouse Over        xPath=//*[@id="mousehover"]
    Sleep    5


*** Test Cases ***
01 เข้าสู่เว็บไซต์
    Open Web

02 Radio Button Example
    Select Radio2
    
03 Dynamic Dropdown Example
    Search with the word Thai
    
04 Static Dropdown Example
    Select API in Dropdown

05 Checkbox Example
    Select Checkbox1 and 3
    
06 Mouse Hover Example
    Mouse Hover




