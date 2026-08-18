# NG HIV Enhanced Adherence Counselling Form Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Enhanced Adherence Counselling Form Questionnaire**

## Questionnaire: NG HIV Enhanced Adherence Counselling Form Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-hiv-eac-form-questionnaire | *Version*:0.0.0 |
| Active as of 2026-07-28 | *Computable Name*:NgHivEacFormQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.3 | |

 
Questionnaire representing the Nigeria Enhanced Adherence Counselling Form revised November 2025. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-hiv-eac-form-questionnaire",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-hiv-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-hiv-eac-form-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.3"
  }],
  "version" : "0.0.0",
  "name" : "NgHivEacFormQuestionnaire",
  "title" : "NG HIV Enhanced Adherence Counselling Form Questionnaire",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-07-28",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Questionnaire representing the Nigeria Enhanced Adherence Counselling Form revised November 2025.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "client-information",
    "text" : "Client information",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "client-unique-id",
      "prefix" : "1.",
      "text" : "Client unique ID",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "age",
      "prefix" : "2.",
      "text" : "Age in years, or months if younger than one year",
      "type" : "integer",
      "required" : true
    },
    {
      "linkId" : "age-unit",
      "text" : "Age unit",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "Years"
      },
      {
        "valueString" : "Months"
      }]
    },
    {
      "linkId" : "sex",
      "prefix" : "3.",
      "text" : "Sex",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-gender-vs"
    },
    {
      "linkId" : "phone-number",
      "prefix" : "4.",
      "text" : "Phone number",
      "type" : "string"
    },
    {
      "linkId" : "facility-name",
      "prefix" : "5.",
      "text" : "Facility name",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "hospital-number",
      "prefix" : "6.",
      "text" : "Hospital number",
      "type" : "string"
    },
    {
      "linkId" : "current-arv-regimen",
      "prefix" : "7.",
      "text" : "Current ARV regimen code or description",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "art-initiation-date",
      "prefix" : "8.",
      "text" : "Date of ART initiation",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "current-viral-load-result",
      "prefix" : "9.",
      "text" : "Current viral load result in copies/mL",
      "type" : "integer",
      "required" : true
    },
    {
      "linkId" : "current-viral-load-result-received-date",
      "prefix" : "10.",
      "text" : "Date current viral load result was received",
      "type" : "date",
      "required" : true
    }]
  },
  {
    "linkId" : "enhanced-adherence-counselling-sessions",
    "text" : "Enhanced adherence counselling sessions",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "eac-session",
      "text" : "Enhanced adherence counselling session",
      "type" : "group",
      "required" : true,
      "repeats" : true,
      "item" : [{
        "linkId" : "eac-session-number",
        "text" : "EAC session number",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-eac-given-vs"
      },
      {
        "linkId" : "eac-session-date",
        "prefix" : "11/16.",
        "text" : "Date of EAC session",
        "type" : "date",
        "required" : true
      },
      {
        "linkId" : "adherence",
        "prefix" : "12/17.",
        "text" : "Adherence",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-eac-adherence-vs"
      },
      {
        "linkId" : "missed-pharmacy-drug-pickups",
        "prefix" : "13/18.",
        "text" : "Any missed pharmacy drug pick-ups?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "barriers",
        "prefix" : "14/19.",
        "text" : "Barriers to adherence",
        "type" : "choice",
        "repeats" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-eac-barriers-vs"
      },
      {
        "linkId" : "other-barrier",
        "text" : "Specify other adherence barrier",
        "type" : "string",
        "enableWhen" : [{
          "question" : "barriers",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-eac-form-cs",
            "code" : "barrier-other"
          }
        }]
      },
      {
        "linkId" : "intervention-services",
        "prefix" : "15/20.",
        "text" : "Intervention services provided",
        "type" : "choice",
        "repeats" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-eac-intervention-services-vs"
      },
      {
        "linkId" : "other-intervention-service",
        "text" : "Specify other intervention service",
        "type" : "string",
        "enableWhen" : [{
          "question" : "intervention-services",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-eac-form-cs",
            "code" : "service-other"
          }
        }]
      },
      {
        "linkId" : "intervention-tools",
        "text" : "Intervention tools provided or recommended",
        "type" : "choice",
        "repeats" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-eac-intervention-tools-vs"
      },
      {
        "linkId" : "other-intervention-tool",
        "text" : "Specify other intervention tool",
        "type" : "string",
        "enableWhen" : [{
          "question" : "intervention-tools",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-eac-form-cs",
            "code" : "tool-other"
          }
        }]
      },
      {
        "linkId" : "referrals",
        "prefix" : "21.",
        "text" : "Referrals made",
        "type" : "text"
      },
      {
        "linkId" : "follow-up-date",
        "prefix" : "22.",
        "text" : "Follow-up date",
        "type" : "date"
      },
      {
        "linkId" : "session-comments",
        "prefix" : "23.",
        "text" : "Comments describing barriers and planned interventions",
        "type" : "text"
      },
      {
        "linkId" : "session-provider-name",
        "prefix" : "24.",
        "text" : "Provider name",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "session-provider-signature",
        "text" : "Provider signature or signature reference",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "post-eac-repeat-viral-load",
    "text" : "Repeat viral load after three consecutive months of good adherence",
    "type" : "group",
    "item" : [{
      "linkId" : "post-eac-vl-sample-collection-date",
      "prefix" : "25.",
      "text" : "Date post-EAC viral load sample was collected",
      "type" : "date"
    },
    {
      "linkId" : "repeat-viral-load-result",
      "prefix" : "26.",
      "text" : "Repeat viral load result in copies/mL",
      "type" : "integer"
    },
    {
      "linkId" : "repeat-viral-load-result-received-date",
      "prefix" : "27.",
      "text" : "Date repeat viral load result was received",
      "type" : "date"
    },
    {
      "linkId" : "post-eac-outcome",
      "prefix" : "28.",
      "text" : "Post-EAC viral load outcome",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "Undetectable (50 copies/mL or less)"
      },
      {
        "valueString" : "Suppressed but detectable (greater than 50 and 1000 copies/mL or less)"
      },
      {
        "valueString" : "Unsuppressed (greater than 1000 copies/mL)"
      }]
    },
    {
      "linkId" : "post-eac-plan",
      "prefix" : "29.",
      "text" : "Post-EAC plan",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "Remain on current regimen"
      },
      {
        "valueString" : "Regimen switched by the switch committee"
      },
      {
        "valueString" : "Refer to doctor for further management"
      }]
    },
    {
      "linkId" : "post-eac-plan-date",
      "text" : "Date of post-EAC plan or action",
      "type" : "date"
    },
    {
      "linkId" : "eac-monitoring-status",
      "prefix" : "30.",
      "text" : "EAC monitoring status",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "EAC completed"
      },
      {
        "valueString" : "EAC stopped"
      },
      {
        "valueString" : "Dead"
      },
      {
        "valueString" : "Lost to follow-up"
      },
      {
        "valueString" : "Transferred out"
      }]
    },
    {
      "linkId" : "post-eac-comments",
      "prefix" : "31.",
      "text" : "Post-EAC comments",
      "type" : "text"
    },
    {
      "linkId" : "post-eac-provider-name",
      "prefix" : "32.",
      "text" : "Provider name",
      "type" : "string"
    },
    {
      "linkId" : "post-eac-provider-signature",
      "text" : "Provider signature or signature reference",
      "type" : "string"
    }]
  }]
}

```
