# NG Measure - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Measure**

## Resource Profile: NG Measure 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-measure | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgMeasure |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.42 | |

 
Minimal program-neutral Measure profile for defining Nigerian health indicators, quality measures and aggregate service-delivery measures using FHIR R4B 4.3.0. 

**Usages:**

* Refer to this Profile: [NG Measure Report](StructureDefinition-ng-measure-report.md)
* Examples for this Profile: [NHMISMonthlyOutpatientAttendance](Measure-NgMeasure-NHMIS-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-measure.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-measure.csv), [Excel](StructureDefinition-ng-measure.xlsx), [Schematron](StructureDefinition-ng-measure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-measure",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-measure",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.42"
  }],
  "version" : "0.0.0",
  "name" : "NgMeasure",
  "title" : "NG Measure",
  "status" : "draft",
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
  "description" : "Minimal program-neutral Measure profile for defining Nigerian health\nindicators, quality measures and aggregate service-delivery measures using\nFHIR R4B 4.3.0.",
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
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Measure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Measure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Measure",
      "path" : "Measure"
    },
    {
      "id" : "Measure.identifier",
      "path" : "Measure.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Measure.version",
      "path" : "Measure.version",
      "mustSupport" : true
    },
    {
      "id" : "Measure.name",
      "path" : "Measure.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Measure.title",
      "path" : "Measure.title",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Measure.status",
      "path" : "Measure.status",
      "mustSupport" : true
    },
    {
      "id" : "Measure.subject[x]",
      "path" : "Measure.subject[x]",
      "max" : "0"
    },
    {
      "id" : "Measure.date",
      "path" : "Measure.date",
      "mustSupport" : true
    },
    {
      "id" : "Measure.publisher",
      "path" : "Measure.publisher",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Measure.jurisdiction",
      "path" : "Measure.jurisdiction",
      "max" : "1"
    },
    {
      "id" : "Measure.purpose",
      "path" : "Measure.purpose",
      "max" : "0"
    },
    {
      "id" : "Measure.usage",
      "path" : "Measure.usage",
      "max" : "0"
    },
    {
      "id" : "Measure.copyright",
      "path" : "Measure.copyright",
      "max" : "0"
    },
    {
      "id" : "Measure.effectivePeriod",
      "path" : "Measure.effectivePeriod",
      "mustSupport" : true
    },
    {
      "id" : "Measure.topic",
      "path" : "Measure.topic",
      "max" : "0"
    },
    {
      "id" : "Measure.author",
      "path" : "Measure.author",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Measure.editor",
      "path" : "Measure.editor",
      "max" : "0"
    },
    {
      "id" : "Measure.reviewer",
      "path" : "Measure.reviewer",
      "max" : "1"
    },
    {
      "id" : "Measure.endorser",
      "path" : "Measure.endorser",
      "max" : "1"
    },
    {
      "id" : "Measure.relatedArtifact",
      "path" : "Measure.relatedArtifact",
      "max" : "0"
    },
    {
      "id" : "Measure.library",
      "path" : "Measure.library",
      "max" : "0"
    },
    {
      "id" : "Measure.compositeScoring",
      "path" : "Measure.compositeScoring",
      "max" : "0"
    },
    {
      "id" : "Measure.type",
      "path" : "Measure.type",
      "max" : "0"
    },
    {
      "id" : "Measure.riskAdjustment",
      "path" : "Measure.riskAdjustment",
      "max" : "0"
    },
    {
      "id" : "Measure.rateAggregation",
      "path" : "Measure.rateAggregation",
      "max" : "0"
    },
    {
      "id" : "Measure.rationale",
      "path" : "Measure.rationale",
      "max" : "0"
    },
    {
      "id" : "Measure.clinicalRecommendationStatement",
      "path" : "Measure.clinicalRecommendationStatement",
      "max" : "0"
    },
    {
      "id" : "Measure.improvementNotation",
      "path" : "Measure.improvementNotation",
      "max" : "0"
    },
    {
      "id" : "Measure.definition",
      "path" : "Measure.definition",
      "max" : "0"
    },
    {
      "id" : "Measure.guidance",
      "path" : "Measure.guidance",
      "max" : "0"
    },
    {
      "id" : "Measure.group",
      "path" : "Measure.group",
      "mustSupport" : true
    },
    {
      "id" : "Measure.group.code",
      "path" : "Measure.group.code",
      "mustSupport" : true
    },
    {
      "id" : "Measure.group.description",
      "path" : "Measure.group.description",
      "mustSupport" : true
    },
    {
      "id" : "Measure.group.population",
      "path" : "Measure.group.population",
      "mustSupport" : true
    },
    {
      "id" : "Measure.group.population.code",
      "path" : "Measure.group.population.code",
      "mustSupport" : true
    },
    {
      "id" : "Measure.group.population.description",
      "path" : "Measure.group.population.description",
      "mustSupport" : true
    },
    {
      "id" : "Measure.group.population.criteria",
      "path" : "Measure.group.population.criteria",
      "mustSupport" : true
    },
    {
      "id" : "Measure.group.stratifier",
      "path" : "Measure.group.stratifier",
      "mustSupport" : true
    },
    {
      "id" : "Measure.group.stratifier.description",
      "path" : "Measure.group.stratifier.description",
      "mustSupport" : true
    },
    {
      "id" : "Measure.group.stratifier.component",
      "path" : "Measure.group.stratifier.component",
      "mustSupport" : true
    },
    {
      "id" : "Measure.group.stratifier.component.description",
      "path" : "Measure.group.stratifier.component.description",
      "mustSupport" : true
    },
    {
      "id" : "Measure.group.stratifier.component.criteria",
      "path" : "Measure.group.stratifier.component.criteria",
      "mustSupport" : true
    },
    {
      "id" : "Measure.supplementalData",
      "path" : "Measure.supplementalData",
      "max" : "0"
    }]
  }
}

```
