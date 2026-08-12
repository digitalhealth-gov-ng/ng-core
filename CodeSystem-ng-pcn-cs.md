# NG Practitioner Identifier CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Practitioner Identifier CS**

## CodeSystem: NG Practitioner Identifier CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-pcn-cs | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgPcnCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.96 | |

 
This CodeSystem defines placeholder codes to manage Pharmcists' identifiers in Nigeria validated at https://pcn.gov.ng/practice-number. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-pcn-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-pcn-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.96"
  }],
  "version" : "0.0.0",
  "name" : "NgPcnCS",
  "title" : "NG Practitioner Identifier CS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-12T13:22:49+01:00",
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
  "description" : "This CodeSystem defines placeholder codes to manage Pharmcists' identifiers in Nigeria validated at  https://pcn.gov.ng/practice-number.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "hierarchyMeaning" : "grouped-by",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "PCN-45231",
    "display" : "1"
  },
  {
    "code" : "PCN-12345",
    "display" : "2"
  }]
}

```
