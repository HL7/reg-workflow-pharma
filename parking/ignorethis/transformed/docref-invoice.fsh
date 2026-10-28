Instance: docref-invoice
InstanceOf: DocumentReference
Title: "docref invoice"
Description: "Example DocumentReference Invoice"
Usage: #example
* status = #current
* docStatus = #final
* version = "1.0"
* date = "2025-03-05T08:00:00+01:00"
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#m1.0 "Invoice"
* description = "Financial invoice for regulatory submission review"
* content.attachment.contentType = #application/pdf
* content.attachment.url = "https://api.ema.example/binaries/invoices/INV-2025-001.pdf"
* content.attachment.title = "INV-2025-001.pdf"
* content.attachment.size = 450000
* content.attachment.creation = "2025-03-05T08:00:00+01:00"
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:invoice-docref-uuid"