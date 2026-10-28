Instance: scenario1-07-final-decision
InstanceOf: Task
Usage: #example
* meta.versionId = "3"
* meta.lastUpdated = "2025-04-20T09:00:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-task"
* identifier.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#task-instance-uuid "Task Instance UUID"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:999e7d2a-8b1c-4d9f-9a2e-1f6c9d8e7b3d"
* partOf = Reference(scenario1-01-initial-submission) "Initial Submission Task"
* contained[0] = Inline-Instance-for-scenario1-07-final-decision-1
* contained[+] = Inline-Instance-for-scenario1-07-final-decision-2
* contained[+] = docref-approval-letter
* contained[+] = docref-assessment-report
* status = #completed
* businessStatus = http://hl7.org/fhir/uv/apix/CodeSystem/apix-business-status#approved "Approved"
* intent = #proposal
* priority = #routine
* code = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-code#approval "Approval Letter / Positive Decision"
* for = Reference(MedicinalProductDefinition/example-ma) "WonderDrug 50mg Tablets"
* groupIdentifier.use = #official
* groupIdentifier.system = "urn:ietf:rfc:3986"
* groupIdentifier.value = "urn:uuid:workflow-group-id-12345"
* groupIdentifier.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#submission-group-uuid "Submission Group UUID"
* requester = Reference(org-ema-srm-hmed) "European Medicines Agency"
* requestedPerformer.reference.reference = "#org-synthpharma-ag"
* requestedPerformer.reference.display = "SynthPharma AG"
* authoredOn = "2025-04-20T09:00:00+01:00"
* lastModified = "2025-04-20T09:00:00+01:00"
* output[0].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-output-type#regulatory-document
* output[=].valueReference = Reference(docref-approval-letter) "Approval Letter"
* output[+].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-output-type#regulatory-document
* output[=].valueReference = Reference(docref-assessment-report) "Final Assessment Report"

Instance: Inline-Instance-for-scenario1-07-final-decision-1
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

Instance: Inline-Instance-for-scenario1-07-final-decision-2
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

Instance: docref-approval-letter
InstanceOf: DocumentReference
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2025-04-20T09:00:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-documentreference"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:uuid:70707070-7070-7070-7070-707070707070"
* status = #current
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#1.0 "Cover Letter"
* date = "2025-04-20T09:00:00+01:00"
* content.attachment.contentType = #application/pdf
* content.attachment.title = "approval-letter.pdf"
* content.attachment.creation = "2025-04-20T09:00:00+01:00"
* content.attachment.data = "VGhpcyBpcyBhIHBsYWNlaG9sZGVyIGRvY3VtZW50IGZvciB2YWxpZGF0aW9uIHB1cnBvc2VzLgo="

Instance: docref-assessment-report
InstanceOf: DocumentReference
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2025-04-20T09:00:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-documentreference"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:uuid:80808080-8080-8080-8080-808080808080"
* status = #current
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#1.0 "Cover Letter"
* date = "2025-04-20T09:00:00+01:00"
* content.attachment.contentType = #application/pdf
* content.attachment.title = "final-assessment-report.pdf"
* content.attachment.creation = "2025-04-20T09:00:00+01:00"
* content.attachment.data = "VGhpcyBpcyBhIHBsYWNlaG9sZGVyIGRvY3VtZW50IGZvciB2YWxpZGF0aW9uIHB1cnBvc2VzLgo="