# NG Administrative Wards CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Administrative Wards CS**

## CodeSystem: NG Administrative Wards CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-wards-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgWardsCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.110 | |

 
This CodeSystem defines ward codes and names mapped to their respective Local Government Areas (LGAs) in Nigeria. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Wards VS](ValueSet-ng-wards-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-wards-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-wards-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.110"
  }],
  "version" : "0.0.0",
  "name" : "NgWardsCS",
  "title" : "NG Administrative Wards CS",
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
  "description" : "This CodeSystem defines ward codes and names mapped to their respective Local Government Areas (LGAs) in Nigeria.",
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
  "count" : 10,
  "concept" : [{
    "code" : "fc-amac-abajic",
    "display" : "Abaji central",
    "definition" : "Abaji central"
  },
  {
    "code" : "fc-amac-abajine",
    "display" : "Abaji North East",
    "definition" : "Abaji North East"
  },
  {
    "code" : "fc-amac-abajise",
    "display" : "Abaji South East",
    "definition" : "Abaji South East"
  },
  {
    "code" : "fc-amac-agyana",
    "display" : "Agyana/Pandagi",
    "definition" : "Agyana/Pandagi"
  },
  {
    "code" : "fc-amac-rimba",
    "display" : "Rimba Ebagi",
    "definition" : "Rimba Ebagi"
  },
  {
    "code" : "fc-amac-nuku",
    "display" : "Nuku",
    "definition" : "Nuku"
  },
  {
    "code" : "fc-amac-alu",
    "display" : "Alu Mamagi",
    "definition" : "Alu Mamagi"
  },
  {
    "code" : "fc-amac-yaba",
    "display" : "Yaba",
    "definition" : "Yaba"
  },
  {
    "code" : "fc-amac-gurdi",
    "display" : "Gurdi",
    "definition" : "Gurdi"
  },
  {
    "code" : "fc-amac-gawu",
    "display" : "Gawu",
    "definition" : "Gawu"
  }]
}

```
