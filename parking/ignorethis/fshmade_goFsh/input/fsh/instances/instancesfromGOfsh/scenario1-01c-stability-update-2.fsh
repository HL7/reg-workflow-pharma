Instance: scenario1-01c-stability-update-2
InstanceOf: Task
Usage: #example
* meta.versionId = "3"
* meta.lastUpdated = "2025-12-05T11:00:00+01:00"
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
* lastModified = "2025-12-05T11:00:00+01:00"
* requester = Reference(org-synthpharma-ag) "SynthPharma AG"
* requestedPerformer.reference.reference = "#org-ema-srm-hmed"
* requestedPerformer.reference.display = "European Medicines Agency"
* contained[0] = Inline-Instance-for-scenario1-01c-stability-update-2-1
* contained[+] = Inline-Instance-for-scenario1-01c-stability-update-2-2
* contained[+] = Inline-Instance-for-scenario1-01c-stability-update-2-3
* contained[+] = doc4-v3
* contained[+] = doc6-v3
* input[0].valueReference = Reference(doc1)
* input[+].valueReference = Reference(doc4-v3)
* input[+].valueReference = Reference(doc6-v3)

Instance: Inline-Instance-for-scenario1-01c-stability-update-2-1
InstanceOf: Organization
Usage: #inline
* id = "org-synthpharma-ag"
* name = "SynthPharma AG"
* address.type = #physical
* address.text = "123 Synthetic Research Blvd, 4000 Basel, Switzerland"

Instance: Inline-Instance-for-scenario1-01c-stability-update-2-2
InstanceOf: Organization
Usage: #inline
* id = "org-ema-srm-hmed"
* name = "European Medicines Agency – Human Medicines Evaluation Division"

Instance: Inline-Instance-for-scenario1-01c-stability-update-2-3
InstanceOf: DocumentReference
Usage: #inline
* id = "doc1"
* status = #current
* version = "1.0"
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m1 "Module 1"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#cover-letter "Cover Letter"
* content.attachment.contentType = #application/pdf
* content.attachment.url = "binaries/m1/cover-letter.pdf"
* content.attachment.title = "Cover Letter.pdf"
* content.attachment.creation = "2025-11-15T08:30:00+01:00"

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

Instance: doc4-v3
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* version = "1.2"
* relatesTo.code = #replaces
* relatesTo.target = Reference(doc4-v2)
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m1 "Module 1"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#clean-label "Clean Label"
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "bundles/m1/clean-label-v1.2.json"
* content.attachment.title = "Clean Label v1.2"
* content.attachment.creation = "2025-12-04T10:00:00+01:00"

Instance: doc6-v3
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* version = "2.0"
* relatesTo.code = #replaces
* relatesTo.target = Reference(doc6-v2)
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m3 "Module 3"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#cmc-stability-summary "Stability Summary"
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "bundles/m3/stability-summary-v2.0.json"
* content.attachment.title = "Stability Summary v2.0 (Final)"
* content.attachment.creation = "2025-12-05T09:00:00+01:00"

