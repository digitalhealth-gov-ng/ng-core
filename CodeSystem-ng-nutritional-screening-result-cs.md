# Nutritional Screening Result Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nutritional Screening Result Codes**

## CodeSystem: Nutritional Screening Result Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-nutritional-screening-result-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgNutritionalScreeningResultCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.90 | |

 
Codes used for representing the patient's nutritional screening result. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Nutritional Screening Result](ValueSet-ng-nutritional-screening-result-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-nutritional-screening-result-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-nutritional-screening-result-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.90"
  }],
  "version" : "0.0.0",
  "name" : "NgNutritionalScreeningResultCS",
  "title" : "Nutritional Screening Result Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Codes used for representing the patient's nutritional screening result.",
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
    "code" : "Normal",
    "display" : "Normal"
  },
  {
    "code" : "Undernourished",
    "display" : "Undernourished"
  },
  {
    "code" : "Over-weight",
    "display" : "Over weight"
  }]
}

```
