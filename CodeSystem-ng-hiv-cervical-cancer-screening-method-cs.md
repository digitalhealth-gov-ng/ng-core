# HIV-Cervical Cancer Screening Method CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV-Cervical Cancer Screening Method CodeSystem**

## CodeSystem: HIV-Cervical Cancer Screening Method CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-cervical-cancer-screening-method-cs | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgHivCervicalCancerScreeningMethodCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.37 | |

 
A list of codes describing the Cervical Cancer Screening Method 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgHivCervicalCancerScreeningMethodVS](ValueSet-ng-hiv-cervical-cancer-screening-method-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-cervical-cancer-screening-method-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-cervical-cancer-screening-method-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.37"
  }],
  "version" : "0.0.0",
  "name" : "NgHivCervicalCancerScreeningMethodCS",
  "title" : "HIV-Cervical Cancer Screening Method CodeSystem",
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
  "description" : "A list of codes describing the Cervical Cancer Screening Method",
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
    "code" : "hpv-dna-test",
    "display" : "HPV DNA-test"
  },
  {
    "code" : "via-test",
    "display" : "VIA test"
  },
  {
    "code" : "hpv-via-test",
    "display" : "HPV VIA test"
  },
  {
    "code" : "cytology",
    "display" : "Cytology"
  }]
}

```
