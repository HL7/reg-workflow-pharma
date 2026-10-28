Instance: task-shelf-life-extension-synthpharma-2025
InstanceOf: Task
Title: "task shelf life extension synthpharma 2025"
Description: "Example Task Type IB Variation"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-11-15T09:00:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-task"
* identifier[0].use = #official
* identifier[=].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:5f3e7d2a-8b1c-4d9f-9a2e-1f6c9d8e7b3a"
* identifier[=].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#task-instance-uuid "Task Instance UUID"
* identifier[+].use = #official
* identifier[=].system = "https://ema.europa.eu/fhir/identifier/procedure"
* identifier[=].value = "EU/1/23/4567/001-IB/023"
* identifier[=].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#regulator-procedure-number "Regulator Procedure Number"
* groupIdentifier.use = #official
* groupIdentifier.system = "urn:ietf:rfc:3986"
* groupIdentifier.value = "urn:uuid:a1b2c3d4-e5f6-7890-g1h2-i3j4k5l6m7n8"
* groupIdentifier.type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-identifier-type#submission-group-uuid "Submission Group UUID"
* status = #requested
* intent = #proposal
* priority = #routine
* code = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-type#variation-type-ib "Type IB Variation"
* authoredOn = "2025-11-15T09:00:00+01:00"
* lastModified = "2025-11-15T09:00:00+01:00"
* requester = Reference(org-synthpharma-ag)
* owner.reference = "Organization/org-mah-98765"
* owner.display = "PharmaCorp International Ltd"
* input[0].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#cover-letter "Cover Letter"
* input[0].valueReference = Reference(docref-cover-letter) "Cover Letter"
* input[1].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[1].valueReference = Reference(docref-labeling) "Annotated Labeling"
* input[2].type = http://hl7.org/fhir/uv/apix/CodeSystem/apix-task-input-type#regulatory-document "Regulatory Document"
* input[2].valueReference = Reference(docref-quality) "Quality Overall Summary"

Instance: org-synthpharma-ag
InstanceOf: Organization
Title: "Inline Instance for task shelf life extension synthpharma 2025 1"
Description: "Example Organization SynthPharma AG"
Usage: #example
* id = "org-synthpharma-ag"
* name = "SynthPharma AG"
* identifier.system = "https://spor.ema.europa.eu/v1/organisations"
* identifier.value = "ORG-987654"
* contact[0].address.type = #physical
* contact[0].address.text = "123 Synthetic Research Blvd, 4000 Basel, Switzerland"
* contact[0].address.line = "123 Synthetic Research Blvd"
* contact[0].address.city = "Basel"
* contact[0].address.district = "Basel-Stadt"
* contact[0].address.state = "Basel-Stadt"
* contact[0].address.postalCode = "4000"
* contact[0].address.country = "Switzerland"
* contact.name.text = "Dr. John Doe, Head of Regulatory Affairs, Global Regulatory Strategy"
* contact.telecom.system = #email
* contact.telecom.value = "john.doe@synthpharma.example"
* contact.telecom.use = #work


Instance: org-ema-srm-hmed
InstanceOf: Organization
Title: "org ema srm hmed"
Description: "Example Organization European Medicines Agency â€“ Human Medicines Evaluation Division â€“ Scientific and Regulatory Management"
Usage: #example
* name = "European Medicines Agency â€“ Human Medicines Evaluation Division â€“ Scientific and Regulatory Management"
* identifier.system = "https://spor.ema.europa.eu/v1/organisations"
* identifier.value = "ORG-EMA-000001"
* contact[0].address.type = #physical
* contact[0].address.text = "Domenico Scarlattilaan 6, 1083 HS Amsterdam, Netherlands"
* contact[0].address.line = "Domenico Scarlattilaan 6"
* contact[0].address.city = "Amsterdam"
* contact[0].address.district = "Amsterdam"
* contact[0].address.state = "North Holland"
* contact[0].address.postalCode = "1083 HS"
* contact[0].address.country = "Netherlands"
* contact.name.text = "Dr. Jane Doe, Scientific Officer"
* contact.telecom[0].system = #phone
* contact.telecom[=].value = "+31-88-781-6000"
* contact.telecom[=].use = #work
* contact.telecom[+].system = #email
* contact.telecom[=].value = "jane.doe@example.eu"
* contact.telecom[=].use = #work


