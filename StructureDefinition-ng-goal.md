# NG Goal - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Goal**

## Resource Profile: NG Goal 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-goal | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgGoal |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.29 | |

 
Goal profile for the Nigeria Core. 

**Usages:**

* Refer to this Profile: [NG CarePlan](StructureDefinition-ng-care-plan.md)
* Examples for this Profile: [Goal/NgGoal-001](Goal-NgGoal-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-goal.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-goal.csv), [Excel](StructureDefinition-ng-goal.xlsx), [Schematron](StructureDefinition-ng-goal.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-goal",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-goal",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.29"
  }],
  "version" : "0.0.0",
  "name" : "NgGoal",
  "title" : "NG Goal",
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
  "description" : "Goal profile for the Nigeria Core.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Goal",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Goal",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Goal",
      "path" : "Goal"
    },
    {
      "id" : "Goal.lifecycleStatus",
      "path" : "Goal.lifecycleStatus",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/goal-status"
      }
    },
    {
      "id" : "Goal.achievementStatus",
      "path" : "Goal.achievementStatus",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/goal-achievement"
      }
    },
    {
      "id" : "Goal.category",
      "path" : "Goal.category",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/goal-category"
      }
    },
    {
      "id" : "Goal.priority",
      "path" : "Goal.priority",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/goal-priority"
      }
    },
    {
      "id" : "Goal.description",
      "path" : "Goal.description",
      "mustSupport" : true
    },
    {
      "id" : "Goal.subject",
      "path" : "Goal.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Goal.target",
      "path" : "Goal.target",
      "mustSupport" : true
    },
    {
      "id" : "Goal.target.measure",
      "path" : "Goal.target.measure",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/observation-codes"
      }
    },
    {
      "id" : "Goal.addresses",
      "path" : "Goal.addresses",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-condition",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-service-request"]
      }]
    }]
  }
}

```
