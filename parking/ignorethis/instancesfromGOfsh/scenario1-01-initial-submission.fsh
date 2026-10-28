Instance: scenario1-01-initial-submission
InstanceOf: Task
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-11-15T09:00:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-task"
* identifier.use = #official
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:workflow-step1-instance"
* identifier.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#task-instance-uuid "Task Instance UUID"
* groupIdentifier.use = #official
* groupIdentifier.system = "urn:ietf:rfc:3986"
* groupIdentifier.value = "urn:uuid:workflow-group-id-12345"
* groupIdentifier.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#submission-group-uuid "Submission Group UUID"
* status = #requested
* businessStatus = http://hl7.org/fhir/uv/apix/CodeSystem/apix-business-status#submitted "Submitted"
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-type#variation-type-ib "Type IB Variation"
* authoredOn = "2025-11-15T09:00:00+01:00"
* lastModified = "2025-11-15T09:00:00+01:00"
* requester = Reference(org-synthpharma-ag) "SynthPharma AG"
* requestedPerformer.reference.reference = "#org-ema-srm-hmed"
* requestedPerformer.reference.display = "European Medicines Agency"
* contained[0] = Inline-Instance-for-scenario1-01-initial-submission-1
* contained[+] = Inline-Instance-for-scenario1-01-initial-submission-2
* contained[+] = doc1
* contained[+] = doc2
* contained[+] = doc3
* contained[+] = doc4
* contained[+] = doc5
* contained[+] = doc6
* contained[+] = doc7
* contained[+] = doc8
* input[0].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[=].valueReference = Reference(doc1)
* input[+].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[=].valueReference = Reference(doc2)
* input[+].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[=].valueReference = Reference(doc3)
* input[+].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[=].valueReference = Reference(doc4)
* input[+].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[=].valueReference = Reference(doc5)
* input[+].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[=].valueReference = Reference(doc6)
* input[+].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[=].valueReference = Reference(doc7)
* input[+].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[=].valueReference = Reference(doc8)

Instance: Inline-Instance-for-scenario1-01-initial-submission-1
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

Instance: Inline-Instance-for-scenario1-01-initial-submission-2
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

Instance: doc1
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* docStatus = #final
* version = "1.0"
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m1 "Module 1"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#cover-letter "Cover Letter"
* content.attachment.contentType = #application/pdf
* content.attachment.url = "https://api.synthpharma.example/binaries/submission-123/m1/cover-letter.pdf"
* content.attachment.title = "Cover Letter.pdf"
* content.attachment.size = 1250000
* content.attachment.creation = "2025-11-15T08:30:00+01:00"

Instance: doc2
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* docStatus = #final
* version = "1.0"
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m1 "Module 1"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#application-form "Application Form"
* content.attachment.contentType = #application/pdf
* content.attachment.url = "https://api.synthpharma.example/binaries/submission-123/m1/app-form.pdf"
* content.attachment.title = "Application Form.pdf"
* content.attachment.size = 3400000
* content.attachment.creation = "2025-11-15T08:35:00+01:00"

Instance: doc3
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* docStatus = #final
* version = "1.0"
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m1 "Module 1"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#annotated-label "Annotated Label"
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "https://api.synthpharma.example/bundles/submission-123/m1/annotated-label.json"
* content.attachment.title = "Annotated Label (Bundle)"
* content.attachment.size = 45000
* content.attachment.creation = "2025-11-14T16:00:00+01:00"

Instance: doc4
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* docStatus = #final
* version = "1.0"
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m1 "Module 1"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#clean-label "Clean Label"
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "https://api.synthpharma.example/bundles/submission-123/m1/clean-label.json"
* content.attachment.title = "Clean Label (Bundle)"
* content.attachment.size = 42000
* content.attachment.creation = "2025-11-14T16:05:00+01:00"

Instance: doc5
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* docStatus = #final
* version = "1.0"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#pack-mockup "Pack Mockup"
* content.attachment.contentType = #text/html
* content.attachment.url = "https://api.synthpharma.example/binaries/submission-123/m1/mockup.html"
* content.attachment.title = "Pack Mockup.html"
* content.attachment.size = 890000
* content.attachment.creation = "2025-11-14T10:00:00+01:00"

Instance: doc6
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* docStatus = #final
* version = "1.0"
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m3 "Module 3"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#cmc-stability-summary "Stability Summary"
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "https://api.synthpharma.example/bundles/submission-123/m3/stability-summary.json"
* content.attachment.title = "CMC Doc 1 - Summary (Transaction Bundle)"
* content.attachment.size = 156000
* content.attachment.creation = "2025-11-12T14:30:00+01:00"

Instance: doc7
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* docStatus = #final
* version = "1.0"
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m3 "Module 3"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#cmc-stability-data "Stability Data"
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "https://api.synthpharma.example/bundles/submission-123/m3/stability-data.json"
* content.attachment.title = "CMC Doc 2 - Data (Transaction Bundle)"
* content.attachment.size = 5600000
* content.attachment.creation = "2025-11-12T14:35:00+01:00"

Instance: doc8
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* docStatus = #final
* version = "1.0"
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m3 "Module 3"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#cmc-stability-commitment "Stability Commitment"
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "https://api.synthpharma.example/bundles/submission-123/m3/stability-commitment.json"
* content.attachment.title = "CMC Doc 3 - Commitment (Transaction Bundle)"
* content.attachment.size = 24000
* content.attachment.creation = "2025-11-12T14:40:00+01:00"