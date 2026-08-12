# NHMIS Monthly Outpatient Attendance Measure Report - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NHMIS Monthly Outpatient Attendance Measure Report**

## Example MeasureReport: NHMIS Monthly Outpatient Attendance Measure Report

Profile: [NG Measure Report](StructureDefinition-ng-measure-report.md)

**status**: Complete

**type**: Summary

**measure**: [NHMIS Monthly Outpatient Attendance Measure](Measure-NgMeasure-NHMIS-001.md)

**subject**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**date**: 2026-08-03 09:00:00+0100

**reporter**: [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md)

**period**: 2026-07-01 00:00:00+0100 --> 2026-07-31 23:59:59+0100

> **group****code**: Total outpatient attendance

### Populations

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Count** |
| * | Initial Population | 1247 |




## Resource Content

```json
{
  "resourceType" : "MeasureReport",
  "id" : "NgMeasureReport-NHMIS-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-measure-report"]
  },
  "status" : "complete",
  "type" : "summary",
  "measure" : "https://fhir-ig.digitalhealth.gov.ng/Measure/NgMeasure-NHMIS-001",
  "subject" : {
    "reference" : "Patient/NgPatient-002"
  },
  "date" : "2026-08-03T09:00:00+01:00",
  "reporter" : {
    "reference" : "Practitioner/NgPractitioner-002"
  },
  "period" : {
    "start" : "2026-07-01T00:00:00+01:00",
    "end" : "2026-07-31T23:59:59+01:00"
  },
  "group" : [{
    "code" : {
      "text" : "Total outpatient attendance"
    },
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "initial-population",
          "display" : "Initial Population"
        }]
      },
      "count" : 1247
    }]
  }]
}

```
