# ARV Regimen Switch Type - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ARV Regimen Switch Type**

## CodeSystem: ARV Regimen Switch Type 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-regimen-switch-type-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivARVRegimenSwitchTypeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.31 | |

 
Codes used for representing the type for the ARV regimen switched. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HIV ARV Regimen Change Type](ValueSet-ng-hiv-arv-regimen-change-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-arv-regimen-switch-type-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-regimen-switch-type-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.31"
  }],
  "version" : "0.0.0",
  "name" : "NgHivARVRegimenSwitchTypeCS",
  "title" : "ARV Regimen Switch Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T07:55:48+01:00",
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
  "description" : "Codes used for representing the type for the ARV regimen switched.",
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
    "code" : "First-Switch",
    "display" : "First Switch"
  },
  {
    "code" : "Second-Switch",
    "display" : "Second Switch"
  },
  {
    "code" : "Third-Switch",
    "display" : "Third Switch"
  }]
}

```
