# HIV Targeted Indication Viral Load - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Targeted Indication Viral Load**

## CodeSystem: HIV Targeted Indication Viral Load 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-targeted-indication-viral-load-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivTargetedIndicationViralLoadCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.75 | |

 
Codes used for representing targeted indication for viral load. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HIV Viral Load Indication](ValueSet-ng-hiv-vl-indication-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-targeted-indication-viral-load-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-targeted-indication-viral-load-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.75"
  }],
  "version" : "0.0.0",
  "name" : "NgHivTargetedIndicationViralLoadCS",
  "title" : "HIV Targeted Indication Viral Load",
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
  "description" : "Codes used for representing targeted indication for viral load.",
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
    "code" : "Suspected-ART-Failure",
    "display" : "Suspected ART Failure"
  },
  {
    "code" : "Repeat-or-confirmatory-VL-Initial-VL-greater-than-1000",
    "display" : "Repeat or confirmatory VL Initial Viral load greater than 1000"
  }]
}

```
