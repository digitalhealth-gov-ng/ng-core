# NG HIV ART Register Cryptococcal Status Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV ART Register Cryptococcal Status Codes**

## CodeSystem: NG HIV ART Register Cryptococcal Status Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-register-cryptococcal-status-cs | *Version*:0.0.0 |
| Draft as of 2026-07-28 | *Computable Name*:NgHivArtRegisterCryptococcalStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.22 | |

 
Cryptococcal screening and treatment-state codes printed in column A25 of the National ART Register. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV ART Register Cryptococcal Status](ValueSet-ng-hiv-art-register-cryptococcal-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-art-register-cryptococcal-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-register-cryptococcal-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.22"
  }],
  "version" : "0.0.0",
  "name" : "NgHivArtRegisterCryptococcalStatusCS",
  "title" : "NG HIV ART Register Cryptococcal Status Codes",
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
  "description" : "Cryptococcal screening and treatment-state codes printed in column A25 of the National ART Register.",
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
    "code" : "1",
    "display" : "Not screened"
  },
  {
    "code" : "2",
    "display" : "Screened for cryptococcal antigen"
  },
  {
    "code" : "3",
    "display" : "Cryptococcal antigen negative"
  },
  {
    "code" : "4",
    "display" : "Cryptococcal antigen positive"
  },
  {
    "code" : "5",
    "display" : "CSF cryptococcal antigen negative; commenced pre-emptive therapy"
  },
  {
    "code" : "6",
    "display" : "Diagnosed with cryptococcal meningitis"
  },
  {
    "code" : "7",
    "display" : "Commenced treatment for cryptococcal meningitis"
  },
  {
    "code" : "8",
    "display" : "Completed treatment for cryptococcal meningitis"
  }]
}

```
