ValueSet: RWIpharmaMATaskInputTypeVS
Id: rwipharma-ma-task-input-type-vs
Title: "Example Value Set RWI-Pharma Market Authorization Task Input Types"
Description: "Example Value set for Task.input.type: types of documents and data exchanged as Task inputs in the marketing authorization lifecycle of human biopharmaceutical products"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaTaskInputOutputTypeCS where RWI-Pharma-Domain = "Market Authorization" and RWI-Pharma-Direction = "Input"
