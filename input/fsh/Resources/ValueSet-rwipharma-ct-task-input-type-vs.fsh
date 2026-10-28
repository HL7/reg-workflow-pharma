ValueSet: RWIpharmaCTTaskInputTypeVS
Id: rwipharma-ct-task-input-type-vs
Title: "Example Value Set RWI-Pharma Clinical Trial Task Input Types"
Description: "Example Value set for Task.input.type: types of documents and data exchanged as Task inputs in the regulatory interactions for clinical trials of human biopharmaceutical products"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaTaskInputOutputTypeCS where RWI-Pharma-Domain = "Clinical Trial" and RWI-Pharma-Direction = "Input"
