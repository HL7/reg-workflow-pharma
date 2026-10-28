Instance: scenario1-06-technical-response
InstanceOf: Task
Title: "scenario1 06 technical response"
Description: "Example Task Response to Information Request"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-03-15T10:00:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-task"
* identifier.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#task-instance-uuid "Task Instance UUID"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:888e7d2a-8b1c-4d9f-9a2e-1f6c9d8e7b3c"
* partOf = Reference(scenario1-05-technical-question) "Technical Question Task"
* status = #in-progress
* businessStatus = http://hl7.org/fhir/uv/apix/CodeSystem/apix-business-status#submitted "Submitted"
* intent = #proposal
* priority = #routine
* code = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-code#response-to-questions "Response to Information Request"
* for = Reference(MedicinalProductDefinition/example-ma) "WonderDrug 50mg Tablets"
* groupIdentifier.use = #official
* groupIdentifier.system = "urn:ietf:rfc:3986"
* groupIdentifier.value = "urn:uuid:workflow-group-id-12345"
* groupIdentifier.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#submission-group-uuid "Submission Group UUID"
* requester = Reference(org-synthpharma-ag) "SynthPharma AG"
* owner.reference = "org-ema-srm-hmed"
* owner.display = "European Medicines Agency"
* authoredOn = "2025-03-15T10:00:00+01:00"
* lastModified = "2025-03-15T10:00:00+01:00"
* output[0].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-output-type#regulatory-document "Regulatory Document"
* output[0].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#cover-letter "Cover Letter"
* output[0].valueReference = Reference(docref-responses-qresponse) "Applicant QuestionnaireResponse"
* output[+].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-output-type#regulatory-document "Regulatory Document"
* output[1].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#stability-data "Stability Data"
* output[1].valueReference = Reference(docref-stability-data-annex) "Annex: Updated Stability Data"

Instance: org-synthpharma-ag
InstanceOf: Organization
Title: "Inline Instance for scenario1 06 technical response 1"
Description: "Example Organization SynthPharma AG"
Usage: #example
* id = "org-synthpharma-ag"
* name = "SynthPharma AG"
* contact[0].address.type = #physical
* contact[0].address.text = "123 Synthetic Research Blvd, 4000 Basel, Switzerland"
* contact[0].address.line = "123 Synthetic Research Blvd"
* contact[0].address.city = "Basel"
* contact[0].address.district = "Basel-Stadt"
* contact[0].address.state = "Basel-Stadt"
* contact[0].address.postalCode = "4000"
* contact[0].address.country = "Switzerland"
* contact.name.text = "Dr. John Doe, Head of Regulatory Affairs"
* contact.telecom.system = #email
* contact.telecom.value = "john.doe@synthpharma.example"
* contact.telecom.use = #work


Instance: org-ema-srm-hmed
InstanceOf: Organization
Title: "Inline Instance for scenario1 06 technical response 2"
Description: "Example Organization European Medicines Agency â€“ Human Medicines Evaluation Division"
Usage: #example
* id = "org-ema-srm-hmed"
* name = "European Medicines Agency â€“ Human Medicines Evaluation Division"
* contact[0].address.type = #physical
* contact[0].address.text = "Domenico Scarlattilaan 6, 1083 HS Amsterdam, Netherlands"
* contact[0].address.line = "Domenico Scarlattilaan 6"
* contact[0].address.city = "Amsterdam"
* contact[0].address.postalCode = "1083 HS"
* contact[0].address.country = "Netherlands"
* contact.name.text = "Scientific and Regulatory Management"
* contact.telecom.system = #email
* contact.telecom.value = "srm@ema.example.eu"
* contact.telecom.use = #work


Instance: docref-responses-qresponse
InstanceOf: DocumentReference
Title: "docref responses qresponse"
Description: "Example DocumentReference Cover Letter / Response"
Usage: #example
* status = #current
* docStatus = #final
* version = "1.0"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#1.0 "Cover Letter / Response"
* relatesTo.code = #appends
* relatesTo.target = Reference(docref-list-of-questions) "List of Questions (LoQ)"
* date = "2025-03-15T10:00:00+01:00"
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "https://api.synthpharma.example/questionnaire-responses/qr123.json"
* content.attachment.title = "Response to Questions (QuestionnaireResponse)"
* content.attachment.size = 18400
* content.attachment.creation = "2025-03-15T09:45:00+01:00"


Instance: docref-stability-data-annex
InstanceOf: DocumentReference
Title: "docref stability data annex"
Description: "Example DocumentReference Stability Data"
Usage: #example
* status = #current
* docStatus = #final
* version = "1.0"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#3.2.P.8.3 "Stability Data"
* date = "2025-03-15T10:00:00+01:00"
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "https://api.synthpharma.example/bundles/submission-123/m3/stability-data-v2.json"
* content.attachment.title = "Updated Stability Data (Transaction Bundle)"
* content.attachment.size = 5800000
* content.attachment.creation = "2025-03-14T11:00:00+01:00"
