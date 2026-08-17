# Differentiated Service Delivery - Assessment Status - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Differentiated Service Delivery - Assessment Status**

## CodeSystem: Differentiated Service Delivery - Assessment Status 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-dsd-assessment-status-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivDSDAssessmentStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.41 | |

 
Code used for indicating the status of the DSD assessment. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Differentiated Service Delivery - Assessment Status](ValueSet-ng-hiv-dsd-assessment-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-dsd-assessment-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-dsd-assessment-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.41"
  }],
  "version" : "0.0.0",
  "name" : "NgHivDSDAssessmentStatusCS",
  "title" : "Differentiated Service Delivery - Assessment Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T16:10:29+01:00",
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
  "description" : "Code used for indicating the status of the DSD assessment.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "Stable",
    "display" : "Stable"
  },
  {
    "code" : "Unstable",
    "display" : "Unstable"
  }]
}

```
