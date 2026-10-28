ValueSet: RWIpharmaICSRTaskInputTypeVS
Id: rwipharma-icsr-task-input-type-vs
Title: "Example Value Set RWI-Pharma ICSR Task Input Types"
Description: "Example Value set for Task.input.type: types of documents and data exchanged as Task inputs in the exchange of Individual Case Safety Reports (ICSR)"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaTaskInputOutputTypeCS where RWI-Pharma-Domain = "ICSR" and RWI-Pharma-Direction = "Input"
