# NG TB Specimen Examination Request Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Specimen Examination Request Questionnaire**

## Questionnaire: NG TB Specimen Examination Request Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-specimen-examination-request-questionnaire | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgTBSpecimenExamRxQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.20 | |

 
Questionnaire representing the NTBLCP/TB 02A Specimen Examination Request Form, January 2019. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-tb-specimen-examination-request-questionnaire",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-tb-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-specimen-examination-request-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.20"
  }],
  "version" : "0.0.0",
  "name" : "NgTBSpecimenExamRxQuestionnaire",
  "title" : "NG TB Specimen Examination Request Questionnaire",
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
  "description" : "Questionnaire representing the NTBLCP/TB 02A Specimen Examination Request Form, January 2019.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "request-identification",
    "text" : "Request identification",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "specimen-identification-number",
      "text" : "Specimen identification number",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "request-date",
      "text" : "Date",
      "type" : "date",
      "required" : true
    }]
  },
  {
    "linkId" : "patient-information",
    "text" : "Patient information",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "patient-name",
      "text" : "Name of patient",
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
      "type" : "integer",
      "required" : true
    },
    {
      "linkId" : "patient-address",
      "text" : "Patient address",
      "type" : "string"
    },
    {
      "linkId" : "patient-phone-number",
      "text" : "Telephone number",
      "type" : "string"
    },
    {
      "linkId" : "lga-tb-number",
      "text" : "LGA/TB number",
      "type" : "string"
    },
    {
      "linkId" : "presumptive-tb-type",
      "text" : "Type of presumptive TB",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "DS-TB"
      },
      {
        "valueString" : "DR-TB"
      }]
    },
    {
      "linkId" : "site-of-disease",
      "text" : "Site of disease",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "Pulmonary TB (PTB)"
      },
      {
        "valueString" : "Extra-pulmonary TB (EPTB)"
      }]
    },
    {
      "linkId" : "health-care-worker",
      "text" : "Is the patient a health care worker?",
      "type" : "boolean"
    },
    {
      "linkId" : "hiv-status",
      "text" : "HIV status",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "Positive"
      },
      {
        "valueString" : "Negative"
      },
      {
        "valueString" : "Unknown"
      }]
    },
    {
      "linkId" : "hiv-test-request",
      "text" : "HIV test requested",
      "type" : "boolean"
    }]
  },
  {
    "linkId" : "examination-request",
    "text" : "Examination request",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "reason-for-examination",
      "text" : "Reason for examination",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "Diagnosis"
      },
      {
        "valueString" : "Follow-up"
      }]
    },
    {
      "linkId" : "follow-up-month",
      "text" : "Month of follow-up",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "reason-for-examination",
        "operator" : "=",
        "answerString" : "Follow-up"
      }]
    }]
  },
  {
    "linkId" : "laboratory-test-request",
    "text" : "Laboratory test requested",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "test-requested",
      "text" : "Type of test requested",
      "type" : "choice",
      "required" : true,
      "repeats" : true,
      "answerOption" : [{
        "valueString" : "Xpert/MTB/RIF"
      },
      {
        "valueString" : "Smear for AFB"
      },
      {
        "valueString" : "TB LAMP"
      },
      {
        "valueString" : "TB LAM"
      },
      {
        "valueString" : "Quantiferon/TST"
      },
      {
        "valueString" : "1st line LPA"
      },
      {
        "valueString" : "2nd line LPA"
      },
      {
        "valueString" : "Culture"
      },
      {
        "valueString" : "Phenotypic 1st line DST"
      },
      {
        "valueString" : "Phenotypic 2nd line DST"
      },
      {
        "valueString" : "Other"
      }]
    },
    {
      "linkId" : "other-test-requested",
      "text" : "Specify other test requested",
      "type" : "string",
      "enableWhen" : [{
        "question" : "test-requested",
        "operator" : "=",
        "answerString" : "Other"
      }]
    }]
  },
  {
    "linkId" : "specimen-information",
    "text" : "Specimen information",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "specimen-type",
      "text" : "Type of specimen",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "number-of-specimens",
      "text" : "Number sent to laboratory",
      "type" : "integer",
      "required" : true
    },
    {
      "linkId" : "first-sample-collection-date",
      "text" : "Date of collection of first sample",
      "type" : "date"
    },
    {
      "linkId" : "second-sample-collection-date",
      "text" : "Date of collection of second sample",
      "type" : "date"
    }]
  },
  {
    "linkId" : "requesting-person",
    "text" : "Person requesting examination",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "requester-name",
      "text" : "Name of person requesting examination",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "requester-signature",
      "text" : "Signature",
      "type" : "string"
    },
    {
      "linkId" : "requester-email",
      "text" : "E-mail",
      "type" : "string"
    },
    {
      "linkId" : "requester-phone-number",
      "text" : "Phone number",
      "type" : "string"
    }]
  },
  {
    "linkId" : "requesting-facility",
    "text" : "Requesting health facility",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "health-facility-name",
      "text" : "Name of health facility",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "state",
      "text" : "State",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
    }]
  }]
}

```
