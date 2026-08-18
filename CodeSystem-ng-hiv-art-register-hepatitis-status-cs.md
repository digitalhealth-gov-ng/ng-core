# NG HIV ART Register Hepatitis Screening Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV ART Register Hepatitis Screening Codes**

## CodeSystem: NG HIV ART Register Hepatitis Screening Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-register-hepatitis-status-cs | *Version*:0.0.0 |
| Draft as of 2026-07-28 | *Computable Name*:NgHivArtRegisterHepatitisStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.24 | |

 
Hepatitis screening and treatment codes printed in column A28 of the National ART Register. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV ART Register Hepatitis Screening Status](ValueSet-ng-hiv-art-register-hepatitis-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-art-register-hepatitis-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-register-hepatitis-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.24"
  }],
  "version" : "0.0.0",
  "name" : "NgHivArtRegisterHepatitisStatusCS",
  "title" : "NG HIV ART Register Hepatitis Screening Codes",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-28",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Hepatitis screening and treatment codes printed in column A28 of the National ART Register.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "1a",
    "display" : "Hepatitis B negative"
  },
  {
    "code" : "1b",
    "display" : "Hepatitis B positive"
  },
  {
    "code" : "2a",
    "display" : "Hepatitis C negative"
  },
  {
    "code" : "2b",
    "display" : "Hepatitis C positive"
  },
  {
    "code" : "3",
    "display" : "Hepatitis C treatment"
  }]
}

```
