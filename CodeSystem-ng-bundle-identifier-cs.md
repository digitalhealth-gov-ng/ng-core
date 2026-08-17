# NG Bundle Identifier Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Bundle Identifier Codes**

## CodeSystem: NG Bundle Identifier Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-bundle-identifier-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgBundleIdentifierCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.5 | |

 
Local CodeSystem defining standard bundle identifiers. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Bundle Identifier Codes](ValueSet-ng-bundle-identifier-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-bundle-identifier-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-bundle-identifier-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.5"
  }],
  "version" : "0.0.0",
  "name" : "NgBundleIdentifierCS",
  "title" : "NG Bundle Identifier Codes",
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
  "description" : "Local CodeSystem defining standard bundle identifiers.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "BND-0001",
    "display" : "Immunization Submission Bundle",
    "definition" : "Bundle containing patient, encounter, and immunization resources for reporting vaccination events."
  },
  {
    "code" : "BND-0002",
    "display" : "MNCH Referral Bundle",
    "definition" : "Bundle for maternal and child health referral workflows between facilities."
  },
  {
    "code" : "BND-0003",
    "display" : "Claims Transaction Bundle",
    "definition" : "Bundle for HMO–hospital claims submission containing Coverage and Claim entries."
  },
  {
    "code" : "BND-0004",
    "display" : "Pharmacy Dispense Bundle",
    "definition" : "Bundle for dispensing medication under ePharmacy workflows."
  },
  {
    "code" : "BND-0005",
    "display" : "Lab Result Bundle",
    "definition" : "Bundle containing DiagnosticReport and Observation results transmitted from analyzer or LIMS."
  },
  {
    "code" : "BND-0006",
    "display" : "Device Task Execution Bundle",
    "definition" : "Bundle used for recording medical device metrics and related task execution details."
  },
  {
    "code" : "BND-0007",
    "display" : "AEFI Reporting Bundle",
    "definition" : "Bundle for Adverse Event Following Immunization (AEFI) reports with patient, encounter, and observation details."
  },
  {
    "code" : "BND-0008",
    "display" : "Defaulter Tracing Bundle",
    "definition" : "Bundle for tracking and updating missed immunization or follow-up cases."
  },
  {
    "code" : "BND-0009",
    "display" : "CarePlan Synchronization Bundle",
    "definition" : "Bundle for synchronizing patient care plans across connected systems."
  },
  {
    "code" : "BND-0010",
    "display" : "Document Exchange Bundle",
    "definition" : "Bundle representing a signed clinical document or summary shared between organizations."
  },
  {
    "code" : "IPS-BND-0001",
    "display" : "Document Exchange for IPS bundle",
    "definition" : "Bundle representing an IPS composition an its referenced resources"
  }]
}

```
