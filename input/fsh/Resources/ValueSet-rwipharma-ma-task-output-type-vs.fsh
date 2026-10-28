ValueSet: RWIpharmaMATaskOutputTypeVS
Id: rwipharma-ma-task-output-type-vs
Title: "Example Value Set RWI-Pharma Market Authorization Task Output Types"
Description: "Example Value set for Task.output.type: types of documents and data exchanged as Task outputs in the marketing authorization lifecycle of human biopharmaceutical products"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaTaskInputOutputTypeCS where RWI-Pharma-Domain = "Market Authorization" and RWI-Pharma-Direction = "Output"
