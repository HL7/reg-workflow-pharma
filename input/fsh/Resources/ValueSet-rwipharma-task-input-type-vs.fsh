ValueSet: RWIpharmaTaskInputTypeVS
Id: rwipharma-task-input-type-vs
Title: "Example Value Set RWI-Pharma Task Input Types"
Description: "Example Value set for Task.input.type: all RWI-pharma document and data types used as Task inputs across all domains, plus CTD section codes"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaTaskInputOutputTypeExample where RWI-Pharma-Direction = "Input"
* include codes from valueset EXAMPLECTDSectionVS
