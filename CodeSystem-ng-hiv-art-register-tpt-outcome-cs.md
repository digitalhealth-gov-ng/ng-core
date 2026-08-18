# NG HIV ART Register TPT Outcome Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV ART Register TPT Outcome Codes**

## CodeSystem: NG HIV ART Register TPT Outcome Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-register-tpt-outcome-cs | *Version*:0.0.0 |
| Draft as of 2026-07-28 | *Computable Name*:NgHivArtRegisterTptOutcomeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.27 | |

 
TB preventive-therapy outcome codes printed in column A22 of the National ART Register. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV ART Register TPT Outcome](ValueSet-ng-hiv-art-register-tpt-outcome-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-art-register-tpt-outcome-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-register-tpt-outcome-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.27"
  }],
  "version" : "0.0.0",
  "name" : "NgHivArtRegisterTptOutcomeCS",
  "title" : "NG HIV ART Register TPT Outcome Codes",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-28",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "TB preventive-therapy outcome codes printed in column A22 of the National ART Register.",
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
    "code" : "1",
    "display" : "Treatment completed"
  },
  {
    "code" : "2",
    "display" : "Lost to follow-up"
  },
  {
    "code" : "3",
    "display" : "Stopped TPT"
  },
  {
    "code" : "4",
    "display" : "Developed active TB"
  },
  {
    "code" : "5",
    "display" : "Died"
  }]
}

```
