# NG CarePlan Category Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG CarePlan Category Codes**

## CodeSystem: NG CarePlan Category Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-careplan-category-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgCareplanCategoryCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.7 | |

 
Categories for CarePlan. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG CarePlan Category VS](ValueSet-ng-careplan-category-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-careplan-category-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-careplan-category-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.7"
  }],
  "version" : "0.0.0",
  "name" : "NgCareplanCategoryCS",
  "title" : "NG CarePlan Category Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T07:55:48+01:00",
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
  "description" : "Categories for CarePlan.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : false,
  "hierarchyMeaning" : "grouped-by",
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "general",
    "display" : "General care plan",
    "definition" : "Cross-cutting plan not tied to a single track."
  },
  {
    "code" : "mnch",
    "display" : "MNCH",
    "definition" : "Maternal, newborn & child health plan."
  },
  {
    "code" : "immunization",
    "display" : "Immunization",
    "definition" : "Vaccination and defaulter-tracing plan."
  },
  {
    "code" : "pharmacy",
    "display" : "Pharmacy/ePharmacy",
    "definition" : "Medication adherence/dispense plan."
  },
  {
    "code" : "claims",
    "display" : "Insurance & Claims",
    "definition" : "Financial protection and claims-related plan."
  },
  {
    "code" : "devices",
    "display" : "Medical Devices",
    "definition" : "Connected/home-monitoring device plan."
  },
  {
    "code" : "chronic",
    "display" : "Chronic disease",
    "definition" : "Hypertension, diabetes, etc."
  }]
}

```
