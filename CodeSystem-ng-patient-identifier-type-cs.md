# NG Patient Identifier Type CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Patient Identifier Type CS**

## CodeSystem: NG Patient Identifier Type CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgPatientIdentifierTypeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.95 | |

 
This CodeSystem defines list of options for uniquely Identifting a Client 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Client Identifier VS](ValueSet-ng-client-identifier-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-patient-identifier-type-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.95"
  }],
  "version" : "0.0.0",
  "name" : "NgPatientIdentifierTypeCS",
  "title" : "NG Patient Identifier Type CS",
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
  "description" : "This CodeSystem defines list of options for uniquely Identifting a Client",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : false,
  "hierarchyMeaning" : "is-a",
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "MRN",
    "display" : "mrn",
    "definition" : "Medical Record Number"
  },
  {
    "code" : "NIN",
    "display" : "nin",
    "definition" : "National Identity Number"
  },
  {
    "code" : "MOBILE",
    "display" : "mobile",
    "definition" : "Phone Number"
  },
  {
    "code" : "INSUR",
    "display" : "insurance no",
    "definition" : "Insurance or HMO number"
  },
  {
    "code" : "BIRTHCERT",
    "display" : "birthcert",
    "definition" : "Birth certificate number"
  },
  {
    "code" : "IMMNO",
    "display" : "immunizationo",
    "definition" : "Immunization Number"
  },
  {
    "code" : "PSEUDONYM",
    "display" : "Pseudonymized Identifier",
    "definition" : "Pseudonymized patient data"
  }]
}

```
