# NG HIV-ARV Adherence CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV-ARV Adherence CodeSystem**

## CodeSystem: NG HIV-ARV Adherence CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-adherence-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivARVAdherenceCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.28 | |

 
ARV Adherence 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV-ARV Adherence ValueSet](ValueSet-ng-hiv-arv-adherence-vs.md)
* [NG HIV Local Concepts](ValueSet-ng-hiv-local-concepts.md)



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
  "title" : "NG HIV-ARV Adherence CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T06:18:50+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
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
