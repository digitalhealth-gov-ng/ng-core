# WHO Stage Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO Stage Codes**

## CodeSystem: WHO Stage Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-who-stage-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivWHOStageCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.85 | |

 
Code used for representing the patient's WHO stage. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV WHO Stage](ValueSet-ng-hiv-who-stage-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-who-stage-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-who-stage-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.85"
  }],
  "version" : "0.0.0",
  "name" : "NgHivWHOStageCS",
  "title" : "WHO Stage Codes",
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
  "description" : "Code used for representing the patient's WHO stage.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "Stage-One",
    "display" : "Stage One"
  },
  {
    "code" : "Stage-Two",
    "display" : "Stage Two"
  },
  {
    "code" : "Stage-Three",
    "display" : "Stage Three"
  },
  {
    "code" : "Stage-Four",
    "display" : "Stage Four"
  },
  {
    "code" : "T1",
    "display" : "T1"
  },
  {
    "code" : "T2",
    "display" : "T2"
  },
  {
    "code" : "T3",
    "display" : "T3"
  },
  {
    "code" : "T4",
    "display" : "T4"
  }]
}

```
