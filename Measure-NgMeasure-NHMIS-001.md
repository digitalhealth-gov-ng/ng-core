# NHMIS Monthly Outpatient Attendance Measure - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NHMIS Monthly Outpatient Attendance Measure**

## Measure: NHMIS Monthly Outpatient Attendance Measure 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Measure/NgMeasure-NHMIS-001 | *Version*:0.0.0 |
| Active as of 2026-08-03 | *Computable Name*:NHMISMonthlyOutpatientAttendance |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.29.1 | |

 
A simple NHMIS aggregate measure defining the total number of outpatient attendances recorded by a reporting health facility during a monthly reporting period. 

* Knowledge Artifact Metadata: Name (machine-readable)
  * ?: NHMISMonthlyOutpatientAttendance
* Knowledge Artifact Metadata: Title (human-readable)
  * ?: NHMIS Monthly Outpatient Attendance Measure
* Knowledge Artifact Metadata: Status
  * ?: Active
* Knowledge Artifact Metadata: Experimental
  * ?: false
* Knowledge Artifact Metadata: Description
  * ?: A simple NHMIS aggregate measure defining the total number of outpatient attendances recorded by a reporting health facility during a monthly reporting period.
* Knowledge Artifact Metadata: Effective Period
  * ?: 2026-01-01..2026-12-31
* Knowledge Artifact Metadata: Measure Steward
  * ?: NDHI
* Knowledge Artifact Metadata: Steward Contact Details
  * ?: NDHI:[https://digitalhealth.gov.ng](https://digitalhealth.gov.ng)
* Knowledge Artifact Metadata: Measure Metadata
* Knowledge Artifact Metadata: Version Number
  * ?: 0.0.0
* Knowledge Artifact Metadata: Measure Scoring
  * ?: Cohort
* Knowledge Artifact Metadata: Measure Population Criteria
* Knowledge Artifact Metadata: Summary
  * ?: Total number of patients who received outpatient services during the reporting period.
* Knowledge Artifact Metadata: Initial Population
  * ?: **Description**:All completed outpatient encounters occurring at the reporting facility during the monthly reporting period.
* Knowledge Artifact Metadata: Generated using version 0.4.6 of the sample-content-ig Liquid templates



## Resource Content

```json
{
  "resourceType" : "Measure",
  "id" : "NgMeasure-NHMIS-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-measure"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Measure/NgMeasure-NHMIS-001",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.29.1"
  }],
  "version" : "0.0.0",
  "name" : "NHMISMonthlyOutpatientAttendance",
  "title" : "NHMIS Monthly Outpatient Attendance Measure",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-03",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "A simple NHMIS aggregate measure defining the total number of outpatient\nattendances recorded by a reporting health facility during a monthly\nreporting period.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "effectivePeriod" : {
    "start" : "2026-01-01",
    "end" : "2026-12-31"
  },
  "scoring" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/measure-scoring",
      "code" : "cohort",
      "display" : "Cohort"
    }]
  },
  "group" : [{
    "description" : "Total number of patients who received outpatient services during the\nreporting period.",
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "initial-population",
          "display" : "Initial Population"
        }]
      },
      "description" : "All completed outpatient encounters occurring at the reporting facility\nduring the monthly reporting period.",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "true"
      }
    }]
  }]
}

```