Instance: docref-cover-letter
InstanceOf: DocumentReference
Title: "docref cover letter"
Description: "Example DocumentReference Cover Letter"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-11-15T09:00:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-documentreference"
* status = #current
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#1.0 "Cover Letter"
* date = "2025-11-15T09:00:00+01:00"
* content.attachment.contentType = #application/fhir+json
* content.attachment.title = "Cover_Letter_SynthVac_ShelfLife_Extension_2025.json"
* content.attachment.creation = "2025-11-15T09:00:00+01:00"
* content.attachment.data = "ewogICJyZXNvdXJjZVR5cGUiOiAiQ29tcG9zaXRpb24iLAogICJpZCI6ICJzaGVsZi1saWZlLXN0YXRlbWVudC1leGFtcGxlIiwKICAic3RhdHVzIjogImZpbmFsIiwKICAidHlwZSI6IHsKICAgICJjb2RpbmciOiBbCiAgICAgIHsKICAgICAgICAic3lzdGVtIjogImh0dHA6Ly9obDcub3JnL2ZoaXIvY29tcG9zaXRpb24tdHlwZSIsCiAgICAgICAgImNvZGUiOiAiNzIxMzgtMiIsCiAgICAgICAgImRpc3BsYXkiOiAiU2hlbGYgTGlmZSBEb2N1bWVudCIKICAgICAgfQogICAgXQogIH0sCiAgInN1YmplY3QiOiB7CiAgICAicmVmZXJlbmNlIjogIk1lZGljaW5hbFByb2R1Y3REZWZpbml0aW9uL2V4YW1wbGUtbXBkLTEyMyIKICB9LAogICJkYXRlIjogIjIwMjUtMTItMDVUMTI6MDA6MDBaIiwKICAiYXV0aG9yIjogWwogICAgewogICAgICAicmVmZXJlbmNlIjogIk9yZ2FuaXphdGlvbi9leGFtcGxlLW1hbnVmYWN0dXJlciIKICAgIH0KICBdLAogICJ0aXRsZSI6ICJTaGVsZiBMaWZlIFN0YXRlbWVudCBmb3IgUHJvZHVjdCBYWVoiLAogICJzZWN0aW9uIjogWwogICAgewogICAgICAidGl0bGUiOiAiU3RvcmFnZSBDb25kaXRpb25zIGFuZCBTaGVsZiBMaWZlIiwKICAgICAgImNvZGUiOiB7CiAgICAgICAgImNvZGluZyI6IFsKICAgICAgICAgIHsKICAgICAgICAgICAgInN5c3RlbSI6ICJodHRwOi8vZW1hLmV1cm9wYS5ldS9leGFtcGxlL3NlY3Rpb25jcyIsCiAgICAgICAgICAgICJjb2RlIjogInNoZWxmLWxpZmUiLAogICAgICAgICAgICAiZGlzcGxheSI6ICJTaGVsZiBsaWZlIgogICAgICAgICAgfQogICAgICAgIF0KICAgICAgfSwKICAgICAgInRleHQiOiB7CiAgICAgICAgInN0YXR1cyI6ICJhZGRpdGlvbmFsIiwKICAgICAgICAiZGl2IjogIjxkaXYgeG1sbnM9XCJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hodG1sXCI+XG48cD48Yj5Qcm9kdWN0OjwvYj4gWFlaIDEwMCBtZyB0YWJsZXRzPC9wPlxuPHA+PGI+QXNzaWduZWQgc2hlbGYgbGlmZTo8L2I+IDM2IG1vbnRoczwvcD5cbjxwPjxiPlN0b3JhZ2UgY29uZGl0aW9uOjwvYj4gU3RvcmUgYmVsb3cgMjXCsEM8L3A+XG48cD48Yj5BZnRlciBmaXJzdCBvcGVuaW5nOjwvYj4gNiBtb250aHM8L3A+XG48L2Rpdj4iCiAgICAgIH0KICAgIH0KICBdCn0="
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:11111111-1111-1111-1111-111111111111"


