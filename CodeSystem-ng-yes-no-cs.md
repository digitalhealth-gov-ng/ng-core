# Yes/No Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Yes/No Codes**

## CodeSystem: Yes/No Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-yes-no-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgYesNoCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.111 | |

 
Yes/No Codes Represented as Boolean. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Local Concepts](ValueSet-ng-hiv-local-concepts.md)
* [NG Yes/No Codes VS](ValueSet-ng-yes-no-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-yes-no-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-yes-no-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.111"
  }],
  "version" : "0.0.0",
  "name" : "NgYesNoCS",
  "title" : "Yes/No Codes",
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
  "description" : "Yes/No Codes Represented as Boolean.",
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
    "code" : "true",
    "display" : "Yes"
  },
  {
    "code" : "false",
    "display" : "No"
  }]
}

```
