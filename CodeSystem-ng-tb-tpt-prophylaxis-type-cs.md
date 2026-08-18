# TB TPT Prophylaxis Type Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TB TPT Prophylaxis Type Codes**

## CodeSystem: TB TPT Prophylaxis Type Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-tpt-prophylaxis-type-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgTbTPTProphylaxisTypeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.105 | |

 
A list of codes describing the TPT prophylaxis type. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Local Concepts](ValueSet-ng-hiv-local-concepts.md)
* [TB TPT Prophylaxis Type Codes](ValueSet-ng-tb-tpt-prophylaxis-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-tb-tpt-prophylaxis-type-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-tpt-prophylaxis-type-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.105"
  }],
  "version" : "0.0.0",
  "name" : "NgTbTPTProphylaxisTypeCS",
  "title" : "TB TPT Prophylaxis Type Codes",
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
  "description" : "A list of codes describing the TPT prophylaxis type.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "Continuous",
    "display" : "Continuous"
  },
  {
    "code" : "Alternate",
    "display" : "Alternate"
  },
  {
    "code" : "inh",
    "display" : "INH"
  }]
}

```
