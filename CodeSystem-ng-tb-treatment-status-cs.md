# TB Treatment Status Codes CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TB Treatment Status Codes CodeSystem**

## CodeSystem: TB Treatment Status Codes CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-treatment-status-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgTBTreatmentStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.106 | |

 
A list of codes describing the status of TB treatment. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TB Treatment Status Codes CodeSystem](ValueSet-ng-tb-treatment-status-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-tb-treatment-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-treatment-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.106"
  }],
  "version" : "0.0.0",
  "name" : "NgTBTreatmentStatusCS",
  "title" : "TB Treatment Status Codes CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "A list of codes describing the status of TB treatment.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "TBRx1",
    "display" : "TBRx1"
  },
  {
    "code" : "TBRx2",
    "display" : "TBRx2"
  },
  {
    "code" : "TBRx3",
    "display" : "TBRx3"
  },
  {
    "code" : "TBRx4",
    "display" : "TBRx4"
  },
  {
    "code" : "TBRx5",
    "display" : "TBRx5"
  },
  {
    "code" : "TBRx6",
    "display" : "TBRx6"
  },
  {
    "code" : "TBRx7",
    "display" : "TBRx7"
  },
  {
    "code" : "TBRx8",
    "display" : "TBRx8"
  },
  {
    "code" : "TBRx-completed",
    "display" : "TBRx completed"
  },
  {
    "code" : "TBRx-discontinued",
    "display" : "TBRx discontinued"
  }]
}

```
