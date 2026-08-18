# NG IMMZ.D.DE4 ICD11 Vaccine Library - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG IMMZ.D.DE4 ICD11 Vaccine Library**

## CodeSystem: NG IMMZ.D.DE4 ICD11 Vaccine Library 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-icd-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgVaccineLibraryICD11CS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.107 | |

 
ICD11 code Immunization.vaccineCode. Dose/order is not encoded in codes; use protocolApplied.doseNumber[x]. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Vaccine ICD ValueSet](ValueSet-ng-vaccine-icd-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-vaccine-icd-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-icd-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.107"
  }],
  "version" : "0.0.0",
  "name" : "NgVaccineLibraryICD11CS",
  "title" : "NG IMMZ.D.DE4 ICD11 Vaccine Library",
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
  "description" : "ICD11 code Immunization.vaccineCode. Dose/order is not encoded in codes; use protocolApplied.doseNumber[x].",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "XM8142",
    "display" : "BCG vaccine"
  },
  {
    "code" : "XM9V38",
    "display" : "Hepatitis B vaccine"
  },
  {
    "code" : "XM0N50",
    "display" : "Poliomyelitis vaccines"
  },
  {
    "code" : "XM1PB8",
    "display" : "DTP-HepB-Hib pentavalent vaccines"
  },
  {
    "code" : "XM9G97",
    "display" : "Pneumococcal conjugate vaccines"
  },
  {
    "code" : "XM1CE0",
    "display" : "Rotavirus vaccines"
  },
  {
    "code" : "XM8TF3",
    "display" : "Measles-rubella vaccine"
  },
  {
    "code" : "XM0N24",
    "display" : "Yellow fever vaccine"
  },
  {
    "code" : "XM2WV4",
    "display" : "Meningococcal vaccines"
  },
  {
    "code" : "XM32Q5",
    "display" : "Tetanus-diphtheria vaccines"
  },
  {
    "code" : "XM9QP0",
    "display" : "Human papillomavirus vaccines"
  }]
}

```
