# HIV - Reason Not Started ART CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV - Reason Not Started ART CodeSystem**

## CodeSystem: HIV - Reason Not Started ART CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-reason-not-started-art-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivReasonNotStartedARTCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.69 | |

 
Reason Not Started ART 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Local Concepts](ValueSet-ng-hiv-local-concepts.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-reason-not-started-art-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-reason-not-started-art-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.69"
  }],
  "version" : "0.0.0",
  "name" : "NgHivReasonNotStartedARTCS",
  "title" : "HIV - Reason Not Started ART CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Reason Not Started ART",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "referred-tx-not-initiated",
    "display" : "Referred TX not initiated"
  },
  {
    "code" : "declined",
    "display" : "Declined"
  },
  {
    "code" : "died",
    "display" : "Died"
  },
  {
    "code" : "known-positive-on-art",
    "display" : "Known +ve on ART"
  },
  {
    "code" : "on-adherence-preparation",
    "display" : "On adherence preparation"
  },
  {
    "code" : "on-oi-management",
    "display" : "On OI management"
  },
  {
    "code" : "other",
    "display" : "Other Specify here"
  }]
}

```
