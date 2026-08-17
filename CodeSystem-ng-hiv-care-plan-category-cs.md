# HIV-Care Plan Categories CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV-Care Plan Categories CodeSystem**

## CodeSystem: HIV-Care Plan Categories CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-plan-category-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivCarePlanCategoryCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.34 | |

 
A list of codes describing Care Plan categories. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-care-plan-category-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-plan-category-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.34"
  }],
  "version" : "0.0.0",
  "name" : "NgHivCarePlanCategoryCS",
  "title" : "HIV-Care Plan Categories CodeSystem",
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
  "description" : "A list of codes describing Care Plan categories.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "cervical-cancer-care-plan",
    "display" : "Cervical Cancer Care Plan"
  },
  {
    "code" : "art-follow-up-care-plan",
    "display" : "ART Follow-up Care Plan"
  },
  {
    "code" : "cotrimoxazole-care-plan",
    "display" : "Cotrimoxazole Preventive Therapy Care Plan"
  },
  {
    "code" : "tb-treatment-care-plan",
    "display" : "TB Treatment Care Plan"
  },
  {
    "code" : "tb-preventive-therapy-care-plan",
    "display" : "TB Preventive Therapy Care Plan"
  }]
}

```
