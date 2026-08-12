# NG Client Pregnancy Status CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Client Pregnancy Status CS**

## CodeSystem: NG Client Pregnancy Status CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-pregnancy-status-cs | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgPregnancyStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.97 | |

 
This CodeSystem defines list of options for Pregnancy status of a Client 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgPregnancyStatusVS](ValueSet-ng-pregnancy-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-pregnancy-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-pregnancy-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.97"
  }],
  "version" : "0.0.0",
  "name" : "NgPregnancyStatusCS",
  "title" : "NG Client Pregnancy Status CS",
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
  "description" : "This CodeSystem defines list of options for Pregnancy status of a Client",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "pregnant",
    "display" : "Pregnant",
    "definition" : "The Client's pregnancy status is positive"
  },
  {
    "code" : "notpregnant",
    "display" : "Not Pregnant",
    "definition" : "The Client's pregnancy status is negative"
  },
  {
    "code" : "unknown",
    "display" : "Not known",
    "definition" : "The Client does not know their Pregnancy status"
  }]
}

```