Instance: docref-labeling
InstanceOf: DocumentReference
Title: "docref labeling"
Description: "Example DocumentReference SPC, Labelling and Package Leaflet"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-11-15T09:00:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-documentreference"
* status = #current
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#1.3.1 "SPC, Labelling and Package Leaflet"
* date = "2025-11-15T09:00:00+01:00"
* content.attachment.contentType = #application/fhir+json
* content.attachment.title = "SynthVac_Annotated_SmPC_PIL_36months.json"
* content.attachment.creation = "2025-11-15T09:00:00+01:00"
* content.attachment.data = "ewogICJyZXNvdXJjZVR5cGUiOiAiQ29tcG9zaXRpb24iLAogICJpZCI6ICJzaGVsZi1saWZlLXN0YXRlbWVudC1leGFtcGxlIiwKICAic3RhdHVzIjogImZpbmFsIiwKICAidHlwZSI6IHsKICAgICJjb2RpbmciOiBbCiAgICAgIHsKICAgICAgICAic3lzdGVtIjogImh0dHA6Ly9obDcub3JnL2ZoaXIvY29tcG9zaXRpb24tdHlwZSIsCiAgICAgICAgImNvZGUiOiAiNzIxMzgtMiIsCiAgICAgICAgImRpc3BsYXkiOiAiU2hlbGYgTGlmZSBEb2N1bWVudCIKICAgICAgfQogICAgXQogIH0sCiAgInN1YmplY3QiOiB7CiAgICAicmVmZXJlbmNlIjogIk1lZGljaW5hbFByb2R1Y3REZWZpbml0aW9uL2V4YW1wbGUtbXBkLTEyMyIKICB9LAogICJkYXRlIjogIjIwMjUtMTItMDVUMTI6MDA6MDBaIiwKICAiYXV0aG9yIjogWwogICAgewogICAgICAicmVmZXJlbmNlIjogIk9yZ2FuaXphdGlvbi9leGFtcGxlLW1hbnVmYWN0dXJlciIKICAgIH0KICBdLAogICJ0aXRsZSI6ICJTaGVsZiBMaWZlIFN0YXRlbWVudCBmb3IgUHJvZHVjdCBYWVoiLAogICJzZWN0aW9uIjogWwogICAgewogICAgICAidGl0bGUiOiAiU3RvcmFnZSBDb25kaXRpb25zIGFuZCBTaGVsZiBMaWZlIiwKICAgICAgImNvZGUiOiB7CiAgICAgICAgImNvZGluZyI6IFsKICAgICAgICAgIHsKICAgICAgICAgICAgInN5c3RlbSI6ICJodHRwOi8vZW1hLmV1cm9wYS5ldS9leGFtcGxlL3NlY3Rpb25jcyIsCiAgICAgICAgICAgICJjb2RlIjogInNoZWxmLWxpZmUiLAogICAgICAgICAgICAiZGlzcGxheSI6ICJTaGVsZiBsaWZlIgogICAgICAgICAgfQogICAgICAgIF0KICAgICAgfSwKICAgICAgInRleHQiOiB7CiAgICAgICAgInN0YXR1cyI6ICJhZGRpdGlvbmFsIiwKICAgICAgICAiZGl2IjogIjxkaXYgeG1sbnM9XCJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hodG1sXCI+XG48cD48Yj5Qcm9kdWN0OjwvYj4gWFlaIDEwMCBtZyB0YWJsZXRzPC9wPlxuPHA+PGI+QXNzaWduZWQgc2hlbGYgbGlmZTo8L2I+IDM2IG1vbnRoczwvcD5cbjxwPjxiPlN0b3JhZ2UgY29uZGl0aW9uOjwvYj4gU3RvcmUgYmVsb3cgMjXCsEM8L3A+XG48cD48Yj5BZnRlciBmaXJzdCBvcGVuaW5nOjwvYj4gNiBtb250aHM8L3A+XG48L2Rpdj4iCiAgICAgIH0KICAgIH0KICBdCn0="
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:22222222-2222-2222-2222-222222222222"


