# NG HIV Local Concepts to SNOMED CT - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Local Concepts to SNOMED CT**

## ConceptMap: NG HIV Local Concepts to SNOMED CT (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ConceptMap/NgHivLocalToSNOMEDCT | *Version*:0.0.0 |
| Active as of 2026-07-24 | *Computable Name*:NgHivLocalToSNOMEDCT |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.18.3 | |

 
Unidirectional mapping from local HIV-related concepts to valid SNOMED CT identifiers in the supplied source. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "NgHivLocalToSNOMEDCT",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ConceptMap/NgHivLocalToSNOMEDCT",
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.18.3"
  },
  "version" : "0.0.0",
  "name" : "NgHivLocalToSNOMEDCT",
  "title" : "NG HIV Local Concepts → SNOMED CT",
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
  "description" : "Unidirectional mapping from local HIV-related concepts to valid SNOMED CT identifiers in the supplied source.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "sourceCanonical" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-local-concepts",
  "targetCanonical" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-snomed-ct-concepts",
  "group" : [{
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-follow-up-status-cs",
    "target" : "http://snomed.info/sct",
    "element" : [{
      "code" : "alive-on-art",
      "target" : [{
        "code" : "129019007",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-positive-tracking-cs",
    "target" : "http://snomed.info/sct",
    "element" : [{
      "code" : "Not-Started",
      "target" : [{
        "code" : "410524007",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-service-provider-cs",
    "target" : "http://snomed.info/sct",
    "element" : [{
      "code" : "Health-Center",
      "target" : [{
        "code" : "257622000",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Public-Hospital",
      "target" : [{
        "code" : "276052003",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Private-Hospital",
      "target" : [{
        "code" : "309895006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "NBO-FBO-Hospital",
      "target" : [{
        "code" : "394794000",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Private-Clinic",
      "target" : [{
        "code" : "185483006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Self-referred",
      "target" : [{
        "code" : "1991000124105",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Community-Referred",
      "target" : [{
        "code" : "310391008",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-target-population-category-cs",
    "target" : "http://snomed.info/sct",
    "element" : [{
      "code" : "MSM",
      "target" : [{
        "code" : "76102007",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Female-Commercial-Sex-Workers",
      "target" : [{
        "code" : "159799000",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "TG",
      "target" : [{
        "code" : "407375002",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Mobile-Daily-Laborers",
      "target" : [{
        "code" : "106540006",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Distance-Drivers",
      "target" : [{
        "code" : "87447002",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Refugee",
      "target" : [{
        "code" : "446654005",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "People-Who-Inject-Drug",
      "target" : [{
        "code" : "226034001",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-enhanced-adherence-counselling-status-cs",
    "target" : "http://snomed.info/sct",
    "element" : [{
      "code" : "eac",
      "target" : [{
        "code" : "410265008",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
