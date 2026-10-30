Profile: RWIpharmaSubscriptionStatus
Parent: SubscriptionStatus
Id: rwi-pharma-subscription-status
Title: "RWI Pharma SubscriptionStatus"
Description: "SubscriptionStatus for RWI-pharma notifications and $status responses. It is the first entry of every notification Bundle and identifies the Subscription, the topic and the events being notified."

* obeys rwi-sst-1 and rwi-sst-2
* status MS
* type MS
* eventsSinceSubscriptionStart MS
* notificationEvent MS
* notificationEvent.eventNumber MS
* notificationEvent.timestamp MS
* notificationEvent.focus MS
* notificationEvent.additionalContext MS
* subscription MS
* topic MS
  * ^comment = "Per the FHIR R5 Content and PHI guidance: SHOULD NOT be present for empty payloads, MAY be present for id-only, and SHOULD be present for full-resource."

Invariant: rwi-sst-1
Description: "Event notifications SHALL include eventsSinceSubscriptionStart, because rest-hook delivery is best-effort."
Expression: "type = 'event-notification' implies eventsSinceSubscriptionStart.exists()"
Severity: #error

Invariant: rwi-sst-2
Description: "Each event in an event notification or query-event SHALL have a focus. This guide uses id-only and full-resource payloads, which require it."
Expression: "(type = 'event-notification' or type = 'query-event') implies notificationEvent.all(focus.exists())"
Severity: #error
