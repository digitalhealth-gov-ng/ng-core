# NG Patient Education Level - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Patient Education Level**

## ValueSet: NG Patient Education Level 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-patient-education-level-value-set | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgPatientEducationLevelValueSet |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.169 | |

 
Codes used for indicating the patient's highest qualification. 

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
  "id" : "ng-patient-education-level-value-set",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-patient-education-level-value-set",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.169"
  }],
  "version" : "0.0.0",
  "name" : "NgPatientEducationLevelValueSet",
  "title" : "NG Patient Education Level",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T06:18:50+01:00",
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
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA35-1",
        "display" : "No schooling"
      },
      {
        "code" : "LA32466-7",
        "display" : "Primary school education"
      },
      {
        "code" : "LA32467-5",
        "display" : "High school education"
      },
      {
        "code" : "LA15568-1",
        "display" : "Graduated from a college or university"
      },
      {
        "code" : "LA39-3",
        "display" : "Technical or trade school"
      },
      {
        "code" : "LA46-8",
        "display" : "Other"
      }]
    }]
  }
}

```
