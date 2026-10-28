Instance: scenario1-01b-stability-update-1
InstanceOf: Task
Title: "scenario1 01b stability update 1"
Description: "Example Task Type IB Variation"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2025-11-20T10:00:00+01:00"
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
* lastModified = "2025-11-20T10:00:00+01:00"
* requester = Reference(org-synthpharma-ag) "SynthPharma AG"
* owner.reference = "org-ema-srm-hmed"
* owner.display = "European Medicines Agency"
* input[0].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#cover-letter "Cover Letter"
* input[0].valueReference = Reference(doc1)
* input[1].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[1].valueReference = Reference(doc4-v2)
* input[2].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#stability-data "Stability Data"
* input[2].valueReference = Reference(doc6-v2)

Instance: org-synthpharma-ag
InstanceOf: Organization
Title: "Inline Instance for scenario1 01b stability update 1 1"
Description: "Example Organization SynthPharma AG"
Usage: #example
* id = "org-synthpharma-ag"
* name = "SynthPharma AG"
* contact[0].address.type = #physical
* contact[0].address.text = "123 Synthetic Research Blvd, 4000 Basel, Switzerland"


Instance: org-ema-srm-hmed
InstanceOf: Organization
Title: "Inline Instance for scenario1 01b stability update 1 2"
Description: "Example Organization European Medicines Agency â€“ Human Medicines Evaluation Division"
Usage: #example
* id = "org-ema-srm-hmed"
* name = "European Medicines Agency â€“ Human Medicines Evaluation Division"


Instance: doc1
InstanceOf: DocumentReference
Title: "Inline Instance for scenario1 01b stability update 1 3"
Description: "Example DocumentReference Cover Letter"
Usage: #example
* id = "doc1"
* status = #current
* version = "1.0"
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m1 "Module 1"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#cover-letter "Cover Letter"
* content.attachment.contentType = #application/pdf
* content.attachment.url = "binaries/m1/cover-letter.pdf"
* content.attachment.title = "Cover Letter.pdf"
* content.attachment.creation = "2025-11-15T08:30:00+01:00"


Instance: doc4-v2
InstanceOf: DocumentReference
Title: "doc4 v2"
Description: "Example DocumentReference Clean Label"
Usage: #example
* status = #current
* version = "1.1"
* relatesTo.code = #replaces
* relatesTo.target = Reference(doc4)
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m1 "Module 1"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#clean-label "Clean Label"
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "bundles/m1/clean-label-v1.1.json"
* content.attachment.title = "Clean Label v1.1"
* content.attachment.creation = "2025-11-19T14:00:00+01:00"


Instance: doc6-v2
InstanceOf: DocumentReference
Title: "doc6 v2"
Description: "Example DocumentReference Stability Summary"
Usage: #example
* status = #current
* version = "1.1"
* relatesTo.code = #replaces
* relatesTo.target = Reference(doc6)
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m3 "Module 3"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#cmc-stability-summary "Stability Summary"
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "bundles/m3/stability-summary-v1.1.json"
* content.attachment.title = "Stability Summary v1.1"
* content.attachment.creation = "2025-11-18T16:00:00+01:00"
