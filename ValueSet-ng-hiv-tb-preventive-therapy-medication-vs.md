# NG HIV TB Preventive Therapy Medications - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV TB Preventive Therapy Medications**

## ValueSet: NG HIV TB Preventive Therapy Medications 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-tb-preventive-therapy-medication-vs | *Version*:0.0.0 |
| Draft as of 2026-07-28 | *Computable Name*:NgHivTbPreventiveTherapyMedicationVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.138 | |

 
TB preventive therapy medicines or regimens listed on the Nigeria Combined Pharmacy Order Form. 

 **References** 

* [NG HIV Combined Pharmacy Order Form Questionnaire](Questionnaire-ng-hiv-pharmacy-order-questionnaire.md)

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
  "id" : "ng-hiv-tb-preventive-therapy-medication-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-tb-preventive-therapy-medication-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.138"
  }],
  "version" : "0.0.0",
  "name" : "NgHivTbPreventiveTherapyMedicationVS",
  "title" : "NG HIV TB Preventive Therapy Medications",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-28",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "TB preventive therapy medicines or regimens listed on the Nigeria Combined Pharmacy Order Form.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-pharmacy-order-cs",
      "concept" : [{
        "code" : "tpt-isoniazid-100"
      },
      {
        "code" : "tpt-isoniazid-300"
      },
      {
        "code" : "tpt-isoniazid-rifapentine-3hp"
      },
      {
        "code" : "tpt-other"
      }]
    }]
  }
}

```
