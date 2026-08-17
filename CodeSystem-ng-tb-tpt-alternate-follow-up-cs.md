# TB TPT Alternate Follow-Up CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TB TPT Alternate Follow-Up CodeSystem**

## CodeSystem: TB TPT Alternate Follow-Up CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-tpt-alternate-follow-up-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgTbTPTAlternateFollowUpCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.103 | |

 
A code indicating that the follow-up is for an alternate TPT prophylaxis. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-tb-tpt-alternate-follow-up-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-tpt-alternate-follow-up-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.103"
  }],
  "version" : "0.0.0",
  "name" : "NgTbTPTAlternateFollowUpCS",
  "title" : "TB TPT Alternate Follow-Up CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T07:55:48+01:00",
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
  "description" : "A code indicating that the follow-up is for an alternate TPT prophylaxis.",
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
    "code" : "TPT-Alternate-Follow-Up",
    "display" : "TPT Alternate Follow Up"
  }]
}

```
