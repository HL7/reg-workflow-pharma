Instance: Subscription-TaskStatusChange-FullResource
InstanceOf: RWIpharmaSubscription
Title: "Subscription for Task Status Change with Identifier Filter"
Description: "Subscription example to Task change status with an identifier filter, and sending full-resource."
Usage: #example
* identifier[0].system = "http://example.org/submitterOrgSubscriptions"
* identifier[0].value = "task-miami10-status-subscription-1c5143fa-e247-405b-8bbc-a0f4025c11ad"

* status = #requested
* topic = "http://hl7.org/fhir/uv/example/SubscriptionTopic/TaskStatusChangeWithIdentifierFilter"

* managingEntity = Reference(Organization-1002)

* reason = "Monitor status transitions for a specific Task"

* filterBy[0].resourceType = "Task"
* filterBy[0].filterParameter = "identifier"
* filterBy[0].value = "http://example.org/health-authority/task-id|urn:uuid:f1500e1d-599f-47a6-a38c-ca60a5189726"

* channelType = http://terminology.hl7.org/CodeSystem/subscription-channel-type#rest-hook

* endpoint = "http://example.org/host.docker.internal:3001/fhir-subscription-notify"

* heartbeatPeriod = 300
* timeout = 5

* contentType = #application/fhir+json
* content = #full-resource


Instance: Subscription-TaskStatusChange-IdOnly
InstanceOf: RWIpharmaSubscription
Title: "Subscription for Task Status Change with Identifier Filter id-only"
Description: "Subscription to Task status changes with an identifier filter, receiving id-only notifications."
Usage: #example
* identifier[0].system = "http://example.org/submitterOrgSubscriptions"
* identifier[0].value = "task-miami10-status-subscription-idonly-7d2e9b41-5c3a-4f8e-9a61-2b0c4e8d7f13"

* status = #requested
* topic = "http://hl7.org/fhir/uv/example/SubscriptionTopic/TaskStatusChangeWithIdentifierFilter"

* managingEntity = Reference(Organization-1002)

* reason = "Monitor status transitions for a specific Task"

* filterBy[0].resourceType = "Task"
* filterBy[0].filterParameter = "identifier"
* filterBy[0].value = "http://example.org/health-authority/task-id|urn:uuid:f1500e1d-599f-47a6-a38c-ca60a5189726"

* channelType = http://terminology.hl7.org/CodeSystem/subscription-channel-type#rest-hook

* endpoint = "http://example.org/host.docker.internal:3001/fhir-subscription-notify"

* heartbeatPeriod = 300
* timeout = 5

* contentType = #application/fhir+json
* content = #id-only
