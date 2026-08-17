# NG HIV Tracking Register Tracking Modes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Tracking Register Tracking Modes**

## CodeSystem: NG HIV Tracking Register Tracking Modes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-mode-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivTrackingModeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.81 | |

 
Tracking modes printed for T19–T23. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Tracking Register Tracking Mode](ValueSet-ng-hiv-tracking-mode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-tracking-mode-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-mode-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.81"
  }],
  "version" : "0.0.0",
  "name" : "NgHivTrackingModeCS",
  "title" : "NG HIV Tracking Register Tracking Modes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-29",
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
  "description" : "Tracking modes printed for T19–T23.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "PH",
    "display" : "Phone call"
  },
  {
    "code" : "HV",
    "display" : "Home visit"
  }]
}

```
