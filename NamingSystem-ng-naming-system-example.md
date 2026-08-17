# Example NG NamingSystem with URI, OID, UUID and legacy identifier - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example NG NamingSystem with URI, OID, UUID and legacy identifier**

## NamingSystem: Example NG NamingSystem with URI, OID, UUID and legacy identifier 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/NamingSystem/ng-naming-system-example | *Version*:0.0.0 |
| Draft as of 2026-08-16 | *Computable Name*:NgExamplePersonIdentifier |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.31.7 | |

 
Fictional identifier namespace used solely to demonstrate alternate NamingSystem unique identifiers. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "ng-naming-system-example",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-naming-system"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir-ig.digitalhealth.gov.ng/NamingSystem/ng-naming-system-example"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.0.0"
  }],
  "name" : "NgExamplePersonIdentifier",
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
  "responsible" : "Example issuing authority",
  "description" : "Fictional identifier namespace used solely to demonstrate alternate\nNamingSystem unique identifiers.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "usage" : "Example only. In a real FHIR Identifier, use the approved preferred URI\nfor Identifier.system.",
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://example.org/identifier/ng-person",
    "preferred" : true,
    "comment" : "Preferred representation for FHIR Identifier.system."
  },
  {
    "type" : "oid",
    "value" : "1.2.3.4.5",
    "preferred" : false,
    "comment" : "Illustrative OID only; not assigned for production."
  },
  {
    "type" : "uuid",
    "value" : "550e8400-e29b-41d4-a716-446655440000",
    "preferred" : false,
    "comment" : "Illustrative UUID only."
  },
  {
    "type" : "other",
    "value" : "NG-EXAMPLE-PERSON-ID",
    "preferred" : false,
    "comment" : "Illustrative legacy mnemonic; not suitable directly as Identifier.system."
  }]
}

```
