ValueSet: RWIpharmaDocumentTypeVS
Id: rwipharma-document-type-vs
Title: "Example Value Set RWI-Pharma Document Types"
Description: "Example Value set for DocumentReference.type: all RWI-pharma input and output types, plus CTD section codes"

* ^status = #active
* ^experimental = false

* include codes from system RWIpharmaTaskInputOutputTypeExample
* include codes from valueset EXAMPLECTDSectionVS