Instance: docref-quality
InstanceOf: DocumentReference
Title: "docref quality"
Description: "Example DocumentReference Quality Overall Summary"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2025-11-15T09:00:00+01:00"
* meta.profile = "http://hl7.org/fhir/uv/apix/StructureDefinition/apix-documentreference"
* status = #current
* type = http://hl7.org/fhir/uv/apix/CodeSystem/ctd-section#2.3 "Quality Overall Summary"
* date = "2025-11-15T09:00:00+01:00"
* content.attachment.contentType = #application/fhir+json
* content.attachment.title = "3.2.S.7_Stability_Summary_and_Conclusions.json"
* content.attachment.creation = "2025-11-15T09:00:00+01:00"
* content.attachment.data = "ewogICJyZXNvdXJjZVR5cGUiOiAiQ29tcG9zaXRpb24iLAogICJpZCI6ICJzaGVsZi1saWZlLXN0YXRlbWVudC1leGFtcGxlIiwKICAic3RhdHVzIjogImZpbmFsIiwKICAidHlwZSI6IHsKICAgICJjb2RpbmciOiBbCiAgICAgIHsKICAgICAgICAic3lzdGVtIjogImh0dHA6Ly9obDcub3JnL2ZoaXIvY29tcG9zaXRpb24tdHlwZSIsCiAgICAgICAgImNvZGUiOiAiNzIxMzgtMiIsCiAgICAgICAgImRpc3BsYXkiOiAiU2hlbGYgTGlmZSBEb2N1bWVudCIKICAgICAgfQogICAgXQogIH0sCiAgInN1YmplY3QiOiB7CiAgICAicmVmZXJlbmNlIjogIk1lZGljaW5hbFByb2R1Y3REZWZpbml0aW9uL2V4YW1wbGUtbXBkLTEyMyIKICB9LAogICJkYXRlIjogIjIwMjUtMTItMDVUMTI6MDA6MDBaIiwKICAiYXV0aG9yIjogWwogICAgewogICAgICAicmVmZXJlbmNlIjogIk9yZ2FuaXphdGlvbi9leGFtcGxlLW1hbnVmYWN0dXJlciIKICAgIH0KICBdLAogICJ0aXRsZSI6ICJTaGVsZiBMaWZlIFN0YXRlbWVudCBmb3IgUHJvZHVjdCBYWVoiLAogICJzZWN0aW9uIjogWwogICAgewogICAgICAidGl0bGUiOiAiU3RvcmFnZSBDb25kaXRpb25zIGFuZCBTaGVsZiBMaWZlIiwKICAgICAgImNvZGUiOiB7CiAgICAgICAgImNvZGluZyI6IFsKICAgICAgICAgIHsKICAgICAgICAgICAgInN5c3RlbSI6ICJodHRwOi8vZW1hLmV1cm9wYS5ldS9leGFtcGxlL3NlY3Rpb25jcyIsCiAgICAgICAgICAgICJjb2RlIjogInNoZWxmLWxpZmUiLAogICAgICAgICAgICAiZGlzcGxheSI6ICJTaGVsZiBsaWZlIgogICAgICAgICAgfQogICAgICAgIF0KICAgICAgfSwKICAgICAgInRleHQiOiB7CiAgICAgICAgInN0YXR1cyI6ICJhZGRpdGlvbmFsIiwKICAgICAgICAiZGl2IjogIjxkaXYgeG1sbnM9XCJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hodG1sXCI+XG48cD48Yj5Qcm9kdWN0OjwvYj4gWFlaIDEwMCBtZyB0YWJsZXRzPC9wPlxuPHA+PGI+QXNzaWduZWQgc2hlbGYgbGlmZTo8L2I+IDM2IG1vbnRoczwvcD5cbjxwPjxiPlN0b3JhZ2UgY29uZGl0aW9uOjwvYj4gU3RvcmUgYmVsb3cgMjXCsEM8L3A+XG48cD48Yj5BZnRlciBmaXJzdCBvcGVuaW5nOjwvYj4gNiBtb250aHM8L3A+XG48L2Rpdj4iCiAgICAgIH0KICAgIH0KICBdCn0="
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:33333333-3333-3333-3333-333333333333"
