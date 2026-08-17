# HIV ARV Regimen Substitue Type - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV ARV Regimen Substitue Type**

## CodeSystem: HIV ARV Regimen Substitue Type 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-regimen-substitute-type-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivARVRegimenSubstituteTypeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.30 | |

 
Codes used for representing the type for the ARV regimen substitued. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HIV ARV Regimen Change Type](ValueSet-ng-hiv-arv-regimen-change-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-arv-regimen-substitute-type-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-regimen-substitute-type-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.30"
  }],
  "version" : "0.0.0",
  "name" : "NgHivARVRegimenSubstituteTypeCS",
  "title" : "HIV ARV Regimen Substitue Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T13:27:53+01:00",
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
  "description" : "Codes used for representing the type for the ARV regimen substitued.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "First-Substitute",
    "display" : "First Substitute"
  },
  {
    "code" : "Second-Substitute",
    "display" : "Second Substitute"
  },
  {
    "code" : "Third-Substitute",
    "display" : "Third Substitute"
  },
  {
    "code" : "Fourth-Substitute",
    "display" : "Fourth Substitute"
  },
  {
    "code" : "Fifth-Substitute",
    "display" : "Fifth Substitute"
  },
  {
    "code" : "Sixth-Substitute",
    "display" : "Sixth Substitute"
  }]
}

```
