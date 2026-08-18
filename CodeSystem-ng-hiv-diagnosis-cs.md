# Nigeria HIV Diagnosis Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria HIV Diagnosis Codes**

## CodeSystem: Nigeria HIV Diagnosis Codes (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-diagnosis-cs | *Version*:0.0.0 |
| Active as of 2026-08-15 | *Computable Name*:NgHivDiagnosisCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.113 | |

 
Local HIV programme diagnosis concepts used where a specific opportunistic-infection diagnosis is required. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Nigeria HIV Diagnosis Concepts](ValueSet-ng-hiv-diagnosis-concepts-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-diagnosis-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-diagnosis-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.113"
  }],
  "version" : "0.0.0",
  "name" : "NgHivDiagnosisCS",
  "title" : "Nigeria HIV Diagnosis Codes",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-15",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Local HIV programme diagnosis concepts used where a specific opportunistic-infection diagnosis is required.",
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
    "code" : "cryptococcal-meningitis",
    "display" : "Cryptococcal meningitis"
  },
  {
    "code" : "histoplasmosis",
    "display" : "Histoplasmosis"
  }]
}

```
