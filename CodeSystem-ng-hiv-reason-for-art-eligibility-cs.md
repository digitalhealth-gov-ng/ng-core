# HIV Reasons For ART Eligibility - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Reasons For ART Eligibility**

## CodeSystem: HIV Reasons For ART Eligibility 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-reason-for-art-eligibility-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivReasonForARTEligibilityCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.68 | |

 
Reasons For ART Eligibility 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HIV Reasons For ART Eligibility](ValueSet-ng-hiv-reason-for-art-eligibility-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-reason-for-art-eligibility-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-reason-for-art-eligibility-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.68"
  }],
  "version" : "0.0.0",
  "name" : "NgHivReasonForARTEligibilityCS",
  "title" : "HIV Reasons For ART Eligibility",
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
  "description" : "Reasons For ART Eligibility",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "Test-and-Treat",
    "display" : "Test and treat"
  },
  {
    "code" : "Clinical-Staging",
    "display" : "Clinical Staging"
  },
  {
    "code" : "Transfer-in",
    "display" : "Transfer in"
  },
  {
    "code" : "Stage-Three",
    "display" : "Stage Three"
  },
  {
    "code" : "Stage-Four",
    "display" : "Stage Four"
  },
  {
    "code" : "Discordant-Couple",
    "display" : "Discordant couple"
  },
  {
    "code" : "Other",
    "display" : "Other"
  }]
}

```
