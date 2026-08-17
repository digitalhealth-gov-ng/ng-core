# NG Measure Report - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Measure Report**

## Resource Profile: NG Measure Report 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-measure-report | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgMeasureReport |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.41 | |

 
Minimal program-neutral MeasureReport profile for exchanging Nigerian individual and aggregate program-reporting results using FHIR R4B 4.3.0. 

**Usages:**

* Examples for this Profile: [MeasureReport/NgMeasureReport-NHMIS-001](MeasureReport-NgMeasureReport-NHMIS-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-measure-report.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-measure-report.csv), [Excel](StructureDefinition-ng-measure-report.xlsx), [Schematron](StructureDefinition-ng-measure-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-measure-report",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-measure-report",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.41"
  }],
  "version" : "0.0.0",
  "name" : "NgMeasureReport",
  "title" : "NG Measure Report",
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
  "description" : "Minimal program-neutral MeasureReport profile for exchanging Nigerian\nindividual and aggregate program-reporting results using FHIR R4B 4.3.0.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MeasureReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MeasureReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MeasureReport",
      "path" : "MeasureReport"
    },
    {
      "id" : "MeasureReport.identifier",
      "path" : "MeasureReport.identifier",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.status",
      "path" : "MeasureReport.status",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.type",
      "path" : "MeasureReport.type",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.measure",
      "path" : "MeasureReport.measure",
      "type" : [{
        "code" : "canonical",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-measure"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.subject",
      "path" : "MeasureReport.subject",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.date",
      "path" : "MeasureReport.date",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.reporter",
      "path" : "MeasureReport.reporter",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.period",
      "path" : "MeasureReport.period",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.period.start",
      "path" : "MeasureReport.period.start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.period.end",
      "path" : "MeasureReport.period.end",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group",
      "path" : "MeasureReport.group",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.code",
      "path" : "MeasureReport.group.code",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.population",
      "path" : "MeasureReport.group.population",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.population.code",
      "path" : "MeasureReport.group.population.code",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.population.count",
      "path" : "MeasureReport.group.population.count",
      "minValueInteger" : 0,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.population.subjectResults",
      "path" : "MeasureReport.group.population.subjectResults",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier",
      "path" : "MeasureReport.group.stratifier",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier.code",
      "path" : "MeasureReport.group.stratifier.code",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum",
      "path" : "MeasureReport.group.stratifier.stratum",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.value",
      "path" : "MeasureReport.group.stratifier.stratum.value",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.component",
      "path" : "MeasureReport.group.stratifier.stratum.component",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.component.code",
      "path" : "MeasureReport.group.stratifier.stratum.component.code",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.component.value",
      "path" : "MeasureReport.group.stratifier.stratum.component.value",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.population",
      "path" : "MeasureReport.group.stratifier.stratum.population",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.population.code",
      "path" : "MeasureReport.group.stratifier.stratum.population.code",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.population.count",
      "path" : "MeasureReport.group.stratifier.stratum.population.count",
      "minValueInteger" : 0,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.population.subjectResults",
      "path" : "MeasureReport.group.stratifier.stratum.population.subjectResults",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.measureScore",
      "path" : "MeasureReport.group.stratifier.stratum.measureScore",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.evaluatedResource",
      "path" : "MeasureReport.evaluatedResource",
      "mustSupport" : true
    }]
  }
}

```
