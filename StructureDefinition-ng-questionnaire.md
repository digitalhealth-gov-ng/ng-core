# NG Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Questionnaire**

## Resource Profile: NG Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-questionnaire | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.66 | |

 
The base Questionnaire profile for computable program forms in the Nigeria Core FHIR Implementation Guide. program-specific Questionnaire profiles, including Immunization, HIV, TB, Malaria, MNCH, Nutrition and eCHIS Questionnaires, SHALL derive from this profile. 

**Usages:**

* Derived from this Profile: [NG HIV Questionnaire](StructureDefinition-ng-hiv-questionnaire.md), [NG Immunization Questionnaire](StructureDefinition-ng-immunization-questionnaire.md) and [NG TB Questionnaire](StructureDefinition-ng-tb-questionnaire.md)
* Examples for this Profile: [NgAncQuestionnaire](Questionnaire-NgAncQuestionnaire-001.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-questionnaire.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-questionnaire.csv), [Excel](StructureDefinition-ng-questionnaire.xlsx), [Schematron](StructureDefinition-ng-questionnaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-questionnaire",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.66"
  }],
  "version" : "0.0.0",
  "name" : "NgQuestionnaire",
  "title" : "NG Questionnaire",
  "status" : "draft",
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "The base Questionnaire profile for computable program forms in the\nNigeria Core FHIR Implementation Guide. program-specific Questionnaire profiles, including Immunization, HIV,\nTB, Malaria, MNCH, Nutrition and eCHIS Questionnaires, SHALL derive from\nthis profile.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Questionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Questionnaire",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Questionnaire",
      "path" : "Questionnaire"
    },
    {
      "id" : "Questionnaire.implicitRules",
      "path" : "Questionnaire.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.modifierExtension",
      "path" : "Questionnaire.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.url",
      "path" : "Questionnaire.url",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.version",
      "path" : "Questionnaire.version",
      "short" : "Version of this Questionnnaire",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.name",
      "path" : "Questionnaire.name",
      "short" : "Computer friendly name for this questionnaire",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.title",
      "path" : "Questionnaire.title",
      "short" : "Human friendly title of this questionnaire",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.status",
      "path" : "Questionnaire.status",
      "short" : "draft | active | retired | unknown see more",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/publication-status"
      }
    },
    {
      "id" : "Questionnaire.subjectType",
      "path" : "Questionnaire.subjectType",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/resource-types"
      }
    },
    {
      "id" : "Questionnaire.date",
      "path" : "Questionnaire.date",
      "short" : "Date it was last changed",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.publisher",
      "path" : "Questionnaire.publisher",
      "short" : "The Organization that published the questionnaire",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.description",
      "path" : "Questionnaire.description",
      "short" : "Markdown natural language description of the questionnaire",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.useContext",
      "path" : "Questionnaire.useContext",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.purpose",
      "path" : "Questionnaire.purpose",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.approvalDate",
      "path" : "Questionnaire.approvalDate",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.lastReviewDate",
      "path" : "Questionnaire.lastReviewDate",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.effectivePeriod",
      "path" : "Questionnaire.effectivePeriod",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.code",
      "path" : "Questionnaire.code",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.item",
      "path" : "Questionnaire.item",
      "short" : "true | false - Whether the item must be included in data results",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.modifierExtension",
      "path" : "Questionnaire.item.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.item.linkId",
      "path" : "Questionnaire.item.linkId",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.definition",
      "path" : "Questionnaire.item.definition",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.code",
      "path" : "Questionnaire.item.code",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.item.prefix",
      "path" : "Questionnaire.item.prefix",
      "short" : "Used mostly to show item no in paper form. Like in case of HIV/ART forms",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.text",
      "path" : "Questionnaire.item.text",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.type",
      "path" : "Questionnaire.item.type",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.enableWhen.modifierExtension",
      "path" : "Questionnaire.item.enableWhen.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.item.enableBehavior",
      "path" : "Questionnaire.item.enableBehavior",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.item.required",
      "path" : "Questionnaire.item.required",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.repeats",
      "path" : "Questionnaire.item.repeats",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.answerValueSet",
      "path" : "Questionnaire.item.answerValueSet",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.initial.modifierExtension",
      "path" : "Questionnaire.item.initial.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Questionnaire.item.item",
      "path" : "Questionnaire.item.item",
      "mustSupport" : true
    }]
  }
}

```
