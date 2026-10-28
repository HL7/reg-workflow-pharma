ValueSet: RWIpharmaMATaskCodeVS
Id: rwipharma-ma-task-code-vs
Title: "Example Value Set RWI-Pharma Marketing Authorization Task Codes"
Description: "Example Value set for Tasks for the marketing authorization lifecycle of a human biopharmaceutical product"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaTaskCodeCS where concept descendent-of #market-authorization

