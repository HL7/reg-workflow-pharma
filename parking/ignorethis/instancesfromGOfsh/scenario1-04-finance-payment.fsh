Instance: scenario1-04-finance-payment
InstanceOf: Task
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2025-03-06T14:00:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-task"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:invoice-task-uuid"
* partOf = Reference(scenario1-01-initial-submission)
* status = #completed
* businessStatus = http://hl7.org/fhir/uv/apix/CodeSystem/apix-business-status#payment-received "Payment Received"
* intent = #proposal
* priority = #routine
* code = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-code#request-payment "Request Payment"
* for = Reference(MedicinalProductDefinition/example-ma) "WonderDrug 50mg Tablets"
* authoredOn = "2025-03-05T09:00:00+01:00"
* lastModified = "2025-03-06T14:00:00+01:00"
* requester = Reference(org-ema-srm-hmed) "European Medicines Agency"
* requestedPerformer.reference.reference = "#org-synthpharma-ag"
* requestedPerformer.reference.display = "SynthPharma AG"
* contained[0] = org-synthpharma-ag
* contained[+] = Inline-Instance-for-scenario1-04-finance-payment-2
* contained[+] = Inline-Instance-for-scenario1-04-finance-payment-3
* contained[+] = docref-payment-proof
* input.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input.valueReference = Reference(docref-invoice)
* output.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-output-type#regulatory-document "Regulatory Document"
* output.valueReference = Reference(docref-payment-proof)

Instance: org-synthpharma-ag
InstanceOf: Organization
Usage: #inline
* name = "SynthPharma AG"
* address.text = "123 Synthetic Research Blvd, 4000 Basel, Switzerland"

Instance: Inline-Instance-for-scenario1-04-finance-payment-2
InstanceOf: Organization
Usage: #inline
* id = "org-ema-srm-hmed"
* name = "European Medicines Agency – Human Medicines Evaluation Division"
* address.text = "Domenico Scarlattilaan 6, 1083 HS Amsterdam, Netherlands"

Instance: Inline-Instance-for-scenario1-04-finance-payment-3
InstanceOf: DocumentReference
Usage: #inline
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

Instance: docref-payment-proof
InstanceOf: DocumentReference
Usage: #inline
* status = #current
* docStatus = #final
* version = "1.0"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#m1.0 "Proof of Payment"
* relatesTo.code = #appends
* relatesTo.target = Reference(docref-invoice) "Invoice #INV-2025-001"
* content.attachment.contentType = #application/pdf
* content.attachment.url = "https://api.synthpharma.example/binaries/payments/confirm-inv-2025-001.pdf"
* content.attachment.title = "Payment-Confirmation.pdf"
* content.attachment.size = 280000
* content.attachment.creation = "2025-03-06T13:30:00+01:00"