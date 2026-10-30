ValueSet: RWIpharmaCTBusinessStatusVS
Id: rwipharma-ct-business-status-vs
Title: "Example Value Set RWI-Pharma Clinical Trial Business Status"
Description: "Example Value set for Task business statuses in the regulatory interactions for clinical trials of human biopharmaceutical products"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaBusinessStatusExample where RWI-Pharma-Domain = "Clinical Trial"
