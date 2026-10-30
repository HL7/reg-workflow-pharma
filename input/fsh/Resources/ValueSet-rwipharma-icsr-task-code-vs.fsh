ValueSet: RWIpharmaICSRTaskCodeVS
Id: rwipharma-icsr-task-code-vs
Title: "Example Value Set RWI-Pharma ICSR Task Codes"
Description: "Example Value set for Tasks for ICSR"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaTaskCodeExample where concept descendent-of #icsr-flow
