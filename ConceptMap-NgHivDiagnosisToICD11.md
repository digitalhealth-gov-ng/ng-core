# Nigeria HIV Diagnoses to ICD-11 MMS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria HIV Diagnoses to ICD-11 MMS**

## ConceptMap: Nigeria HIV Diagnoses to ICD-11 MMS (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ConceptMap/NgHivDiagnosisToICD11 | *Version*:0.0.0 |
| Active as of 2026-08-15 | *Computable Name*:NgHivDiagnosisToICD11 |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.18.8 | |

 
Directional mapping from explicit Nigeria HIV opportunistic-infection diagnosis concepts to ICD-11 MMS 2026-01. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "NgHivDiagnosisToICD11",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ConceptMap/NgHivDiagnosisToICD11",
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.18.8"
  },
  "version" : "0.0.0",
  "name" : "NgHivDiagnosisToICD11",
  "title" : "Nigeria HIV Diagnoses → ICD-11 MMS",
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
  "description" : "Directional mapping from explicit Nigeria HIV opportunistic-infection diagnosis concepts to ICD-11 MMS 2026-01.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "sourceCanonical" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-diagnosis-concepts-vs",
  "targetCanonical" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-diagnosis-icd11-concepts-vs",
  "group" : [{
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-diagnosis-cs",
    "target" : "http://id.who.int/icd/release/11/mms",
    "element" : [{
      "code" : "cryptococcal-meningitis",
      "target" : [{
        "code" : "1F27.1",
        "equivalence" : "wider",
        "comment" : "ICD-11 1F27.1 Cerebral cryptococcosis is broader than the local diagnosis Cryptococcal meningitis. The more specific 1F27.10 asserts Cryptococcus neoformans and should only be used when that organism is established."
      }]
    },
    {
      "code" : "histoplasmosis",
      "target" : [{
        "code" : "1F2A",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
