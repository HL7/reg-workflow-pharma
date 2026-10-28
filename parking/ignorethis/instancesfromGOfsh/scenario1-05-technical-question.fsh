Instance: scenario1-05-technical-question
InstanceOf: Task
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-03-01T14:30:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-task"
* identifier.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#task-instance-uuid "Task Instance UUID"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:778e7d2a-8b1c-4d9f-9a2e-1f6c9d8e7b3b"
* partOf = Reference(scenario1-01-initial-submission) "Initial Submission Task"
* contained[0] = Inline-Instance-for-scenario1-05-technical-question-1
* contained[+] = Inline-Instance-for-scenario1-05-technical-question-2
* contained[+] = docref-list-of-questions
* status = #requested
* businessStatus = http://hl7.org/fhir/uv/apix/CodeSystem/apix-business-status#clock-stop "Clock Stop"
* intent = #proposal
* priority = #routine
* code = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-code#information-request "Information Request"
* authoredOn = "2025-03-01T14:30:00+01:00"
* lastModified = "2025-03-01T14:30:00+01:00"
* requester = Reference(org-ema-srm-hmed) "European Medicines Agency"
* requestedPerformer.reference.reference = "#org-synthpharma-ag"
* requestedPerformer.reference.display = "SynthPharma AG"
* input.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document
* input.valueReference = Reference(docref-list-of-questions) "List of Questions (LoQ)"

Instance: Inline-Instance-for-scenario1-05-technical-question-1
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

Instance: Inline-Instance-for-scenario1-05-technical-question-2
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

Instance: docref-list-of-questions
InstanceOf: DocumentReference
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2025-03-01T14:30:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-documentreference"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:uuid:40404040-4040-4040-4040-404040404040"
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