# NG ImmunizationRecommendation - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG ImmunizationRecommendation**

## Resource Profile: NG ImmunizationRecommendation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization-recommendation | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgImmunizationRecommendation |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.34 | |

 
Simple profile to convey due/overdue vaccine recommendations for a Nigerian client. 

**Usages:**

* Use this Profile: [Bundle NG Immunization SMART Scheduler](StructureDefinition-ng-imm-smart-scheduler-bundle.md)
* Examples for this Profile: [ImmunizationRecommendation/NgImmunizationRecommendation-001](ImmunizationRecommendation-NgImmunizationRecommendation-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-immunization-recommendation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-immunization-recommendation.csv), [Excel](StructureDefinition-ng-immunization-recommendation.xlsx), [Schematron](StructureDefinition-ng-immunization-recommendation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-immunization-recommendation",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization-recommendation",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.34"
  }],
  "version" : "0.0.0",
  "name" : "NgImmunizationRecommendation",
  "title" : "NG ImmunizationRecommendation",
  "status" : "active",
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
  "description" : "Simple profile to convey due/overdue vaccine recommendations for a Nigerian client.",
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
  "type" : "ImmunizationRecommendation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ImmunizationRecommendation.patient",
      "path" : "ImmunizationRecommendation.patient",
      "short" : "Reference to the client (NgPatient)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImmunizationRecommendation.date",
      "path" : "ImmunizationRecommendation.date",
      "mustSupport" : true
    },
    {
      "id" : "ImmunizationRecommendation.recommendation",
      "path" : "ImmunizationRecommendation.recommendation",
      "mustSupport" : true
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.vaccineCode",
      "path" : "ImmunizationRecommendation.recommendation.vaccineCode",
      "mustSupport" : true
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.forecastStatus",
      "path" : "ImmunizationRecommendation.recommendation.forecastStatus",
      "short" : "due | overdue | complete | contraindicated | not-due",
      "mustSupport" : true
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.forecastStatus.coding",
      "path" : "ImmunizationRecommendation.recommendation.forecastStatus.coding",
      "max" : "1"
    }]
  }
}

```
