# HIV Prevention Plan - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Prevention Plan**

## ValueSet: HIV Prevention Plan 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-prevention-plan-vs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivPreventionPlanVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.121 | |

 
Codes used for representing the patient's plan for the prevention of HIV being transmitted to others. 

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
  "id" : "ng-hiv-prevention-plan-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-prevention-plan-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.121"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPreventionPlanVS",
  "title" : "HIV Prevention Plan",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T13:27:53+01:00",
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
  "description" : "Codes used for representing the patient's plan for the prevention of HIV being transmitted to others.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "266753000",
        "display" : "Referral for laboratory tests"
      },
      {
        "code" : "386467004",
        "display" : "Safe sex education"
      },
      {
        "code" : "25681007",
        "display" : "Sexually transmitted disease clinic"
      },
      {
        "code" : "445563009",
        "display" : "Counseling for sexually transmitted disease"
      }]
    },
    {
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LP157024-3",
        "display" : "HIV results shared with partner"
      },
      {
        "code" : "28355-6",
        "display" : "Substance Use Status [OMAHA]"
      }]
    }]
  }
}

```
