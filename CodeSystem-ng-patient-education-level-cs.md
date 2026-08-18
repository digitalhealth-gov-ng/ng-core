# NG Patient Education Level Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Patient Education Level Codes**

## CodeSystem: NG Patient Education Level Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-education-level-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgPatientEducationLevelCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.94 | |

 
Codes used for indicating the patient's highest qualification. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Local Concepts](ValueSet-ng-hiv-local-concepts.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-patient-education-level-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-education-level-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.94"
  }],
  "version" : "0.0.0",
  "name" : "NgPatientEducationLevelCS",
  "title" : "NG Patient Education Level Codes",
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
  "description" : "Codes used for indicating the patient's highest qualification.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "No-Education",
    "display" : "No education"
  },
  {
    "code" : "Primary",
    "display" : "Primary"
  },
  {
    "code" : "Secondary",
    "display" : "Secondary"
  },
  {
    "code" : "Tertiary",
    "display" : "Tertiary"
  },
  {
    "code" : "TVET",
    "display" : "TVET"
  },
  {
    "code" : "Other",
    "display" : "Other, specify"
  }]
}

```
