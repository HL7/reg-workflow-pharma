Instance: scenario1-02-validation
InstanceOf: Task
Title: "scenario1 02 validation"
Description: "Example Task Type IB Variation"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2025-11-20T14:30:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-task"
* basedOn = Reference(scenario1-01-initial-submission)
* identifier[0].use = #official
* identifier[=].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:workflow-step1-instance"
* identifier[=].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#task-instance-uuid "Task Instance UUID"
* identifier[+].use = #official
* identifier[=].system = "http://ema.europa.eu/procedure-number"
* identifier[=].value = "EMEA/H/C/001234/IB/0025"
* identifier[=].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#regulator-procedure-number "Regulator Procedure Number"
* groupIdentifier.use = #official
* groupIdentifier.system = "urn:ietf:rfc:3986"
* groupIdentifier.value = "urn:uuid:workflow-group-id-12345"
* groupIdentifier.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#submission-group-uuid "Submission Group UUID"
* status = #accepted
* businessStatus = http://hl7.org/fhir/uv/apix/CodeSystem/apix-business-status#validation-successful "Validation Successful"
* intent = #order
* priority = #routine
* code = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-type#variation-type-ib "Type IB Variation"
* authoredOn = "2025-11-15T09:00:00+01:00"
* lastModified = "2025-11-20T14:30:00+01:00"
* requester = Reference(org-synthpharma-ag) "SynthPharma AG"
* owner.reference = "org-ema-srm-hmed"
* owner.display = "European Medicines Agency"
* input[0].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#cover-letter "Cover Letter"
* input[0].valueReference = Reference(doc1)
* input[1].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[1].valueReference = Reference(doc2)
* input[2].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[2].valueReference = Reference(doc3)
* input[3].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[3].valueReference = Reference(doc4)
* input[4].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[4].valueReference = Reference(doc5)
* input[5].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#stability-data "Stability Data"
* input[5].valueReference = Reference(doc6)
* input[6].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#stability-data "Stability Data"
* input[6].valueReference = Reference(doc7)
* input[7].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#stability-data "Stability Data"
* input[7].valueReference = Reference(doc8)
* input[8].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#stability-data "Stability Data"
* input[8].valueReference = Reference(doc9)
* input[9].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#stability-data "Stability Data"
* input[9].valueReference = Reference(doc10)
* output[0].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* output[0].valueReference = Reference(output-ack)
* output[1].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* output[1].valueReference = Reference(output-validation)

Instance: org-synthpharma-ag
InstanceOf: Organization
Title: "Inline Instance for scenario1 02 validation 1"
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
Title: "Inline Instance for scenario1 02 validation 2"
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


Instance: doc1
InstanceOf: DocumentReference
Title: "Inline Instance for scenario1 02 validation 3"
Description: "Example DocumentReference"
Usage: #example
* status = #current
* id = "doc1"
* type = #cover-letter "Cover Letter"
* content.attachment.title = "Cover Letter.pdf"


Instance: doc2
InstanceOf: DocumentReference
Title: "Inline Instance for scenario1 02 validation 4"
Description: "Example DocumentReference"
Usage: #example
* status = #current
* id = "doc2"
* type = #application-form "Application Form"
* content.attachment.title = "Application Form.pdf"


Instance: doc3
InstanceOf: DocumentReference
Title: "Inline Instance for scenario1 02 validation 5"
Description: "Example DocumentReference"
Usage: #example
* status = #current
* id = "doc3"
* type = #annotated-label "Annotated Label"
* content.attachment.title = "Annotated Label.pdf"


Instance: doc4
InstanceOf: DocumentReference
Title: "Inline Instance for scenario1 02 validation 6"
Description: "Example DocumentReference"
Usage: #example
* status = #current
* id = "doc4"
* type = #clean-label "Clean Label"
* content.attachment.title = "Clean Label.pdf"


Instance: doc5
InstanceOf: DocumentReference
Title: "Inline Instance for scenario1 02 validation 7"
Description: "Example DocumentReference"
Usage: #example
* status = #current
* id = "doc5"
* type = #pack-mockup "Pack Mockup"
* content.attachment.title = "Pack Mockup.pdf"


Instance: doc6
InstanceOf: DocumentReference
Title: "Inline Instance for scenario1 02 validation 8"
Description: "Example DocumentReference"
Usage: #example
* status = #current
* id = "doc6"
* type = #cmc-stability-summary "Stability Summary"
* content.attachment.title = "CMC Doc 1 - Summary.pdf"


Instance: doc7
InstanceOf: DocumentReference
Title: "Inline Instance for scenario1 02 validation 9"
Description: "Example DocumentReference"
Usage: #example
* status = #current
* id = "doc7"
* type = #cmc-stability-data "Stability Data"
* content.attachment.title = "CMC Doc 2 - Data.pdf"


Instance: doc8
InstanceOf: DocumentReference
Title: "Inline Instance for scenario1 02 validation 10"
Description: "Example DocumentReference"
Usage: #example
* status = #current
* id = "doc8"
* type = #cmc-stability-commitment "Stability Commitment"
* content.attachment.title = "CMC Doc 3 - Commitment.pdf"


Instance: doc9
InstanceOf: DocumentReference
Title: "doc9"
Description: "Example DocumentReference"
Usage: #example
* status = #current
* type = #cmc-ds-stability-summary "DS Stability Summary"
* content.attachment.title = "CMC Doc 4 - DS Summary.pdf"


Instance: doc10
InstanceOf: DocumentReference
Title: "doc10"
Description: "Example DocumentReference"
Usage: #example
* status = #current
* type = #cmc-ds-stability-data "DS Stability Data"
* content.attachment.title = "CMC Doc 5 - DS Data.pdf"


Instance: output-ack
InstanceOf: DocumentReference
Title: "output ack"
Description: "Example DocumentReference Acknowledgement of Receipt"
Usage: #example
* status = #current
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#acknowledgement-receipt "Acknowledgement of Receipt"
* content.attachment.title = "Acknowledgement_Letter.pdf"
* content.attachment.contentType = #application/pdf


Instance: output-validation
InstanceOf: DocumentReference
Title: "output validation"
Description: "Example DocumentReference Validation Report"
Usage: #example
* status = #current
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#validation-report "Validation Report"
* content.attachment.title = "Validation_Report.pdf"
* content.attachment.contentType = #application/pdf
