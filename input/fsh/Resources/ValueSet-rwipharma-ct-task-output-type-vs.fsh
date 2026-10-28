ValueSet: RWIpharmaCTTaskOutputTypeVS
Id: rwipharma-ct-task-output-type-vs
Title: "Example Value Set RWI-Pharma Clinical Trial Task Output Types"
Description: "Example Value set for Task.output.type: types of documents and data exchanged as Task outputs in the regulatory interactions for clinical trials of human biopharmaceutical products"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaTaskInputOutputTypeCS where RWI-Pharma-Domain = "Clinical Trial" and RWI-Pharma-Direction = "Output"
