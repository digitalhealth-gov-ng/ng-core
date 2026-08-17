# NG Practitioner Identifier CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Practitioner Identifier CS**

## CodeSystem: NG Practitioner Identifier CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-mdcn-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgMdcnCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.89 | |

 
This CodeSystem IMMZ.C.DE14 defines placeholder codes to manage physician identifiers in Nigeria. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-mdcn-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-mdcn-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.89"
  }],
  "version" : "0.0.0",
  "name" : "NgMdcnCS",
  "title" : "NG Practitioner Identifier CS",
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
  "description" : "This CodeSystem IMMZ.C.DE14 defines placeholder codes to manage physician identifiers in Nigeria.",
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
  "count" : 7,
  "concept" : [{
    "code" : "MDCN/R/45231",
    "display" : "First Doctor"
  },
  {
    "code" : "MDCN/R/12345",
    "display" : "Second Doctor"
  },
  {
    "code" : "MDCN/R/12346",
    "display" : "Old Doctor"
  },
  {
    "code" : "MDCN/R/12347",
    "display" : "Young Doctor"
  },
  {
    "code" : "CHEW-12346",
    "display" : "Test CHEW"
  },
  {
    "code" : "CHEW-12347",
    "display" : "Dentist"
  },
  {
    "code" : "PRSN-9C4E-7B12-OB01",
    "display" : "Pseudonymized Doctor"
  }]
}

```
