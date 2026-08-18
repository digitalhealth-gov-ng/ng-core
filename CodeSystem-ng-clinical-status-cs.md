# NG Adverse Event CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Adverse Event CS**

## CodeSystem: NG Adverse Event CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-clinical-status-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgClinicalStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.10 | |

 
A classification system that represents the current clinical status of an individual who experienced an Adverse Event Following Immunization (AEFI), based on medical observation, investigation, or follow-up assessment. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Clinical Status VS](ValueSet-ng-immunization-clinical-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-clinical-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-clinical-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.10"
  }],
  "version" : "0.0.0",
  "name" : "NgClinicalStatusCS",
  "title" : "NG Adverse Event CS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "A classification system that represents the current clinical status of an individual who experienced an Adverse Event Following Immunization (AEFI), based on medical observation, investigation, or follow-up assessment.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "active",
    "display" : "Active",
    "definition" : "The clinical condition is currently present, ongoing, or requires active management or monitoring."
  },
  {
    "code" : "inactive",
    "display" : "Inactive",
    "definition" : "The clinical condition is no longer present but is not considered resolved; it may recur or requires no current treatment."
  },
  {
    "code" : "resolved",
    "display" : "Resolved",
    "definition" : "The clinical condition has completely resolved and is no longer impacting the patient's health or requiring further management."
  },
  {
    "code" : "recovered",
    "display" : "Recovered",
    "definition" : "The individual has recovered fully from the adverse event without any long-term effects or sequelae."
  },
  {
    "code" : "recovered-with-sequelae",
    "display" : "Recovered with sequelae",
    "definition" : "The individual has recovered from the adverse event but with lasting effects, complications, or disabilities."
  },
  {
    "code" : "death",
    "display" : "Death",
    "definition" : "The adverse event resulted in the death of the individual."
  }]
}

```
