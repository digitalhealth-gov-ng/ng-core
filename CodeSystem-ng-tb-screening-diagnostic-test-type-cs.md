# TB Screening Diagnostic Test Type Codes CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TB Screening Diagnostic Test Type Codes CodeSystem**

## CodeSystem: TB Screening Diagnostic Test Type Codes CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-screening-diagnostic-test-type-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgTBScreeningDiagnosticTestTypeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.102 | |

 
A list of codes describing the types of diagnostic tests that can be peformed on the specimen taken during TB screening. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TB Screening Diagnostic Test Type Codes ValueSet](ValueSet-ng-tb-screening-diagnostic-test-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-tb-screening-diagnostic-test-type-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-tb-screening-diagnostic-test-type-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.102"
  }],
  "version" : "0.0.0",
  "name" : "NgTBScreeningDiagnosticTestTypeCS",
  "title" : "TB Screening Diagnostic Test Type Codes CodeSystem",
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
  "description" : "A list of codes describing the types of diagnostic tests that can be peformed on the specimen taken during TB screening.",
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
    "code" : "Smear-microscopy-only",
    "display" : "Smear microscopy only"
  },
  {
    "code" : "Gene-xpert-MTB/RIF-assay-with-other-testing",
    "display" : "Gene-Xpert(MTB/RIF assay) with other testing"
  },
  {
    "code" : "Gene-xpert-MTB/RIF-assay-without-other-testing",
    "display" : "Gene-Xpert(MTB/RIF assay) without other testing"
  },
  {
    "code" : "Additional-tests-other-than-Gene-Xpert",
    "display" : "Additional tests other than Gene-Xpert"
  }]
}

```
