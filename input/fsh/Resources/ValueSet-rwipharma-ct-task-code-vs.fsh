ValueSet: RWIpharmaCTTaskCodeVS
Id: rwipharma-ct-task-code-vs
Title: "Example Value Set RWI-Pharma Clinical Trial Task Codes"
Description: "Example Value set for Tasks for the regulatory interactions for clinical trials of human biopharmaceutical products"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaTaskCodeCS where concept descendent-of #clinical-trial

* include codes from system RWIpharmaTaskCodeCS where code = #withdrawal "Withdrawal by Applicant"
* include codes from system RWIpharmaTaskCodeCS where code = #information-request "List of Questions / Information Request"
