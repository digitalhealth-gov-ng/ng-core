# NG Location Owner CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Location Owner CS**

## CodeSystem: NG Location Owner CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-organization-owner-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgOrganizationOwnerCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.93 | |

 
This CodeSystem defines Immunization Location Owner. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Location Owner](ValueSet-ng-organization-owner-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-organization-owner-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-organization-owner-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.93"
  }],
  "version" : "0.0.0",
  "name" : "NgOrganizationOwnerCS",
  "title" : "NG Location Owner CS",
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
  "description" : "This CodeSystem defines Immunization Location Owner.",
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
    "code" : "public",
    "display" : "Public Health Institution Location"
  },
  {
    "code" : "private",
    "display" : "Private Health Institution Location"
  },
  {
    "code" : "faith-based",
    "display" : "Faith-based Institution Locations such as churches, musques, and traditional homes"
  }]
}

```
