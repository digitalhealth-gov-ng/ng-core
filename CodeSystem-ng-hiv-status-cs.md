# NG Client HIV status CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Client HIV status CS**

## CodeSystem: NG Client HIV status CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-status-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.72 | |

 
This CodeSystem IMMZ.C.DE31 defines list of options for HIV status of a Client 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Status Codes](ValueSet-ng-hiv-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.72"
  }],
  "version" : "0.0.0",
  "name" : "NgHivStatusCS",
  "title" : "NG Client HIV status CS",
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
  "description" : "This CodeSystem IMMZ.C.DE31 defines list of options for HIV status of a Client",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "positive",
    "display" : "Positive",
    "definition" : "The Client is HIV positive"
  },
  {
    "code" : "negative",
    "display" : "Negative",
    "definition" : "The Client is HIV Negative"
  },
  {
    "code" : "unknown",
    "display" : "Unknown",
    "definition" : "The Client does not know their HIV status"
  }]
}

```
