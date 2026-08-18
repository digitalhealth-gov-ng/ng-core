# NG TB Treatment Interruption Tracking Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Treatment Interruption Tracking Questionnaire**

## Questionnaire: NG TB Treatment Interruption Tracking Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-treatment-interruption-tracking-questionnaire | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgTBTreatmentInterruptionTrackingQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.22 | |

 
Questionnaire representing the NTBLCP/TB 14 Treatment Interruption Tracking Form. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-tb-treatment-interruption-tracking-questionnaire",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-tb-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-treatment-interruption-tracking-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.22"
  }],
  "version" : "0.0.0",
  "name" : "NgTBTreatmentInterruptionTrackingQuestionnaire",
  "title" : "NG TB Treatment Interruption Tracking Questionnaire",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-08-18",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Questionnaire representing the NTBLCP/TB 14 Treatment Interruption Tracking Form.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "patient-facility-information",
    "text" : "Patient and facility information",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "state",
      "text" : "State",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
    },
    {
      "linkId" : "lga",
      "text" : "LGA",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
    },
    {
      "linkId" : "clinic-name",
      "text" : "Clinic name",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "lgtb-number",
      "text" : "LGTB number",
      "type" : "string"
    },
    {
      "linkId" : "patient-name",
      "text" : "Name of patient",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "patient-address",
      "text" : "Address",
      "type" : "text"
    },
    {
      "linkId" : "patient-phone-number",
      "text" : "Telephone number",
      "type" : "string"
    }]
  },
  {
    "linkId" : "tracking-reminder",
    "text" : "Always trace a patient after 2 days of missed doses.",
    "type" : "display"
  },
  {
    "linkId" : "tracking-attempts",
    "text" : "Treatment interruption tracking attempts",
    "type" : "group",
    "item" : [{
      "linkId" : "tracking-attempt",
      "text" : "Tracking attempt",
      "type" : "group",
      "required" : true,
      "repeats" : true,
      "item" : [{
        "linkId" : "tracking-attempt-number",
        "text" : "Tracking attempt number",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueString" : "First attempt"
        },
        {
          "valueString" : "Second attempt"
        },
        {
          "valueString" : "Third attempt"
        }]
      },
      {
        "linkId" : "tracking-mode",
        "text" : "Mode of tracking",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueString" : "Home visit"
        },
        {
          "valueString" : "Phone call"
        }]
      },
      {
        "linkId" : "tracking-date",
        "text" : "Date of tracking",
        "type" : "date",
        "required" : true
      },
      {
        "linkId" : "last-drug-intake-date",
        "text" : "Date of last drug intake",
        "type" : "date"
      },
      {
        "linkId" : "patient-met",
        "text" : "Did you meet the patient?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "person-contacted",
        "text" : "If not, who did you talk to?",
        "type" : "string",
        "enableWhen" : [{
          "question" : "patient-met",
          "operator" : "=",
          "answerBoolean" : false
        }]
      },
      {
        "linkId" : "reason-for-absence",
        "text" : "What is the reason for the patient's absence?",
        "type" : "text"
      },
      {
        "linkId" : "solution-to-problem",
        "text" : "What is the solution to the problem?",
        "type" : "text"
      },
      {
        "linkId" : "tracking-outcome",
        "text" : "Outcome",
        "type" : "text"
      },
      {
        "linkId" : "tracker-name",
        "text" : "Name of tracker",
        "type" : "string",
        "required" : true
      }]
    }]
  }]
}

```
