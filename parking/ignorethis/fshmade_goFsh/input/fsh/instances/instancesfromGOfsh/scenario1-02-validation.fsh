Instance: scenario1-02-validation
InstanceOf: Task
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2025-11-20T14:30:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-task"
* basedOn = Reference(scenario1-01-initial-submission)
* basedOn.system = "urn:ietf:rfc:3986"
* basedOn.value = "urn:uuid:workflow-step1-instance"
* basedOn.type.coding.system = "http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type"
* basedOn.type.coding.code = "task-instance-uuid"
* basedOn.type.coding.display = "Task Instance UUID"
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
* requestedPerformer.reference.reference = "#org-ema-srm-hmed"
* requestedPerformer.reference.display = "European Medicines Agency"
* contained[0] = Inline-Instance-for-scenario1-02-validation-1
* contained[+] = Inline-Instance-for-scenario1-02-validation-2
* contained[+] = Inline-Instance-for-scenario1-02-validation-3
* contained[+] = Inline-Instance-for-scenario1-02-validation-4
* contained[+] = Inline-Instance-for-scenario1-02-validation-5
* contained[+] = Inline-Instance-for-scenario1-02-validation-6
* contained[+] = Inline-Instance-for-scenario1-02-validation-7
* contained[+] = Inline-Instance-for-scenario1-02-validation-8
* contained[+] = Inline-Instance-for-scenario1-02-validation-9
* contained[+] = Inline-Instance-for-scenario1-02-validation-10
* contained[+] = doc9
* contained[+] = doc10
* contained[+] = output-ack
* contained[+] = output-validation
* input[0].type.coding.code = #regulatory-document
* input[=].valueReference = Reference(doc1)
* input[+].type.coding.code = #regulatory-document
* input[=].valueReference = Reference(doc2)
* input[+].type.coding.code = #regulatory-document
* input[=].valueReference = Reference(doc3)
* input[+].type.coding.code = #regulatory-document
* input[=].valueReference = Reference(doc4)
* input[+].type.coding.code = #regulatory-document
* input[=].valueReference = Reference(doc5)
* input[+].type.coding.code = #regulatory-document
* input[=].valueReference = Reference(doc6)
* input[+].type.coding.code = #regulatory-document
* input[=].valueReference = Reference(doc7)
* input[+].type.coding.code = #regulatory-document
* input[=].valueReference = Reference(doc8)
* input[+].type.coding.code = #regulatory-document
* input[=].valueReference = Reference(doc9)
* input[+].type.coding.code = #regulatory-document
* input[=].valueReference = Reference(doc10)
* output[0].type.coding.code = #regulatory-document
* output[=].valueReference = Reference(output-ack)
* output[+].type.coding.code = #regulatory-document
* output[=].valueReference = Reference(output-validation)

Instance: Inline-Instance-for-scenario1-02-validation-1
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

Instance: Inline-Instance-for-scenario1-02-validation-2
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

Instance: Inline-Instance-for-scenario1-02-validation-3
InstanceOf: DocumentReference
Usage: #inline
* id = "doc1"
* type = #cover-letter "Cover Letter"
* valueAttachment.title = "Cover Letter.pdf"

Instance: Inline-Instance-for-scenario1-02-validation-4
InstanceOf: DocumentReference
Usage: #inline
* id = "doc2"
* type = #application-form "Application Form"
* valueAttachment.title = "Application Form.pdf"

Instance: Inline-Instance-for-scenario1-02-validation-5
InstanceOf: DocumentReference
Usage: #inline
* id = "doc3"
* type = #annotated-label "Annotated Label"
* valueAttachment.title = "Annotated Label.pdf"

Instance: Inline-Instance-for-scenario1-02-validation-6
InstanceOf: DocumentReference
Usage: #inline
* id = "doc4"
* type = #clean-label "Clean Label"
* valueAttachment.title = "Clean Label.pdf

Instance: Inline-Instance-for-scenario1-02-validation-7
InstanceOf: DocumentReference
Usage: #inline
* id = "doc5"
* type = #pack-mockup "Pack Mockup"
* valueAttachment.title = "Pack Mockup.pdf"

Instance: Inline-Instance-for-scenario1-02-validation-8
InstanceOf: DocumentReference
Usage: #inline
* id = "doc6"
* type = #cmc-stability-summary "Stability Summary"
* valueAttachment.title = "CMC Doc 1 - Summary.pdf"

Instance: Inline-Instance-for-scenario1-02-validation-9
InstanceOf: DocumentReference
Usage: #inline
* id = "doc7"
* type = #cmc-stability-data "Stability Data"
* valueAttachment.title = "CMC Doc 2 - Data.pdf"

Instance: Inline-Instance-for-scenario1-02-validation-10
InstanceOf: DocumentReference
Usage: #inline
* id = "doc8"
* type = #cmc-stability-commitment "Stability Commitment"
* valueAttachment.title = "CMC Doc 3 - Commitment.pdf"

Instance: doc9
InstanceOf: DocumentReference
Usage: #inline
* type = #cmc-ds-stability-summary "DS Stability Summary"
* valueAttachment.title = "CMC Doc 4 - DS Summary.pdf"

Instance: doc10
InstanceOf: DocumentReference
Usage: #inline
* type = #cmc-ds-stability-data "DS Stability Data"
* valueAttachment.title = "CMC Doc 5 - DS Data.pdf"

Instance: output-ack
InstanceOf: DocumentReference
Usage: #inline
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#acknowledgement-receipt "Acknowledgement of Receipt"
* valueAttachment.title = "Acknowledgement_Letter.pdf"
* valueAttachment.contentType = "application/pdf"

Instance: output-validation
InstanceOf: DocumentReference
Usage: #inline
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#validation-report "Validation Report"
* valueAttachment.title = "Validation_Report.pdf"
* valueAttachment.contentType = "application/pdf"

