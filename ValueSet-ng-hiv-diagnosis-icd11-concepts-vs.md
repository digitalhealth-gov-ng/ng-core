# Nigeria HIV ICD-11 Diagnosis Concepts - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria HIV ICD-11 Diagnosis Concepts**

## ValueSet: Nigeria HIV ICD-11 Diagnosis Concepts (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-diagnosis-icd11-concepts-vs | *Version*:0.0.0 |
| Active as of 2026-08-15 | *Computable Name*:NgHivDiagnosisICD11ConceptsVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.216 | |

 
ICD-11 MMS target concepts used by the Nigeria HIV diagnosis ConceptMap. 

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
  "id" : "ng-hiv-diagnosis-icd11-concepts-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-diagnosis-icd11-concepts-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.216"
  }],
  "version" : "0.0.0",
  "name" : "NgHivDiagnosisICD11ConceptsVS",
  "title" : "Nigeria HIV ICD-11 Diagnosis Concepts",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-15",
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
  "description" : "ICD-11 MMS target concepts used by the Nigeria HIV diagnosis ConceptMap.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://id.who.int/icd/release/11/mms",
      "concept" : [{
        "code" : "1F27.1"
      },
      {
        "code" : "1F2A"
      }]
    }]
  }
}

```
