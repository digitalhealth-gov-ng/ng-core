# HIV Positive Tracking - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Positive Tracking**

## CodeSystem: HIV Positive Tracking 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-positive-tracking-cs | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgHivPositiveTrackingCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.66 | |

 
Codes used for representing HIV positive tracking. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgHivLocalConceptsVS](ValueSet-ng-hiv-local-concepts.md)
* [NgHivTrackingVS](ValueSet-ng-hiv-tracking-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-positive-tracking-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-positive-tracking-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.66"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPositiveTrackingCS",
  "title" : "HIV Positive Tracking",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-12T13:22:49+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    },
    {
      "system" : "email",
      "value" : "emeka2015@gmail.com"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "lekeojewale@gmail.com",
      "use" : "work"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "emeka2015@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "Codes used for representing HIV positive tracking.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "Started-ART",
    "display" : "Started ART"
  },
  {
    "code" : "Not-Started",
    "display" : "ART Not Started"
  },
  {
    "code" : "Final-Outcome",
    "display" : "Final Outcome"
  },
  {
    "code" : "Linked-To-Care",
    "display" : "Linked to care and treatment"
  }]
}

```
