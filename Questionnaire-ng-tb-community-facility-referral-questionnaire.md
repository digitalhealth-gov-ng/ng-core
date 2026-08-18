# NG TB Community and Facility Referral Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Community and Facility Referral Questionnaire**

## Questionnaire: NG TB Community and Facility Referral Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-community-facility-referral-questionnaire | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgTBCommunityFacilityReferralQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.15 | |

 
Questionnaire representing the NTBLCP/TB 12 Tuberculosis Referral Form for Community and Facility. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-tb-community-facility-referral-questionnaire",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-tb-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-community-facility-referral-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.15"
  }],
  "version" : "0.0.0",
  "name" : "NgTBCommunityFacilityReferralQuestionnaire",
  "title" : "NG TB Community and Facility Referral Questionnaire",
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
  "description" : "Questionnaire representing the NTBLCP/TB 12 Tuberculosis Referral Form for Community and Facility.",
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
      "linkId" : "client-name",
      "text" : "Name of client",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "sex",
      "text" : "Sex",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "male",
          "display" : "Male"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "female",
          "display" : "Female"
        }
      }]
    },
    {
      "linkId" : "age",
      "text" : "Age",
      "type" : "integer"
    },
    {
      "linkId" : "client-address",
      "text" : "Full address of client",
      "type" : "text"
    },
    {
      "linkId" : "client-phone-number",
      "text" : "Telephone number of client",
      "type" : "string"
    },
    {
      "linkId" : "referral-date",
      "text" : "Date of referral",
      "type" : "date",
      "required" : true
    }]
  },
  {
    "linkId" : "referring-site",
    "text" : "Section A - Referring Site",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "referring-site-name",
      "text" : "Name of site",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "referring-site-address",
      "text" : "Full address",
      "type" : "text"
    },
    {
      "linkId" : "referring-person-name",
      "text" : "Name of person making referral",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "referring-person-phone",
      "text" : "Telephone number",
      "type" : "string"
    },
    {
      "linkId" : "reason-for-referral",
      "text" : "Reason for referral",
      "type" : "choice",
      "required" : true,
      "repeats" : true,
      "answerOption" : [{
        "valueString" : "Diagnosis"
      },
      {
        "valueString" : "Treatment"
      },
      {
        "valueString" : "Adverse reaction to drugs"
      },
      {
        "valueString" : "Other"
      }]
    },
    {
      "linkId" : "other-reason-for-referral",
      "text" : "Specify other reason for referral",
      "type" : "string",
      "enableWhen" : [{
        "question" : "reason-for-referral",
        "operator" : "=",
        "answerString" : "Other"
      }]
    },
    {
      "linkId" : "referral-source",
      "text" : "Who is making the referral?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "Community TB Worker (CTW)"
      },
      {
        "valueString" : "Community Pharmacist (CP)"
      },
      {
        "valueString" : "Patent Medicine Vendor (PMV)"
      },
      {
        "valueString" : "Community Volunteer (CV)"
      },
      {
        "valueString" : "Laboratory"
      },
      {
        "valueString" : "Other"
      }]
    },
    {
      "linkId" : "other-referral-source",
      "text" : "Specify other referral source",
      "type" : "string",
      "enableWhen" : [{
        "question" : "referral-source",
        "operator" : "=",
        "answerString" : "Other"
      }]
    }]
  },
  {
    "linkId" : "receiving-facility",
    "text" : "Section B - Receiving Facility",
    "type" : "group",
    "item" : [{
      "linkId" : "receiving-facility-name",
      "text" : "Name of facility",
      "type" : "string"
    },
    {
      "linkId" : "arrival-date",
      "text" : "Date of arrival at the referred facility",
      "type" : "date"
    },
    {
      "linkId" : "receiving-health-worker",
      "text" : "Receiving health worker",
      "type" : "group",
      "item" : [{
        "linkId" : "health-worker-name",
        "text" : "Name of health worker",
        "type" : "string"
      },
      {
        "linkId" : "health-worker-signature",
        "text" : "Signature of health worker or signature reference",
        "type" : "string"
      },
      {
        "linkId" : "health-worker-phone",
        "text" : "Telephone number",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "referral-outcome",
    "text" : "Outcome of referral",
    "type" : "group",
    "item" : [{
      "linkId" : "diagnosis-outcome",
      "text" : "Diagnosis",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "TB confirmed"
      },
      {
        "valueString" : "TB not confirmed"
      }]
    },
    {
      "linkId" : "diagnosis-outcome-date",
      "text" : "Date of diagnosis outcome",
      "type" : "date"
    },
    {
      "linkId" : "treatment-started",
      "text" : "Was TB treatment started?",
      "type" : "boolean"
    },
    {
      "linkId" : "treatment-start-date",
      "text" : "Date treatment started",
      "type" : "date",
      "enableWhen" : [{
        "question" : "treatment-started",
        "operator" : "=",
        "answerBoolean" : true
      }]
    }]
  }]
}

```
