# HIV-Cervical Cancer Screening Results CodeSyetem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV-Cervical Cancer Screening Results CodeSyetem**

## CodeSystem: HIV-Cervical Cancer Screening Results CodeSyetem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-cervical-cancer-screening-via-result-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivCervicalCancerScreeningVIAResultsCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.39 | |

 
A list of codes describing the Cervical Cancer Screening Results 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HIV-Cervical Cancer Screening Results ValueSet](ValueSet-ng-hiv-cervical-cancer-screening-result-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-cervical-cancer-screening-via-result-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-cervical-cancer-screening-via-result-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.39"
  }],
  "version" : "0.0.0",
  "name" : "NgHivCervicalCancerScreeningVIAResultsCS",
  "title" : "HIV-Cervical Cancer Screening Results CodeSyetem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T13:27:53+01:00",
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
  "count" : 5,
  "concept" : [{
    "code" : "via-negative",
    "display" : "VIA negative"
  },
  {
    "code" : "via-positive-cryo-thermo-coagulation-eligible",
    "display" : "VIA positive cryo-thermo coagulation eligible"
  },
  {
    "code" : "via-positive-cryo-thermo-coagulation-non-eligible",
    "display" : "VIA positive cryo-thermo coagulation non-eligible"
  },
  {
    "code" : "cervical-cancer-suspicious",
    "display" : "Cervical cancer suspicious"
  },
  {
    "code" : "screening-result-unknown",
    "display" : "Screening result unknown"
  }]
}

```
