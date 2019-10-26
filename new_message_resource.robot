*** Variables ***

${login} =                                  //*[@onclick="loginApp()"]
${user_name} =                              //*[@name="username"]
${password} =                               //*[@name="password"]
${pass_text} =                              Password
${mail} =                                   zo_mi_test@yahoo.com
${button} =                                 //*[@id="lo_b"]
${staff} =                                  //*[@id="sn_staff"]/span
${add_button} =                             //*[@id="act_primary"]
${name} =                                   (//*[@placeholder="first name"])[1]
${last_name} =                              (//*[@placeholder="last name"])[1]   
${mail} =                                   (//*[@placeholder="email@address.com"])[1]
${save} =                                   //*[@id="_as_save_multiple"]
${time_clock} =                             (//*[@class="primNavQtip__inner"])[3]
${click_in} =                               //*[@class="clockG"]
${click_out} =                              //*[@class="clockOut_help_tag"]
${new_name} =                               Pera
${new_last_name} =                          Peric
${new_mail} =                               zo_mi_test@yahoo.com

*** Keywords ***

I am on humanity web site 

  Open Browser      https://www.humanity.com/       chrome

I click on Login
   Click Element     ${login}
   Wait Until Element Is Visible    ${user_name}   10s
   Click Element      ${user_name}         ${mail}
   Click Element      ${password}          ${pass_text}

I can access to my account
   Click Element     ${button}
I am on staff board
   Wait Until Element Is Visible  ${staff}     10s
   Click Elemet      ${staff}
I click on add button
   Click Element     ${add_button}
I can add new employee
   Click Element     ${name}
   Input Text        ${name}     ${new_name}
   Click Element     ${last_name}
   Input Text        ${last_name}     ${new_last_name}
   Click Element     ${mail}
   Input Text        ${mail}         ${new_mail}
   Click Element     ${save}
I am on time clock board 
   Click Element     ${time_clock}
I click on click in option
   Click Element     ${click_in}
I can clic on click out option
   Click Element     ${click_out}
