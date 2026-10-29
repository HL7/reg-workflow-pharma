ValueSet: RWIpharmaTaskOutputTypeVS
Id: rwipharma-task-output-type-vs
Title: "Example Value Set RWI-Pharma Task Output Types"
Description: "Example Value set for Task.output.type: all RWI-pharma document and data types used as Task outputs across all domains, plus CTD section codes"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaTaskInputOutputTypeCS where RWI-Pharma-Direction = "Output"
* include codes from valueset EXAMPLECTDSectionVS
