# HIV Period of HIV Exposure - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Period of HIV Exposure**

## CodeSystem: HIV Period of HIV Exposure 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-period-of-hiv-exposure-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivPeriodOfHIVExposureCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.59 | |

 
Codes used for indicating the period when last the individual was exposed to HIV. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Period of HIV Exposure](ValueSet-ng-hiv-period-of-hiv-exposure-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-period-of-hiv-exposure-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-period-of-hiv-exposure-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.59"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPeriodOfHIVExposureCS",
  "title" : "HIV Period of HIV Exposure",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Codes used for indicating the period when last the individual was exposed to HIV.",
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
    "code" : "<3Mths",
    "display" : "Less than 3 months"
  },
  {
    "code" : "3-12Mths",
    "display" : "In 3 to 12 months"
  },
  {
    "code" : ">12Mths",
    "display" : "Greater than 12 months"
  }]
}

```
