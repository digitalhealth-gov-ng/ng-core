# HIV-ARV Adherence CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV-ARV Adherence CodeSystem**

## CodeSystem: HIV-ARV Adherence CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-adherence-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivARVAdherenceCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.28 | |

 
ARV Adherence 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HIV-ARV Adherence ValueSet](ValueSet-ng-hiv-arv-adherence-vs.md)
* [Nigeria HIV Local Concepts](ValueSet-ng-hiv-local-concepts.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-arv-adherence-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-adherence-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.28"
  }],
  "version" : "0.0.0",
  "name" : "NgHivARVAdherenceCS",
  "title" : "HIV-ARV Adherence CodeSystem",
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
  "description" : "ARV Adherence",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "Stopped",
    "display" : "Stopped"
  }]
}

```
