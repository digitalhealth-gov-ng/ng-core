# HIV Absent or Unknown CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Absent or Unknown CodeSystem**

## CodeSystem: HIV Absent or Unknown CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-absent-unknown-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivAbsentUnknownCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.17 | |

 
Codes used for indicating when a value is absent or unknown. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Yes/No Codes VS](ValueSet-ng-yes-no-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-absent-unknown-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-absent-unknown-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.17"
  }],
  "version" : "0.0.0",
  "name" : "NgHivAbsentUnknownCS",
  "title" : "HIV Absent or Unknown CodeSystem",
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
  "description" : "Codes used for indicating when a value is absent or unknown.",
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
    "code" : "Absent-or-unknown",
    "display" : "Absent or unknown",
    "definition" : "When the value is not available at the time of the event"
  },
  {
    "code" : "Not-Applicable",
    "display" : "Not Applicable",
    "definition" : "The value is not applicable for one or more reasons that are captured by the clinician"
  }]
}

```
