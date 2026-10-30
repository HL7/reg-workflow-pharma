Instance: Bundle-SubscriptionNotification-TaskIdOnly
InstanceOf: Bundle
Title: "SubscriptionNotification Task ID Only"
Description: "Event notification with an id-only payload, sent when the submission Task's status changes to accepted after validation (Scenario 1, step 2). The first entry is the SubscriptionStatus; the second identifies the changed Task without its content, following the FHIR R5 id-only notification example."
Usage: #example

* id = "eee72492-c236-41f7-a7ba-3af356204f4c"
* meta.profile[0] = Canonical(RWIpharmaNotificationBundle)
* type = #subscription-notification
* timestamp = "2025-11-20T14:30:05+01:00"

* entry[0].fullUrl = "urn:uuid:09efceb7-abdc-4dc8-bc31-0788baf65dbd"
* entry[0].resource.resourceType = "SubscriptionStatus"
* entry[0].resource.id = "09efceb7-abdc-4dc8-bc31-0788baf65dbd"
* entry[0].resource.status = #active
* entry[0].resource.type = #event-notification
* entry[0].resource.eventsSinceSubscriptionStart = 2
* entry[0].resource.notificationEvent[0].eventNumber = 2
* entry[0].resource.notificationEvent[0].timestamp = "2025-11-20T14:30:00+01:00"
* entry[0].resource.notificationEvent[0].focus = Reference(scenario1-02-validation)
* entry[0].resource.subscription = Reference(Subscription-TaskStatusChange-IdOnly)
* entry[0].resource.topic = "http://hl7.org/fhir/uv/example/SubscriptionTopic/TaskStatusChangeWithIdentifierFilter"

* entry[1].fullUrl = "http://hl7.org/fhir/uv/rwi-pharma/Task/scenario1-02-validation"
* entry[1].request.method = #PUT
* entry[1].request.url = "Task/scenario1-02-validation"
* entry[1].response.status = "200"
