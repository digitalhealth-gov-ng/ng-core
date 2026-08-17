# NG ExplanationOfBenefit - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG ExplanationOfBenefit**

## Resource Profile: NG ExplanationOfBenefit 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-explanation-of-benefit | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgExplanationOfBenefit |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.27 | |

 
A profile detailing adjudicated claim results. 

**Usages:**

* Examples for this Profile: [ExplanationOfBenefit/NgExplanationOfBenefit-001](ExplanationOfBenefit-NgExplanationOfBenefit-001.md) and [ExplanationOfBenefit/NgExplanationOfBenefit-002](ExplanationOfBenefit-NgExplanationOfBenefit-002.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-explanation-of-benefit.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-explanation-of-benefit.csv), [Excel](StructureDefinition-ng-explanation-of-benefit.xlsx), [Schematron](StructureDefinition-ng-explanation-of-benefit.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-explanation-of-benefit",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-explanation-of-benefit",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.27"
  }],
  "version" : "0.0.0",
  "name" : "NgExplanationOfBenefit",
  "title" : "NG ExplanationOfBenefit",
  "status" : "draft",
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
  "description" : "A profile detailing adjudicated claim results.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ExplanationOfBenefit",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ExplanationOfBenefit",
      "path" : "ExplanationOfBenefit"
    },
    {
      "id" : "ExplanationOfBenefit.status",
      "path" : "ExplanationOfBenefit.status",
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.type",
      "path" : "ExplanationOfBenefit.type",
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.patient",
      "path" : "ExplanationOfBenefit.patient",
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.created",
      "path" : "ExplanationOfBenefit.created",
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.insurer",
      "path" : "ExplanationOfBenefit.insurer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-insurer-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.provider",
      "path" : "ExplanationOfBenefit.provider",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-provider-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ExplanationOfBenefit.insurance",
      "path" : "ExplanationOfBenefit.insurance",
      "max" : "1",
      "mustSupport" : true
    }]
  }
}

```
