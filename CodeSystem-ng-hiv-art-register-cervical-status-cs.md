# NG HIV ART Register Cervical Cancer Screening Status Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV ART Register Cervical Cancer Screening Status Codes**

## CodeSystem: NG HIV ART Register Cervical Cancer Screening Status Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-register-cervical-status-cs | *Version*:0.0.0 |
| Draft as of 2026-07-28 | *Computable Name*:NgHivArtRegisterCervicalStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.21 | |

 
Combined cervical-cancer screening workflow statuses printed in column A27 of the National ART Register. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV ART Register Cervical Cancer Screening Status](ValueSet-ng-hiv-art-register-cervical-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-art-register-cervical-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-register-cervical-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.21"
  }],
  "version" : "0.0.0",
  "name" : "NgHivArtRegisterCervicalStatusCS",
  "title" : "NG HIV ART Register Cervical Cancer Screening Status Codes",
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
  "description" : "Combined cervical-cancer screening workflow statuses printed in column A27 of the National ART Register.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "1",
    "display" : "Not ordered"
  },
  {
    "code" : "2",
    "display" : "Ordered, yet to screen"
  },
  {
    "code" : "3",
    "display" : "Screened negative"
  },
  {
    "code" : "4",
    "display" : "Screened positive, yet to treat"
  },
  {
    "code" : "5",
    "display" : "Screened positive and treated"
  },
  {
    "code" : "6",
    "display" : "Screened positive and referred"
  },
  {
    "code" : "7",
    "display" : "Screened positive and declined treatment"
  },
  {
    "code" : "8",
    "display" : "Suspicious for cancer"
  },
  {
    "code" : "9",
    "display" : "Other finding"
  }]
}

```
