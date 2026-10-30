Instance: SubscriptionStatus-TaskStatusChange-QueryStatus
InstanceOf: RWIpharmaSubscriptionStatus
Title: "SubscriptionStatus $status Response for Task Status Change (id-only)"
Description: "Response to the Subscription $status operation for the id-only Task status-change Subscription: the Subscription is active and two events have occurred since it started."
Usage: #example

* id = "SubscriptionStatus-TaskStatusChange-QueryStatus"
* status = #active
* type = #query-status
* eventsSinceSubscriptionStart = 2
* subscription = Reference(Subscription-TaskStatusChange-IdOnly)
* topic = "http://hl7.org/fhir/uv/example/SubscriptionTopic/TaskStatusChangeWithIdentifierFilter"
