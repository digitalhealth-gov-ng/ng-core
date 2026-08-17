# Differentiated Service Delivery - Reason For Category Change - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Differentiated Service Delivery - Reason For Category Change**

## ValueSet: Differentiated Service Delivery - Reason For Category Change 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-dsd-reason-for-category-change-vs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivDSDReasonForCategoryChangeVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.66 | |

 
Code used for indicating the reason for the category change for the DSD assessment. 

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
  "id" : "ng-hiv-dsd-reason-for-category-change-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-dsd-reason-for-category-change-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.66"
  }],
  "version" : "0.0.0",
  "name" : "NgHivDSDReasonForCategoryChangeVS",
  "title" : "Differentiated Service Delivery - Reason For Category Change",
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
  "description" : "Code used for indicating the reason for the category change for the DSD assessment.",
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
        "code" : "77978-5",
        "display" : "Patient died from illness of interest"
      },
      {
        "code" : "45237-5",
        "display" : "Date lost to HIV treatment follow-up"
      },
      {
        "code" : "45256-5",
        "display" : "HIV treatment clinic transferred to"
      },
      {
        "code" : "LA29947-1",
        "display" : "Carrier status unknown"
      },
      {
        "code" : "LA46-8",
        "display" : "Other"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-dsd-reason-for-category-change-cs"
    }]
  }
}

```
