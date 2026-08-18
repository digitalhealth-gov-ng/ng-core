# NG HIV ART Monthly AHD Categories - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV ART Monthly AHD Categories**

## ValueSet: NG HIV ART Monthly AHD Categories 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-monthly-ahd-category-vs | *Version*:0.0.0 |
| Draft as of 2026-07-29 | *Computable Name*:NgHivArtMonthlyAhdCategoryVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.27 | |

 
AHD program categories used as subsets of ART19 and ART20. 

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
  "id" : "ng-hiv-art-monthly-ahd-category-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-monthly-ahd-category-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.27"
  }],
  "version" : "0.0.0",
  "name" : "NgHivArtMonthlyAhdCategoryVS",
  "title" : "NG HIV ART Monthly AHD Categories",
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
  "description" : "AHD program categories used as subsets of ART19 and ART20.",
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
        "code" : "newly-enrolled"
      },
      {
        "code" : "unsuppressed"
      },
      {
        "code" : "restarted"
      }]
    }]
  }
}

```
