# HIV - Final Outcome CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV - Final Outcome CodeSystem**

## CodeSystem: HIV - Final Outcome CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-final-outcome-cs | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgHivFinalOutcomeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.52 | |

 
Final Outcome 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgHivFinalOutcomeVS](ValueSet-ng-hiv-final-outcome-value-set.md)
* [NgHivLocalConceptsVS](ValueSet-ng-hiv-local-concepts.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-final-outcome-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-final-outcome-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.52"
  }],
  "version" : "0.0.0",
  "name" : "NgHivFinalOutcomeCS",
  "title" : "HIV - Final Outcome CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-12T13:22:49+01:00",
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
  "description" : "Final Outcome",
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
    "code" : "started-art",
    "display" : "Started ART"
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
    "code" : "confirmed-referral",
    "display" : "Confirmed referral"
  },
  {
    "code" : "started-art-in-other-hf",
    "display" : "Started ART in other HF"
  },
  {
    "code" : "lost-to-follow-up",
    "display" : "Lost to Follow up"
  },
  {
    "code" : "other",
    "display" : "Other"
  }]
}

```
