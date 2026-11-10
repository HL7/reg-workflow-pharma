<div style="background:#fffbeb; border:1px solid #fde68a; border-radius:10px; padding:14px 18px; margin:0 0 16px; font-size:.88em; color:#78350f; line-height:1.6;">
  <p style="margin:0;"><strong>Note on <code>canFilterBy</code>:</strong> the current IG Publisher drops <code>SubscriptionTopic.canFilterBy</code> from this R5 example when it builds the IG (a fix has been requested on FHIR Zulip), so it is missing from the content and the JSON, XML and TTL downloads below. The structure as authored is shown here, trimmed to <code>url</code>, <code>resourceTrigger</code> and <code>canFilterBy</code>. In R5, <code>canFilterBy</code> is a top-level element, alongside <code>resourceTrigger</code>.</p>
</div>

```json
{
  "resourceType": "SubscriptionTopic",
  "id": "TaskStatusChangeWithIdentifierFilter",
  "url": "http://hl7.org/fhir/uv/example/SubscriptionTopic/TaskStatusChangeWithIdentifierFilter",
  "resourceTrigger": [
    {
      "resource": "Task",
      "supportedInteraction": [
        "update"
      ],
      "fhirPathCriteria": "%previous.status != %current.status"
    }
  ],
  "canFilterBy": [
    {
      "description": "Filter by business identifier",
      "resource": "Task",
      "filterParameter": "identifier",
      "filterDefinition": "http://hl7.org/fhir/SearchParameter/clinical-identifier",
      "modifier": [
        "exact"
      ]
    }
  ]
}
```
