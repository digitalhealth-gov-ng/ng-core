# TB Eligility Status for TPT Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TB Eligility Status for TPT Codes**

## CodeSystem: TB Eligility Status for TPT Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-tpt-eligibility-status-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgTbTPTEligibilityStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.104 | |

 
Observation codes used for indicating whether the patient is eligible for TPT. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-tb-tpt-eligibility-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-tpt-eligibility-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.104"
  }],
  "version" : "0.0.0",
  "name" : "NgTbTPTEligibilityStatusCS",
  "title" : "TB Eligility Status for TPT Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T06:18:50+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Observation codes used for indicating whether the patient is eligible for TPT.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "Eligible-For-TPT",
    "display" : "Is Eligible for TPT"
  },
  {
    "code" : "TPT-Reason-Not-Eligible",
    "display" : "Reason Not Eligible for TPT"
  }]
}

```
