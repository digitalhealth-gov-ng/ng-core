# NG Immunization Defaulter Tracking Form - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Immunization Defaulter Tracking Form**

## Questionnaire: NG Immunization Defaulter Tracking Form 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-imm-defaulter-tracking-form | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgImmDefaulterTrackingForm |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.9 | |

 
Questionnaire for identifying and following up clients who have missed scheduled immunization doses. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-imm-defaulter-tracking-form",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-imm-defaulter-tracking-form",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.9"
  }],
  "version" : "0.0.0",
  "name" : "NgImmDefaulterTrackingForm",
  "title" : "NG Immunization Defaulter Tracking Form",
  "status" : "draft",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Questionnaire for identifying and following up clients who have missed\nscheduled immunization doses.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "defaulter-tracking",
    "text" : "Defaulter tracking",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "client-identifier",
      "text" : "Client identifier",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "client-name",
      "text" : "Client name",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "caregiver-phone",
      "text" : "Caregiver telephone",
      "type" : "string",
      "required" : false
    },
    {
      "linkId" : "missed-vaccine",
      "text" : "Missed vaccine",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-vaccine-local-vs"
    },
    {
      "linkId" : "missed-dose-number",
      "text" : "Missed dose number",
      "type" : "integer",
      "required" : false
    },
    {
      "linkId" : "dose-due-date",
      "text" : "Date the dose was due",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "reason-missed",
      "text" : "Reason the vaccination was missed",
      "type" : "text",
      "required" : false
    },
    {
      "linkId" : "follow-up-attempts",
      "text" : "Number of follow-up attempts",
      "type" : "integer",
      "required" : false
    },
    {
      "linkId" : "next-follow-up-date",
      "text" : "Next follow-up date",
      "type" : "date",
      "required" : false
    },
    {
      "linkId" : "tracing-outcome",
      "text" : "Tracing outcome",
      "type" : "string",
      "required" : false
    }]
  }]
}

```
