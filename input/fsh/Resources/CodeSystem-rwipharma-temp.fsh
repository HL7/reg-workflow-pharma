CodeSystem: RWIpharmaTEMPCODES
Id: rwi-pharma-temp
Title: "Temporary and Experimental RWI Pharma Codes"
Description: "These codes are intended to be added to the appropriate HL7 Terminology code system"
* ^status = #active
* ^caseSensitive = true
* ^experimental = false

// for https://terminology.hl7.org/7.1.0/en/CodeSystem-endpoint-connection-type.html
* #hl7-fhir-subscription-notify "HL7 FHIR Subscription Notification Endpoint" "Endpoint intended to receive HL7 FHIR Subscription Notifications"

CodeSystem: RWIpharmaDEMOCODES
Id: rwi-pharma-demo
Title: "Example RWI Pharma Identifier Type Codes"
Description: "These codes are intended to be used to indicate specific RWI Pharma Identifier types"
* ^status = #active
* ^caseSensitive = true
* ^experimental = false

* #rwipharmataskinstance "RWI Pharma Task Instance ID" "RWI Pharma Required UUID for identifying a Task instance"
* #rwipharmaregulatorprocedureno "RWI Pharma Regulator Procedure Number" "Unique Procedure Number assigned by the regulator to track a specific regulatory activity"
* #docsetid "Document Set Identifier" "The set identifier identifiys what document folder this document belongs too"
* #docverid "Document Version Number Identifier" "The document version identifier is the specific document instance identifier"