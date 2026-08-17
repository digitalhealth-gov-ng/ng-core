# HIV Eligility Status for ART Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Eligility Status for ART Codes**

## CodeSystem: HIV Eligility Status for ART Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-eligibility-status-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivARTEligibilityStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.18 | |

 
Observation codes used for indicating patient eligibility for ART. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ART Eligibility Status](ValueSet-ng-hiv-art-eligibility-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-art-eligibility-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-eligibility-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.18"
  }],
  "version" : "0.0.0",
  "name" : "NgHivARTEligibilityStatusCS",
  "title" : "HIV Eligility Status for ART Codes",
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
  "description" : "Observation codes used for indicating patient eligibility for ART.",
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
    "code" : "Not-Eligible",
    "display" : "Not Eligible"
  },
  {
    "code" : "Eligible",
    "display" : "Eligible"
  },
  {
    "code" : "Eligible-and-Ready",
    "display" : "Eligible and Ready"
  }]
}

```
