Instance: scenario1-05-technical-question
InstanceOf: Task
Title: "scenario1 05 technical question"
Description: "Example Task Information Request"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-03-01T14:30:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-task"
* identifier.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#task-instance-uuid "Task Instance UUID"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:778e7d2a-8b1c-4d9f-9a2e-1f6c9d8e7b3b"
* partOf = Reference(scenario1-01-initial-submission) "Initial Submission Task"
* status = #requested
* businessStatus = http://hl7.org/fhir/uv/apix/CodeSystem/apix-business-status#clock-stop "Clock Stop"
* intent = #proposal
* priority = #routine
* code = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-code#information-request "Information Request"
* authoredOn = "2025-03-01T14:30:00+01:00"
* lastModified = "2025-03-01T14:30:00+01:00"
* requester = Reference(org-ema-srm-hmed) "European Medicines Agency"
* owner.reference = "org-synthpharma-ag"
* owner.display = "SynthPharma AG"
* input.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document
* input.valueReference = Reference(docref-list-of-questions) "List of Questions (LoQ)"

Instance: org-synthpharma-ag
InstanceOf: Organization
Title: "Inline Instance for scenario1 05 technical question 1"
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
Title: "Inline Instance for scenario1 05 technical question 2"
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


Instance: docref-list-of-questions
InstanceOf: DocumentReference
Title: "docref list of questions"
Description: "Example DocumentReference Cover Letter"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-03-01T14:30:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-documentreference"
* status = #current
* docStatus = #final
* version = "1.0"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#1.0 "Cover Letter"
* date = "2025-03-01T14:30:00+01:00"
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "https://api.ema.example/questionnaires/q-shelf-life-limit.json"
* content.attachment.title = "List of Questions (Questionnaire)"
* content.attachment.size = 12400
* content.attachment.creation = "2025-03-01T14:20:00+01:00"
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:40404040-4040-4040-4040-404040404040"
