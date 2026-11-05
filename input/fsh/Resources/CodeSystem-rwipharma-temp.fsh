CodeSystem: RWIpharmaTEMPCODES
Id: rwi-pharma-temporary
Title: "Temporary and Experimental RWI Pharma Codes"
Description: "This code is temporary as a place-holder. It is used for convenience to identify subscription-notification endpoints in this guide; it may later be proposed to HL7 Terminology (THO), but publication of this guide does not depend on it."
* ^status = #active
* ^caseSensitive = true
* ^experimental = true

// Place-holder; possible future home: https://terminology.hl7.org/CodeSystem-endpoint-connection-type.html
* #rwipharma-subscription-notify "RWI-pharma Subscription Notification Endpoint" "Endpoint intended to receive HL7 FHIR Subscription Notifications"

CodeSystem: RWIpharmaIdentifierTypeCS
Id: rwi-pharma-demo
Title: "RWI Pharma Identifier Type Codes"
Description: "Utility codes specific to this IG that identify RWI Pharma identifier types, used to define identifier slices in the Task and DocumentReference profiles."
* ^status = #active
* ^caseSensitive = true
* ^experimental = false

* #rwipharmataskinstance "RWI Pharma Task Instance ID" "RWI Pharma Required UUID for identifying a Task instance"
* #rwipharmaregulatorprocedureno "RWI Pharma Regulator Procedure Number" "Unique Procedure Number assigned by the regulator to track a specific regulatory activity"
* #docsetid "Document Set Identifier" "The set identifier identifies what document folder this document belongs to"
* #docverid "Document Version Number Identifier" "The document version identifier is the specific document instance identifier"