# NG HIV Integrated Laboratory Register Viral-Load Disaggregation - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Integrated Laboratory Register Viral-Load Disaggregation**

## ValueSet: NG HIV Integrated Laboratory Register Viral-Load Disaggregation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-register-viral-load-disaggregation-vs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivIntLabRegisterViralLoadDisaggregationVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.94 | |

 
Sex and age-band disaggregation categories represented by columns A52–A67. 

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
  "id" : "ng-hiv-int-lab-register-viral-load-disaggregation-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-register-viral-load-disaggregation-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.94"
  }],
  "version" : "0.0.0",
  "name" : "NgHivIntLabRegisterViralLoadDisaggregationVS",
  "title" : "NG HIV Integrated Laboratory Register Viral-Load Disaggregation",
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
  "description" : "Sex and age-band disaggregation categories represented by columns A52–A67.",
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
        "code" : "male-under-1"
      },
      {
        "code" : "male-1-4"
      },
      {
        "code" : "male-5-9"
      },
      {
        "code" : "male-10-14"
      },
      {
        "code" : "male-15-19"
      },
      {
        "code" : "male-20-24"
      },
      {
        "code" : "male-25-49"
      },
      {
        "code" : "male-50-plus"
      },
      {
        "code" : "female-under-1"
      },
      {
        "code" : "female-1-4"
      },
      {
        "code" : "female-5-9"
      },
      {
        "code" : "female-10-14"
      },
      {
        "code" : "female-15-19"
      },
      {
        "code" : "female-20-24"
      },
      {
        "code" : "female-25-49"
      },
      {
        "code" : "female-50-plus"
      }]
    }]
  }
}

```
