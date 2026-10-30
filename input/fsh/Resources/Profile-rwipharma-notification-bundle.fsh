Profile: RWIpharmaNotificationBundle
Parent: Bundle
Id: rwi-pharma-notification-bundle
Title: "RWI Pharma Subscription Notification Bundle"
Description: "Bundle sent by the RWI-pharma Server to a subscriber's endpoint for a topic-based subscription. The first entry is the SubscriptionStatus; for full-resource content, the notified Task follows."

* obeys rwi-nb-1
* type = #subscription-notification
* type MS
* timestamp MS
* entry 1..* MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The SubscriptionStatus is the first entry of the notification (see invariant rwi-nb-1)."
* entry contains subscriptionStatus 1..1 MS
* entry[subscriptionStatus].resource 1..1 MS
* entry[subscriptionStatus].resource only RWIpharmaSubscriptionStatus

Invariant: rwi-nb-1
Description: "The first entry of a subscription notification SHALL be the SubscriptionStatus."
Expression: "entry.first().resource is SubscriptionStatus"
Severity: #error
