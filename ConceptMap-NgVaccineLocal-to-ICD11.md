# NG Local Vaccine Codes → ICD11 - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Local Vaccine Codes → ICD11**

## ConceptMap: NG Local Vaccine Codes → ICD11 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ConceptMap/NgVaccineLocal-to-ICD11 | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:Local_icd11 |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.18.4 | |

 
Maps local dose-labelled DE codes to ICD-11 vaccine concepts (antigen/product level). 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "NgVaccineLocal-to-ICD11",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ConceptMap/NgVaccineLocal-to-ICD11",
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.18.4"
  },
  "version" : "0.0.0",
  "name" : "Local_icd11",
  "title" : "NG Local Vaccine Codes → ICD11",
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
  "description" : "Maps local dose-labelled DE codes to ICD-11 vaccine concepts (antigen/product level).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "sourceUri" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-vaccine-local-vs",
  "targetUri" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-vaccine-icd-vs",
  "group" : [{
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-icd-cs",
    "element" : [{
      "code" : "IMMZ.Z.DE1",
      "target" : [{
        "code" : "XM8142",
        "display" : "BCG vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE2",
      "target" : [{
        "code" : "XM9V38",
        "display" : "Hepatitis B vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE3",
      "target" : [{
        "code" : "XM0N50",
        "display" : "Poliomyelitis vaccines",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE5",
      "target" : [{
        "code" : "XM0N50",
        "display" : "Poliomyelitis vaccines",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE9",
      "target" : [{
        "code" : "XM0N50",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE13",
      "target" : [{
        "code" : "XM0N50",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE8",
      "target" : [{
        "code" : "XM0N50",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE17",
      "target" : [{
        "code" : "XM0N50",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE4",
      "target" : [{
        "code" : "XM1PB8",
        "display" : "DTP-HepB-Hib pentavalent vaccines",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE11",
      "target" : [{
        "code" : "XM1PB8",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE14",
      "target" : [{
        "code" : "XM1PB8",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE6",
      "target" : [{
        "code" : "XM9G97",
        "display" : "Pneumococcal conjugate vaccines",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE10",
      "target" : [{
        "code" : "XM9G97",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE15",
      "target" : [{
        "code" : "XM9G97",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE7",
      "target" : [{
        "code" : "XM1CE0",
        "display" : "Rotavirus vaccines",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE12",
      "target" : [{
        "code" : "XM1CE0",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE16",
      "target" : [{
        "code" : "XM1CE0",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE22",
      "target" : [{
        "code" : "XM8TF3",
        "display" : "Measles-rubella vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE26",
      "target" : [{
        "code" : "XM8TF3",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE23",
      "target" : [{
        "code" : "XM0N24",
        "display" : "Yellow fever vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE24",
      "target" : [{
        "code" : "XM2WV4",
        "display" : "Meningococcal vaccines",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE28",
      "target" : [{
        "code" : "XM32Q5",
        "display" : "Tetanus-diphtheria vaccines",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE29",
      "target" : [{
        "code" : "XM9QP0",
        "display" : "Human papillomavirus vaccines",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE19",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "IMMZ.Z.DE25",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "IMMZ.Z.DE18",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "IMMZ.Z.DE20",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "IMMZ.Z.DE21",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "IMMZ.Z.DE27",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  }]
}

```
