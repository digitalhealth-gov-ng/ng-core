# NG State Medical Records Number NamingSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG State Medical Records Number NamingSystem**

## NamingSystem: NG State Medical Records Number NamingSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/NamingSystem/ng-wakanda-naming-system | *Version*:0.0.0 |
| Draft as of 2026-08-16 | *Computable Name*:NgStateRecordNumber |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.31.12 | |

 
Namespace for Wakanda State used in Nigeria Core. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "ng-wakanda-naming-system",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-naming-system"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir-ig.digitalhealth.gov.ng/NamingSystem/ng-wakanda-naming-system"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.0.0"
  }],
  "name" : "NgStateRecordNumber",
  "status" : "draft",
  "kind" : "identifier",
  "date" : "2026-08-16",
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
  "responsible" : "Wakanda State Ministry of Health",
  "description" : "Namespace for Wakanda State used in Nigeria Core.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "usage" : "Use the preferred URI uniqueId as Identifier.system when representing an State MRN.\nUse the Nigeria Core patient identifier-type terminology in Identifier.type;\ndo not use the identifier-type CodeSystem URL as Identifier.system.",
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://fhir-ig.digitalhealth.gov.ng/identifier/wakanda-mrn",
    "preferred" : true,
    "comment" : "PROPOSED Nigeria Core URI. Requires governance approval before production use."
  }]
}

```
