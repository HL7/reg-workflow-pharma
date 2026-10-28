ValueSet: RWIpharmaMABusinessStatusVS
Id: rwipharma-ma-business-status-vs
Title: "Example Value Set RWI-Pharma Market Authorization Business Status"
Description: "Example Value set for Task business statuses in the marketing authorization lifecycle of human biopharmaceutical products"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaBusinessStatusCS where RWI-Pharma-Domain = "Market Authorization"
