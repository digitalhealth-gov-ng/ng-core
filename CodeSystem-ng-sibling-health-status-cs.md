# NG Health Status CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Health Status CS**

## CodeSystem: NG Health Status CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-sibling-health-status-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgSiblingHealthStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.100 | |

 
This CodeSystem IMMZ.C.DE30 defines the health of the client's sibling 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Sibling Health Status VS](ValueSet-ng-sibling-health-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-sibling-health-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-sibling-health-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.100"
  }],
  "version" : "0.0.0",
  "name" : "NgSiblingHealthStatusCS",
  "title" : "NG Health Status CS",
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
  "description" : "This CodeSystem IMMZ.C.DE30 defines the health of the client's sibling",
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
    "code" : "ALIVE",
    "display" : "Alive",
    "definition" : "Sibling referenced is still alive"
  },
  {
    "code" : "DEAD",
    "display" : "Dead",
    "definition" : "Sibling referenced is dead"
  },
  {
    "code" : "WELL",
    "display" : "well",
    "definition" : "Sibling reference is alive and well"
  },
  {
    "code" : "ILL",
    "display" : "underlying disease",
    "definition" : "Referenced Sibling has an underlying disease"
  }]
}

```
