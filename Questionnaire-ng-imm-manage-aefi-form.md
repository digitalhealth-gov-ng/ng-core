# NG Immunization Manage AEFI Form - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Immunization Manage AEFI Form**

## Questionnaire: NG Immunization Manage AEFI Form 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-imm-manage-aefi-form | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgImmManageAEFIForm |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.12 | |

 
Questionnaire for recording and managing an adverse event following immunization. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-imm-manage-aefi-form",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-imm-manage-aefi-form",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.12"
  }],
  "version" : "0.0.0",
  "name" : "NgImmManageAEFIForm",
  "title" : "NG Immunization Manage AEFI Form",
  "status" : "draft",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-08-18T06:18:50+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Questionnaire for recording and managing an adverse event following\nimmunization.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "aefi",
    "text" : "Adverse event following immunization",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "client-identifier",
      "text" : "Client identifier",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "vaccine",
      "text" : "Vaccine associated with the event",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-vaccine-local-vs"
    },
    {
      "linkId" : "immunization-date",
      "text" : "Date and time of immunization",
      "type" : "dateTime",
      "required" : true
    },
    {
      "linkId" : "event-onset",
      "text" : "Date and time the adverse event started",
      "type" : "dateTime",
      "required" : true
    },
    {
      "linkId" : "signs-symptoms",
      "text" : "Signs and symptoms",
      "type" : "text",
      "required" : true
    },
    {
      "linkId" : "serious-event",
      "text" : "Was this a serious adverse event?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "severity",
      "text" : "Severity classification",
      "type" : "string",
      "required" : false
    },
    {
      "linkId" : "action-taken",
      "text" : "Clinical action taken",
      "type" : "text",
      "required" : true
    },
    {
      "linkId" : "outcome",
      "text" : "Current outcome",
      "type" : "string",
      "required" : false
    },
    {
      "linkId" : "reporting-facility",
      "text" : "Reporting facility identifier",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "reporter",
      "text" : "Reporter identifier",
      "type" : "string",
      "required" : true
    }]
  }]
}

```
