# NG HIV Tracking Register Person Contacted Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Tracking Register Person Contacted Codes**

## CodeSystem: NG HIV Tracking Register Person Contacted Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-person-contacted-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivTrackingPersonContactedCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.82 | |

 
Person-contacted codes printed for T19–T23. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Tracking Register Person Contacted](ValueSet-ng-hiv-tracking-person-contacted-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-tracking-person-contacted-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-person-contacted-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.82"
  }],
  "version" : "0.0.0",
  "name" : "NgHivTrackingPersonContactedCS",
  "title" : "NG HIV Tracking Register Person Contacted Codes",
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
  "description" : "Person-contacted codes printed for T19–T23.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "G",
    "display" : "Guardian"
  },
  {
    "code" : "CL",
    "display" : "Client"
  },
  {
    "code" : "TxP",
    "display" : "Treatment partner"
  },
  {
    "code" : "NC",
    "display" : "Not contacted"
  }]
}

```
