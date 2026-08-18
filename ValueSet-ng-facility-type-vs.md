# NG HealthFacility Type VS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HealthFacility Type VS**

## ValueSet: NG HealthFacility Type VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-facility-type-vs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgFacilityTypeVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.20 | |

 
Classification of Nigerian health facilities 

 **References** 

* [NG Location](StructureDefinition-ng-location.md)
* [NG Immunization Facility Registration Form](Questionnaire-ng-imm-facility-registration-form.md)

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
  "id" : "ng-facility-type-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-facility-type-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.20"
  }],
  "version" : "0.0.0",
  "name" : "NgFacilityTypeVS",
  "title" : "NG HealthFacility Type VS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Classification of Nigerian health facilities",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs"
    }]
  }
}

```
