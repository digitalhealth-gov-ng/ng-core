# NG HIV Follow Up Status CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Follow Up Status CodeSystem**

## CodeSystem: NG HIV Follow Up Status CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-follow-up-status-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivARTFollowUpStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.19 | |

 
A list of codes describing the follow up statuses 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Follow Up Status ValueSet](ValueSet-ng-hiv-art-follow-up-status-vs.md)
* [NG HIV ART Register Six-Month Outcomes](ValueSet-ng-hiv-art-register-outcome-vs.md)
* [NG HIV Local Concepts](ValueSet-ng-hiv-local-concepts.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-art-follow-up-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-follow-up-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.19"
  }],
  "version" : "0.0.0",
  "name" : "NgHivARTFollowUpStatusCS",
  "title" : "NG HIV Follow Up Status CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "A list of codes describing the follow up statuses",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "alive-on-art",
    "display" : "Alive on ART"
  },
  {
    "code" : "to",
    "display" : "Transfer out"
  },
  {
    "code" : "dead",
    "display" : "Dead"
  },
  {
    "code" : "drop",
    "display" : "Drop"
  },
  {
    "code" : "restart",
    "display" : "Restart"
  },
  {
    "code" : "lost",
    "display" : "Lost to follow-up"
  },
  {
    "code" : "stop",
    "display" : "Stopped treatment"
  }]
}

```
