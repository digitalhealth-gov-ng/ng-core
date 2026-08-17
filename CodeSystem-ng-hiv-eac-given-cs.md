# HIV EAC Given CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV EAC Given CodeSystem**

## CodeSystem: HIV EAC Given CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-eac-given-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivEACGivenCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.45 | |

 
Codes used for representing the Enhanced Adherence Councilling (EAC) given. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HIV EAC Given ValueSet](ValueSet-ng-hiv-eac-given-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-eac-given-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-eac-given-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.45"
  }],
  "version" : "0.0.0",
  "name" : "NgHivEACGivenCS",
  "title" : "HIV EAC Given CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T16:10:29+01:00",
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
  "description" : "Codes used for representing the Enhanced Adherence Councilling (EAC) given.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "EAC-1",
    "display" : "EAC 1"
  },
  {
    "code" : "EAC-2",
    "display" : "EAC 2"
  },
  {
    "code" : "EAC-3",
    "display" : "EAC 3"
  },
  {
    "code" : "EAC-4",
    "display" : "EAC 4"
  },
  {
    "code" : "EAC-5",
    "display" : "EAC 5"
  },
  {
    "code" : "EAC-6",
    "display" : "EAC 6"
  }]
}

```
