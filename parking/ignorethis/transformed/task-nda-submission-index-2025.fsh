Instance: task-nda-submission-index-2025
InstanceOf: Task
Title: "task nda submission index 2025"
Description: "Example Task New Drug Application (NDA)"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-12-20T14:15:00Z"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-task"
* identifier.use = #official
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8e4d2a-8b1c-4d9f-9a2e-nda-example"
* identifier.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#task-instance-uuid "Task Instance UUID"
* status = #requested
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-type#new-drug-application "New Drug Application (NDA)"
* authoredOn = "2025-12-20T14:15:00Z"
* lastModified = "2025-12-20T14:15:00Z"
* requester = Reference(org-synthpharma-ag)
* owner = Reference(org-ema)
* input[0].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#cover-letter "Cover Letter"
* input[0].valueReference = Reference(docref-m1-cover)
* input[1].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#stability-data "Stability Data"
* input[1].valueReference = Reference(docref-m3-stability-data)
* input[2].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[2].valueReference = Reference(docref-m5-clinical-study)

Instance: org-synthpharma-ag
InstanceOf: Organization
Title: "org synthpharma ag"
Description: "Example Organization SynthPharma AG"
Usage: #example
* name = "SynthPharma AG"
* contact[0].address.text = "123 Synthetic Research Blvd, 4000 Basel, Switzerland"


Instance: org-ema
InstanceOf: Organization
Title: "org ema"
Description: "Example Organization European Medicines Agency"
Usage: #example
* name = "European Medicines Agency"
* contact[0].address.text = "Domenico Scarlattilaan 6, 1083 HS Amsterdam, Netherlands"


Instance: docref-m1-cover
InstanceOf: DocumentReference
Title: "docref m1 cover"
Description: "Example DocumentReference Cover Letter"
Usage: #example
* status = #current
* docStatus = #final
* version = "1.0"
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m1 "Module 1"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#1.0 "Cover Letter"
* content.attachment.contentType = #application/pdf
* content.attachment.url = "https://api.synthpharma.example/binaries/nda-12345/m1/cover-letter.pdf"
* content.attachment.title = "Cover Letter.pdf"
* content.attachment.size = 1250000
* content.attachment.creation = "2025-12-20T14:00:00Z"


Instance: docref-m3-stability-data
InstanceOf: DocumentReference
Title: "docref m3 stability data"
Description: "Example DocumentReference Stability"
Usage: #example
* status = #current
* docStatus = #final
* version = "1.0"
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m3 "Module 3"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#3.2.P.8 "Stability"
* content.attachment.contentType = #application/zip
* content.attachment.url = "https://api.synthpharma.example/binaries/nda-12345/m3/stability-package.zip"
* content.attachment.title = "Stability Data Package (60GB Referenced)"
* content.attachment.size = 64424509440
* content.attachment.creation = "2025-12-15T10:00:00Z"


Instance: docref-m5-clinical-study
InstanceOf: DocumentReference
Title: "docref m5 clinical study"
Description: "Example DocumentReference Reports of Efficacy and Safety Studies"
Usage: #example
* status = #current
* docStatus = #final
* version = "1.0"
* category = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-module#m5 "Module 5"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#5.3.5 "Reports of Efficacy and Safety Studies"
* content.attachment.contentType = #application/pdf
* content.attachment.url = "https://api.synthpharma.example/binaries/nda-12345/m5/study-report-001.pdf"
* content.attachment.title = "Clinical Study Report - Phase III.pdf"
* content.attachment.size = 45000000
* content.attachment.creation = "2025-12-18T09:00:00Z"
