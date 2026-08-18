# NG Relationships CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Relationships CS**

## CodeSystem: NG Relationships CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-relationship-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgRelationshipsCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.99 | |

 
This CodeSystem defines list of persons related to a patient, but who is not a direct target of care 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Relationships VS](ValueSet-ng-relationships-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-relationship-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-relationship-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.99"
  }],
  "version" : "0.0.0",
  "name" : "NgRelationshipsCS",
  "title" : "NG Relationships CS",
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
  "description" : "This CodeSystem defines list of persons related to a patient, but who is not a direct target of care",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 15,
  "concept" : [{
    "code" : "BROTHER",
    "display" : "Brother"
  },
  {
    "code" : "SISTER",
    "display" : "Sister"
  },
  {
    "code" : "SON",
    "display" : "Son"
  },
  {
    "code" : "DAUGHTER",
    "display" : "Daughter"
  },
  {
    "code" : "MOTHER",
    "display" : "Mother"
  },
  {
    "code" : "FATHER",
    "display" : "Father"
  },
  {
    "code" : "AUNT",
    "display" : "Aunt"
  },
  {
    "code" : "COUSIN",
    "display" : "Cousin"
  },
  {
    "code" : "GRDSON",
    "display" : "Grand Son"
  },
  {
    "code" : "GRDDAU",
    "display" : "Grand Daughter"
  },
  {
    "code" : "INLAW",
    "display" : "Inlaw"
  },
  {
    "code" : "NEPHEW",
    "display" : "Nephew"
  },
  {
    "code" : "NIECE",
    "display" : "Niece"
  },
  {
    "code" : "UNCLE",
    "display" : "Uncle"
  },
  {
    "code" : "FRND",
    "display" : "Friend"
  }]
}

```
