ValueSet: RWIpharmaICSRTaskOutputTypeVS
Id: rwipharma-icsr-task-output-type-vs
Title: "Example Value Set RWI-Pharma ICSR Task Output Types"
Description: "Example Value set for Task.output.type: types of documents and data exchanged as Task outputs in the exchange of Individual Case Safety Reports (ICSR)"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaTaskInputOutputTypeCS where RWI-Pharma-Domain = "ICSR" and RWI-Pharma-Direction = "Output"
