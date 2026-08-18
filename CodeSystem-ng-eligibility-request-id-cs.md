# Eligibility Request ID CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Eligibility Request ID CodeSystem**

## CodeSystem: Eligibility Request ID CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-eligibility-request-id-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgEligibilityRequestIdCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.14 | |

 
Local codes to identify the type used for an Eligibility Request identifier. Intended for use in CoverageEligibilityRequest.identifier.type. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-eligibility-request-id-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-eligibility-request-id-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.14"
  }],
  "version" : "0.0.0",
  "name" : "NgEligibilityRequestIdCS",
  "title" : "Eligibility Request ID CodeSystem",
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
  "description" : "Local codes to identify the type used for an Eligibility Request identifier.\nIntended for use in CoverageEligibilityRequest.identifier.type.",
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
    "code" : "ELAPPROVE01",
    "display" : "Eligibility Approved"
  },
  {
    "code" : "ELAPPROVE02",
    "display" : "Eligibility Response ID"
  },
  {
    "code" : "PA-2025-8847",
    "display" : "Preauthorization Approved"
  }]
}

```
