# NG Immunization Generate Report Form - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Immunization Generate Report Form**

## Questionnaire: NG Immunization Generate Report Form 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-imm-generate-report-form | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgImmGenerateReportForm |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.11 | |

 
Questionnaire for selecting parameters used to generate an immunization program report. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-imm-generate-report-form",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-imm-generate-report-form",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.11"
  }],
  "version" : "0.0.0",
  "name" : "NgImmGenerateReportForm",
  "title" : "NG Immunization Generate Report Form",
  "status" : "draft",
  "experimental" : false,
  "subjectType" : ["Organization"],
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Questionnaire for selecting parameters used to generate an immunization\nprogram report.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "report-parameters",
    "text" : "Report parameters",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "facility-identifier",
      "text" : "Reporting facility identifier",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "report-type",
      "text" : "Report type",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "period-start",
      "text" : "Reporting period start date",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "period-end",
      "text" : "Reporting period end date",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "aggregation-level",
      "text" : "Aggregation level",
      "type" : "string",
      "required" : false
    },
    {
      "linkId" : "include-vaccinations",
      "text" : "Include administered vaccinations",
      "type" : "boolean",
      "required" : false
    },
    {
      "linkId" : "include-defaulters",
      "text" : "Include defaulter information",
      "type" : "boolean",
      "required" : false
    },
    {
      "linkId" : "include-aefi",
      "text" : "Include AEFI information",
      "type" : "boolean",
      "required" : false
    },
    {
      "linkId" : "output-format",
      "text" : "Requested output format",
      "type" : "string",
      "required" : false
    }]
  }]
}

```
