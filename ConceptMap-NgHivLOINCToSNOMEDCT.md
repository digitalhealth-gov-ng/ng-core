# NG HIV LOINC to SNOMED CT - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV LOINC to SNOMED CT**

## ConceptMap: NG HIV LOINC to SNOMED CT (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ConceptMap/NgHivLOINCToSNOMEDCT | *Version*:0.0.0 |
| Active as of 2026-07-24 | *Computable Name*:NgHivLOINCToSNOMEDCT |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.18.1 | |

 
Unidirectional LOINC-to-SNOMED CT mappings present in the supplied HIV ConceptMap. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "NgHivLOINCToSNOMEDCT",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ConceptMap/NgHivLOINCToSNOMEDCT",
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.18.1"
  },
  "version" : "0.0.0",
  "name" : "NgHivLOINCToSNOMEDCT",
  "title" : "Nigeria HIV LOINC → SNOMED CT",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-24",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Unidirectional LOINC-to-SNOMED CT mappings present in the supplied HIV ConceptMap.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "sourceCanonical" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-loinc-concepts",
  "targetCanonical" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-snomed-ct-concepts",
  "group" : [{
    "source" : "http://loinc.org",
    "target" : "http://snomed.info/sct",
    "element" : [{
      "code" : "LA8969-3",
      "target" : [{
        "code" : "135818000",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "LA8968-5",
      "target" : [{
        "code" : "135817005",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "LA8967-7",
      "target" : [{
        "code" : "135815002",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "101819-1",
      "target" : [{
        "code" : "87276001",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "56072-2",
      "target" : [{
        "code" : "284473002",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "25836-8",
      "target" : [{
        "code" : "315124004",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
