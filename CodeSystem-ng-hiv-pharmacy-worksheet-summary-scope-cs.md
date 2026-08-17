# NG HIV Pharmacy Worksheet Summary Scopes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Pharmacy Worksheet Summary Scopes**

## CodeSystem: NG HIV Pharmacy Worksheet Summary Scopes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-pharmacy-worksheet-summary-scope-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivPharmacyWorksheetSummaryScopeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.65 | |

 
The three summary rows printed at the bottom of the worksheet. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Pharmacy Worksheet Summary Scope](ValueSet-ng-hiv-pharmacy-worksheet-summary-scope-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-pharmacy-worksheet-summary-scope-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-pharmacy-worksheet-summary-scope-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.65"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPharmacyWorksheetSummaryScopeCS",
  "title" : "NG HIV Pharmacy Worksheet Summary Scopes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-29",
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
  "description" : "The three summary rows printed at the bottom of the worksheet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "page",
    "display" : "Total for this page"
  },
  {
    "code" : "day",
    "display" : "Cumulative total for the day"
  },
  {
    "code" : "month",
    "display" : "Cumulative total for the month"
  }]
}

```
