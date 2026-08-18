# NG HIV Prior ART - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Prior ART**

## ValueSet: NG HIV Prior ART 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-prior-art-vs | *Version*:0.0.0 |
| Draft as of 2026-07-27 | *Computable Name*:NgHivPriorArtVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.122 | |

 
Prior-ART codes used on the Nigeria HIV Care/ART Card. 

 **References** 

* [NG HIV Care and ART Questionnaire](Questionnaire-ng-hiv-care-art-questionnaire.md)

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
  "id" : "ng-hiv-prior-art-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-prior-art-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.122"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPriorArtVS",
  "title" : "NG HIV Prior ART",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-27",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Prior-ART codes used on the Nigeria HIV Care/ART Card.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-art-codes-cs",
      "concept" : [{
        "code" : "prior-art-1"
      },
      {
        "code" : "prior-art-2"
      },
      {
        "code" : "prior-art-3"
      },
      {
        "code" : "prior-art-4"
      }]
    }]
  }
}

```
