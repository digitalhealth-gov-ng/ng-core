# HIV-Nature of Encounter CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV-Nature of Encounter CodeSystem**

## CodeSystem: HIV-Nature of Encounter CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-encounter-visit-type-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivEncounterVisitTypeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.49 | |

 
A list of codes describing the nature of the patient visit to the health facility 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HIV-Nature of Encounter ValueSet](ValueSet-ng-hiv-encounter-visit-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-encounter-visit-type-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-encounter-visit-type-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.49"
  }],
  "version" : "0.0.0",
  "name" : "NgHivEncounterVisitTypeCS",
  "title" : "HIV-Nature of Encounter CodeSystem",
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
  "description" : "A list of codes describing the nature of the patient visit to the health facility",
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
    "code" : "unscheduled",
    "display" : "Unscheduled"
  },
  {
    "code" : "scheduled",
    "display" : "Scheduled"
  }]
}

```
