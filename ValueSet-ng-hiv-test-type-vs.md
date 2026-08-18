# NG HIV Test Types - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Test Types**

## ValueSet: NG HIV Test Types 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-test-type-vs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHIVTestTypeVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.142 | |

 
Nigeria HIV Test Types 

 **References** 

* [NG HIV Care and Treatment Transfer Form Questionnaire](Questionnaire-ng-hiv-transfer-form-questionnaire.md)

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
  "id" : "ng-hiv-test-type-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-test-type-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.142"
  }],
  "version" : "0.0.0",
  "name" : "NgHIVTestTypeVS",
  "title" : "NG HIV Test Types",
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
  "description" : "Nigeria HIV Test Types",
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
        "code" : "9836-8",
        "display" : "HIV proviral DNA [Presence] in Blood by Probe with amplification"
      },
      {
        "code" : "89365-1",
        "display" : "HIV 1 and 2 Ab panel - Serum, Plasma or Blood by Rapid immunoassay"
      }]
    }]
  }
}

```
