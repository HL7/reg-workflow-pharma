ValueSet: RWIpharmaICSRBusinessStatusVS
Id: rwipharma-icsr-business-status-vs
Title: "Example Value Set RWI-Pharma ICSR Business Status"
Description: "Example Value set for Task business statuses in the exchange of Individual Case Safety Reports (ICSR)"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaBusinessStatusCS where RWI-Pharma-Domain = "ICSR"
