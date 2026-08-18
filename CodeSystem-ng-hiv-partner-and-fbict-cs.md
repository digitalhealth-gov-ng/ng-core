# HIV Partner and FBICT - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Partner and FBICT**

## CodeSystem: HIV Partner and FBICT 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-partner-and-fbict-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivPartnerAndFBICTCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.57 | |

 
Codes used for indicating the patient's status for partner and Family-based Index Case Testing (FBICT). 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-partner-and-fbict-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-partner-and-fbict-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.57"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPartnerAndFBICTCS",
  "title" : "HIV Partner and FBICT",
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
  "description" : "Codes used for indicating the patient's status for partner and Family-based Index Case Testing (FBICT).",
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
    "code" : "Partner-FBICT-Eligibiity",
    "display" : "Eligible for partner and FBICT"
  },
  {
    "code" : "Partner-FBICT-Offered",
    "display" : "Offered partner and FBICT"
  },
  {
    "code" : "Partner-FBICT-Accepted",
    "display" : "Accepted partner and FBICT"
  },
  {
    "code" : "Partner-Services",
    "display" : "Partner services"
  }]
}

```
