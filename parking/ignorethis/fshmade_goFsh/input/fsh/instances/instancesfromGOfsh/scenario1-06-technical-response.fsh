Instance: scenario1-06-technical-response
InstanceOf: Task
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-03-15T10:00:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-task"
* identifier.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#task-instance-uuid "Task Instance UUID"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:888e7d2a-8b1c-4d9f-9a2e-1f6c9d8e7b3c"
* partOf = Reference(scenario1-05-technical-question) "Technical Question Task"
* contained[0] = Inline-Instance-for-scenario1-06-technical-response-1
* contained[+] = Inline-Instance-for-scenario1-06-technical-response-2
* contained[+] = docref-responses-qresponse
* contained[+] = docref-stability-data-annex
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
* requestedPerformer.reference.reference = "#org-ema-srm-hmed"
* requestedPerformer.reference.display = "European Medicines Agency"
* authoredOn = "2025-03-15T10:00:00+01:00"
* lastModified = "2025-03-15T10:00:00+01:00"
* output[0].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-output-type#regulatory-document "Regulatory Document"
* output[=].valueReference = Reference(docref-responses-qresponse) "Applicant QuestionnaireResponse"
* output[+].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-output-type#regulatory-document "Regulatory Document"
* output[=].valueReference = Reference(docref-stability-data-annex) "Annex: Updated Stability Data"

Instance: Inline-Instance-for-scenario1-06-technical-response-1
InstanceOf: Organization
Usage: #inline
* id = "org-synthpharma-ag"
* name = "SynthPharma AG"
* address.type = #physical
* address.text = "123 Synthetic Research Blvd, 4000 Basel, Switzerland"
* address.line = "123 Synthetic Research Blvd"
* address.city = "Basel"
* address.district = "Basel-Stadt"
* address.state = "Basel-Stadt"
* address.postalCode = "4000"
* address.country = "Switzerland"
* contact.name.text = "Dr. John Doe, Head of Regulatory Affairs"
* contact.telecom.system = #email
* contact.telecom.value = "john.doe@synthpharma.example"
* contact.telecom.use = #work

Instance: Inline-Instance-for-scenario1-06-technical-response-2
InstanceOf: Organization
Usage: #inline
* id = "org-ema-srm-hmed"
* name = "European Medicines Agency – Human Medicines Evaluation Division"
* address.type = #physical
* address.text = "Domenico Scarlattilaan 6, 1083 HS Amsterdam, Netherlands"
* address.line = "Domenico Scarlattilaan 6"
* address.city = "Amsterdam"
* address.postalCode = "1083 HS"
* address.country = "Netherlands"
* contact.name.text = "Scientific and Regulatory Management"
* contact.telecom.system = #email
* contact.telecom.value = "srm@ema.example.eu"
* contact.telecom.use = #work

Instance: docref-responses-qresponse
InstanceOf: DocumentReference
Usage: #inline
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
Usage: #inline
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