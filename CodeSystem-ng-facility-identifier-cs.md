# NG Facility Identifier CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Facility Identifier CS**

## CodeSystem: NG Facility Identifier CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-identifier-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgFacilityIdentifierCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.15 | |

 
This CodeSystem IMMZ.A.DE1 defines placeholder codes to manage Facility identifiers in Nigeria. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Clinical Status VS](ValueSet-ng-facility-identifier-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-facility-identifier-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-identifier-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.15"
  }],
  "version" : "0.0.0",
  "name" : "NgFacilityIdentifierCS",
  "title" : "NG Facility Identifier CS",
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
  "description" : "This CodeSystem IMMZ.A.DE1 defines placeholder codes to manage Facility identifiers in Nigeria.",
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
  "count" : 11,
  "concept" : [{
    "code" : "HCF-45231",
    "display" : "1"
  },
  {
    "code" : "HCF-12342",
    "display" : "2"
  },
  {
    "code" : "HCF-12343",
    "display" : "3"
  },
  {
    "code" : "HCF-12344",
    "display" : "4"
  },
  {
    "code" : "HCF-12345",
    "display" : "5"
  },
  {
    "code" : "HCF-12346",
    "display" : "6"
  },
  {
    "code" : "HCF-12347",
    "display" : "7"
  },
  {
    "code" : "CLM-2025-0001",
    "display" : "Claims Institution"
  },
  {
    "code" : "NHIA-0011223344",
    "display" : "Insurance Organization"
  },
  {
    "code" : "HOSPITAL1234",
    "display" : "Hospital ID example"
  },
  {
    "code" : "HMO876653",
    "display" : "Cool HMO"
  }]
}

```
