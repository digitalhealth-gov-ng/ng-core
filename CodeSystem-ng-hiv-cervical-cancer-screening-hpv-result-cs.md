# HIV-Cervical Cancer Screening Results CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV-Cervical Cancer Screening Results CodeSystem**

## CodeSystem: HIV-Cervical Cancer Screening Results CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-cervical-cancer-screening-hpv-result-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivCervicalCancerScreeningHPVResultsCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.36 | |

 
A list of codes describing the Cervical Cancer Screening Results 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HIV-Cervical Cancer Screening Results ValueSet](ValueSet-ng-hiv-cervical-cancer-screening-result-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-cervical-cancer-screening-hpv-result-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-cervical-cancer-screening-hpv-result-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.36"
  }],
  "version" : "0.0.0",
  "name" : "NgHivCervicalCancerScreeningHPVResultsCS",
  "title" : "HIV-Cervical Cancer Screening Results CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T16:10:29+01:00",
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
  "description" : "A list of codes describing the Cervical Cancer Screening Results",
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
    "code" : "hpv-positive",
    "display" : "VIA positive"
  },
  {
    "code" : "hpv-negative",
    "display" : "VIA negative"
  },
  {
    "code" : "hpv-screening-result-unknown",
    "display" : "Screening result unknown"
  }]
}

```
