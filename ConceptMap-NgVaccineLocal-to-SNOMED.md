# NG Local Vaccine Codes → SNOMED CT - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Local Vaccine Codes → SNOMED CT**

## ConceptMap: NG Local Vaccine Codes → SNOMED CT 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ConceptMap/NgVaccineLocal-to-SNOMED | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:Local_Snomed |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.18.5 | |

 
Maps local dose-labelled DE codes to SNOMED CT vaccine concepts (antigen/product level). 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "NgVaccineLocal-to-SNOMED",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ConceptMap/NgVaccineLocal-to-SNOMED",
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.18.5"
  },
  "version" : "0.0.0",
  "name" : "Local_Snomed",
  "title" : "NG Local Vaccine Codes → SNOMED CT",
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
  "description" : "Maps local dose-labelled DE codes to SNOMED CT vaccine concepts (antigen/product level).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "sourceUri" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-vaccine-local-vs",
  "targetUri" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-vaccine-snomed-vs",
  "group" : [{
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local",
    "target" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local-to-snomed-cs",
    "element" : [{
      "code" : "IMMZ.Z.DE2",
      "target" : [{
        "code" : "871822003",
        "display" : "Hepatitis B vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE3",
      "target" : [{
        "code" : "293117006",
        "display" : "Poliomyelitis vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE5",
      "target" : [{
        "code" : "293117006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE9",
      "target" : [{
        "code" : "293117006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE13",
      "target" : [{
        "code" : "293117006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE8",
      "target" : [{
        "code" : "293117006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE17",
      "target" : [{
        "code" : "293117006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE4",
      "target" : [{
        "code" : "409568008",
        "display" : "DTP-HepB-Hib vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE11",
      "target" : [{
        "code" : "409568008",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE14",
      "target" : [{
        "code" : "409568008",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE6",
      "target" : [{
        "code" : "1052328007",
        "display" : "Pneumococcal conjugate vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE10",
      "target" : [{
        "code" : "1052328007",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE15",
      "target" : [{
        "code" : "1052328007",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE7",
      "target" : [{
        "code" : "871761004",
        "display" : "Rotavirus vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE12",
      "target" : [{
        "code" : "871761004",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE16",
      "target" : [{
        "code" : "871761004",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE22",
      "target" : [{
        "code" : "871817003",
        "display" : "Measles and rubella vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE26",
      "target" : [{
        "code" : "871817003",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE23",
      "target" : [{
        "code" : "871717007",
        "display" : "Yellow fever vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE24",
      "target" : [{
        "code" : "219088009",
        "display" : "Meningococcal vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE28",
      "target" : [{
        "code" : "871826000",
        "display" : "Tetanus-diphtheria vaccine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IMMZ.Z.DE29",
      "target" : [{
        "code" : "911000221103",
        "display" : "Human papillomavirus vaccine",
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
