# NG HIV Integrated Laboratory Register DSD Status - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Integrated Laboratory Register DSD Status**

## ValueSet: NG HIV Integrated Laboratory Register DSD Status 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-register-dsd-status-vs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivIntLabRegisterDsdStatusVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.89 | |

 
DSD status codes printed in the Integrated Laboratory Monitoring Register. 

 **References** 

* [NG HIV Integrated Laboratory Monitoring Register](StructureDefinition-NgHivIntLabMonitoringRegister.md)

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
  "id" : "ng-hiv-int-lab-register-dsd-status-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-register-dsd-status-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.89"
  }],
  "version" : "0.0.0",
  "name" : "NgHivIntLabRegisterDsdStatusVS",
  "title" : "NG HIV Integrated Laboratory Register DSD Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-29",
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
  "description" : "DSD status codes printed in the Integrated Laboratory Monitoring Register.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-register-cs",
      "concept" : [{
        "code" : "1"
      },
      {
        "code" : "2"
      },
      {
        "code" : "3"
      }]
    }]
  }
}

```
