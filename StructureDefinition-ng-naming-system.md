# NG NamingSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG NamingSystem**

## Resource Profile: NG NamingSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-naming-system | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgNamingSystem |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.72 | |

 
Nigeria Core profile for publishing and governing namespaces used in FHIR Identifier.system. 

**Usages:**

* Examples for this Profile: [NgNationalInsuranceNumber](NamingSystem-ng-bc-naming-system.md), [NgAconsortRecordNumber](NamingSystem-ng-consort-naming-system.md), [NgHFRNumber](NamingSystem-ng-hfr-naming-system.md), [NgNationalInsuranceNumber](NamingSystem-ng-ins-naming-system.md)... Show 9 more, [NgMDCNNumber](NamingSystem-ng-mdcn-naming-system.md), [NgMobileNumber](NamingSystem-ng-mobile-naming-system.md), [NgMTNMno](NamingSystem-ng-mtn-mno-naming-system.md), [NgExamplePersonIdentifier](NamingSystem-ng-naming-system-example.md), [NgNationalIdentityNumber](NamingSystem-ng-nin-naming-system.md), [NgNMCNNumber](NamingSystem-ng-nmcn-naming-system.md), [NgPCNNumber](NamingSystem-ng-pcn-naming-system.md), [NgPseudoNumber](NamingSystem-ng-psedo-naming-system.md) and [NgStateRecordNumber](NamingSystem-ng-wakanda-naming-system.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-naming-system.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-naming-system.csv), [Excel](StructureDefinition-ng-naming-system.xlsx), [Schematron](StructureDefinition-ng-naming-system.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-naming-system",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-naming-system",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.72"
  }],
  "version" : "0.0.0",
  "name" : "NgNamingSystem",
  "title" : "NG NamingSystem",
  "status" : "draft",
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
  "description" : "Nigeria Core profile for publishing and governing namespaces used in\nFHIR Identifier.system.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "NamingSystem",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/NamingSystem",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "NamingSystem",
      "path" : "NamingSystem",
      "constraint" : [{
        "key" : "ngns-1",
        "severity" : "error",
        "human" : "A Nigeria Core identifier NamingSystem SHALL publish at least one URI unique identifier.",
        "expression" : "uniqueId.where(type = 'uri').exists()",
        "source" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-naming-system"
      },
      {
        "key" : "ngns-2",
        "severity" : "error",
        "human" : "A Nigeria Core identifier NamingSystem SHALL have exactly one preferred URI unique identifier.",
        "expression" : "uniqueId.where(type = 'uri' and preferred = true).count() = 1",
        "source" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-naming-system"
      }]
    },
    {
      "id" : "NamingSystem.name",
      "path" : "NamingSystem.name",
      "mustSupport" : true
    },
    {
      "id" : "NamingSystem.status",
      "path" : "NamingSystem.status",
      "mustSupport" : true
    },
    {
      "id" : "NamingSystem.kind",
      "path" : "NamingSystem.kind",
      "patternCode" : "identifier",
      "mustSupport" : true
    },
    {
      "id" : "NamingSystem.date",
      "path" : "NamingSystem.date",
      "mustSupport" : true
    },
    {
      "id" : "NamingSystem.publisher",
      "path" : "NamingSystem.publisher",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "NamingSystem.responsible",
      "path" : "NamingSystem.responsible",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "NamingSystem.description",
      "path" : "NamingSystem.description",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "NamingSystem.jurisdiction",
      "path" : "NamingSystem.jurisdiction",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "NamingSystem.usage",
      "path" : "NamingSystem.usage",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "NamingSystem.uniqueId",
      "path" : "NamingSystem.uniqueId",
      "mustSupport" : true
    },
    {
      "id" : "NamingSystem.uniqueId.type",
      "path" : "NamingSystem.uniqueId.type",
      "mustSupport" : true
    },
    {
      "id" : "NamingSystem.uniqueId.value",
      "path" : "NamingSystem.uniqueId.value",
      "mustSupport" : true
    },
    {
      "id" : "NamingSystem.uniqueId.preferred",
      "path" : "NamingSystem.uniqueId.preferred",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
