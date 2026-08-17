# HIV Physical Examinations - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Physical Examinations**

## ValueSet: HIV Physical Examinations 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-physical-exam-vs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivPhysicalExamVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.116 | |

 
Codes used for representing a physical examination. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ng-hiv-physical-exam-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-physical-exam-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.116"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPhysicalExamVS",
  "title" : "HIV Physical Examinations",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T07:55:48+01:00",
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
  "description" : "Codes used for representing a physical examination.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "11424-9",
        "display" : "Physical findings of Ears and Nose and Mouth and Throat"
      },
      {
        "code" : "32450-9",
        "display" : "Physical findings of Lymph node"
      },
      {
        "code" : "11391-0",
        "display" : "Physical findings of Chest Narrative"
      },
      {
        "code" : "10200-4",
        "display" : "Physical findings of Heart Narrative"
      },
      {
        "code" : "10191-5",
        "display" : "Physical findings of Abdomen Narrative"
      },
      {
        "code" : "10198-0",
        "display" : "Physical findings of Genitourinary tract Narrative"
      },
      {
        "code" : "11410-8",
        "display" : "Physical findings of Musculoskeletal system Narrative"
      },
      {
        "code" : "10206-1",
        "display" : "Physical findings of Skin Narrative"
      },
      {
        "code" : "10202-0",
        "display" : "Physical findings of Nervous system Narrative"
      }]
    }]
  }
}

```
