# Children Developmental Milestone Codes CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Children Developmental Milestone Codes CodeSystem**

## CodeSystem: Children Developmental Milestone Codes CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-children-developmental-milestone-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgChildrenDevelopmentalMilestoneCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.8 | |

 
Code used for representing the child's developmental milestone. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Children Developmental Milestone ValueSet](ValueSet-ng-children-developmental-milestone-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-children-developmental-milestone-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-children-developmental-milestone-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.8"
  }],
  "version" : "0.0.0",
  "name" : "NgChildrenDevelopmentalMilestoneCS",
  "title" : "Children Developmental Milestone Codes CodeSystem",
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
  "description" : "Code used for representing the child's developmental milestone.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "Appropriate",
    "display" : "Appropriate"
  },
  {
    "code" : "Regular",
    "display" : "Regular"
  },
  {
    "code" : "Regression",
    "display" : "Regression"
  }]
}

```
