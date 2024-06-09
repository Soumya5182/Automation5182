*** Settings ***
Library     SeleniumLibrary
Library     ../TestData/readdata.py
*** Keywords ***
read the number of rows
    [Arguments]     ${sheetname}
    ${returnvalue}=     fetch_number_of_rows    ${sheetname}
    [Return]    ${returnvalue}
read the excel data
    [Arguments]     ${sheetname}    ${row_number}       ${cell_number}
    ${Read_excel_data}=     fetch_cell_data     ${sheetname}   ${row_number}     ${cell_number}
    [Return]  ${Read_excel_data
	click element  xpath://span[text()=‘${File_name}’]