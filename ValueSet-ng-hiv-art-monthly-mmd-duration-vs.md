# NG HIV ART Monthly MMD Duration - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV ART Monthly MMD Duration**

## ValueSet: NG HIV ART Monthly MMD Duration 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-monthly-mmd-duration-vs | *Version*:0.0.0 |
| Draft as of 2026-07-29 | *Computable Name*:NgHivArtMonthlyMmdDurationVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.37 | |

 
Multi-month dispensing duration bands. 

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
  "id" : "ng-hiv-art-monthly-mmd-duration-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-monthly-mmd-duration-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.37"
  }],
  "version" : "0.0.0",
  "name" : "NgHivArtMonthlyMmdDurationVS",
  "title" : "NG HIV ART Monthly MMD Duration",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-29",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Multi-month dispensing duration bands.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-monthly-summary-cs",
      "concept" : [{
        "code" : "mmd-lt-3-months"
      },
      {
        "code" : "mmd-3-5-months"
      },
      {
        "code" : "mmd-6-plus-months"
      }]
    }]
  }
}

```
