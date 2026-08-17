# NG Immunization Session types CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Immunization Session types CS**

## CodeSystem: NG Immunization Session types CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-immunization-session-type-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgImmunizationSessionTypeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.87 | |

 
Type of session for immunization Could be in a fixed facility, outreach or mobile. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Session Type VS](ValueSet-ng-immunization-session-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-immunization-session-type-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-immunization-session-type-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.87"
  }],
  "version" : "0.0.0",
  "name" : "NgImmunizationSessionTypeCS",
  "title" : "NG Immunization Session types CS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T16:10:29+01:00",
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
  "description" : "Type of session for immunization Could be in a fixed facility, outreach or mobile.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "fixed",
    "display" : "Fixed session",
    "definition" : "An immunization session conducted at a static health facility or designated fixed site where routine immunization services are regularly available."
  },
  {
    "code" : "outreach",
    "display" : "Outreach session",
    "definition" : "An immunization session conducted outside of fixed sites, typically within a 5-10 km radius of a health facility, aimed at increasing access for underserved populations."
  },
  {
    "code" : "mobile",
    "display" : "Mobile session",
    "definition" : "An immunization session delivered by a mobile team traveling to hard-to-reach or remote areas beyond the normal outreach distance, often using vehicles or other transport."
  }]
}

```
