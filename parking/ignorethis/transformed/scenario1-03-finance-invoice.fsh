Instance: scenario1-03-finance-invoice
InstanceOf: Task
Title: "scenario1 03 finance invoice"
Description: "Example Task Request Payment"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-03-05T09:00:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-task"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:invoice-task-uuid"
* partOf = Reference(scenario1-01-initial-submission)
* status = #requested
* intent = #proposal
* code = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-code#request-payment "Request Payment"
* for = Reference(MedicinalProductDefinition/example-ma) "WonderDrug 50mg Tablets"
* authoredOn = "2025-03-05T09:00:00+01:00"
* lastModified = "2025-03-05T09:00:00+01:00"
* requester = Reference(org-ema-srm-hmed) "European Medicines Agency"
* owner.reference = "org-synthpharma-ag"
* owner.display = "SynthPharma AG"
* input.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input.valueReference = Reference(docref-invoice)

Instance: org-synthpharma-ag
InstanceOf: Organization
Title: "org synthpharma ag"
Description: "Example Organization SynthPharma AG"
Usage: #example
* name = "SynthPharma AG"
* contact[0].address.text = "123 Synthetic Research Blvd, 4000 Basel, Switzerland"


Instance: org-ema-srm-hmed
InstanceOf: Organization
Title: "Inline Instance for scenario1 03 finance invoice 2"
Description: "Example Organization European Medicines Agency â€“ Human Medicines Evaluation Division"
Usage: #example
* id = "org-ema-srm-hmed"
* name = "European Medicines Agency â€“ Human Medicines Evaluation Division"
* contact[0].address.text = "Domenico Scarlattilaan 6, 1083 HS Amsterdam, Netherlands"


Instance: docref-invoice
InstanceOf: DocumentReference
Title: "Inline Instance for scenario1 03 finance invoice 3"
Description: "Example DocumentReference Invoice"
Usage: #example
* id = "docref-invoice"
* status = #current
* docStatus = #final
* version = "1.0"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#m1.0 "Invoice"
* content.attachment.contentType = #application/pdf
* content.attachment.url = "https://api.ema.example/binaries/invoices/INV-2025-001.pdf"
* content.attachment.title = "INV-2025-001.pdf"
* content.attachment.size = 450000
* content.attachment.creation = "2025-03-05T08:00:00+01:00"
