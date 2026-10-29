Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type

// One "candidate" additional binding, tied to a domain through the Task code grouping.
// Apply with a path-prefixed insert, e.g. * businessStatus insert DomainCandidateBinding(...)
// Parameters must not contain commas.
RuleSet: DomainCandidateBinding(vs, domainCode, doc)
* ^binding.additional[+].purpose = #candidate
* ^binding.additional[=].valueSet = Canonical({vs})
* ^binding.additional[=].documentation = "{doc}"
* ^binding.additional[=].usage.code = $usage-context-type#workflow "Workflow Setting"
* ^binding.additional[=].usage.valueCodeableConcept = RWIpharmaTaskCodeCS#{domainCode}
