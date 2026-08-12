# Nigeria Core Observation Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Core Observation Codes**

## CodeSystem: Nigeria Core Observation Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-observation-code | *Version*:0.0.0 |
| Active as of 2026-08-02 | *Computable Name*:NgObservationCodeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.92 | |

 
Local codes used to identify Nigeria Core observations that do not have an appropriate code in an established terminology. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-observation-code",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-observation-code",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.92"
  }],
  "version" : "0.0.0",
  "name" : "NgObservationCodeCS",
  "title" : "Nigeria Core Observation Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-02",
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
  "description" : "Local codes used to identify Nigeria Core observations that do not\nhave an appropriate code in an established terminology.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "client-registration-summary",
    "display" : "Client registration observation summary",
    "definition" : "A composite observation used during client registration to group selected age, pregnancy status, HIV status, and birth weight information."
  }]
}

```
