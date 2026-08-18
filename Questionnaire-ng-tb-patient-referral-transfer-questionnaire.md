# NG TB Patient Referral/Transfer Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Patient Referral/Transfer Questionnaire**

## Questionnaire: NG TB Patient Referral/Transfer Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-patient-referral-transfer-questionnaire | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgTBPatientReferralTransferQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.17 | |

 
Questionnaire representing the NTBLCP/DR-TB 02 TB Patient Referral/Transfer Form. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-tb-patient-referral-transfer-questionnaire",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-tb-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-patient-referral-transfer-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.17"
  }],
  "version" : "0.0.0",
  "name" : "NgTBPatientReferralTransferQuestionnaire",
  "title" : "NG TB Patient Referral/Transfer Questionnaire",
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
  "description" : "Questionnaire representing the NTBLCP/DR-TB 02 TB Patient Referral/Transfer Form.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "referral-transfer-information",
    "text" : "Section 1 - Referral/Transfer information",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "referral-date",
      "prefix" : "1.",
      "text" : "Date",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "patient-name",
      "prefix" : "2.",
      "text" : "Patient name",
      "type" : "group",
      "required" : true,
      "item" : [{
        "linkId" : "patient-surname",
        "text" : "Surname",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "patient-other-names",
        "text" : "Other names",
        "type" : "string",
        "required" : true
      }]
    },
    {
      "linkId" : "patient-address",
      "prefix" : "3.",
      "text" : "Patient address, including detailed address and landmark",
      "type" : "text"
    },
    {
      "linkId" : "patient-phone-number",
      "prefix" : "4.",
      "text" : "Phone number",
      "type" : "string"
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
      "linkId" : "referral-transfer-classification",
      "text" : "Referral/transfer classification",
      "type" : "choice",
      "repeats" : true,
      "answerOption" : [{
        "valueString" : "DS-TB"
      },
      {
        "valueString" : "DR-TB"
      },
      {
        "valueString" : "Transfer"
      },
      {
        "valueString" : "Refer"
      }]
    },
    {
      "linkId" : "health-facility-number",
      "prefix" : "5.",
      "text" : "Health facility number",
      "type" : "string"
    },
    {
      "linkId" : "lga-tb-number",
      "text" : "LGA TB number, if applicable",
      "type" : "string"
    },
    {
      "linkId" : "referring-from",
      "prefix" : "6.",
      "text" : "Referring from",
      "type" : "group",
      "required" : true,
      "item" : [{
        "linkId" : "referring-facility-name",
        "text" : "Facility name",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "referring-facility-lga",
        "text" : "LGA",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
      },
      {
        "linkId" : "referring-facility-state",
        "text" : "State",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
      }]
    },
    {
      "linkId" : "referring-to",
      "prefix" : "7.",
      "text" : "Referring to",
      "type" : "group",
      "required" : true,
      "item" : [{
        "linkId" : "receiving-facility-name",
        "text" : "Facility name",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "receiving-facility-lga",
        "text" : "LGA",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
      },
      {
        "linkId" : "receiving-facility-state",
        "text" : "State",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
      }]
    },
    {
      "linkId" : "type-of-patient",
      "prefix" : "8.",
      "text" : "Type of patient - initial classification",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "New"
      },
      {
        "valueString" : "Relapse"
      },
      {
        "valueString" : "Treatment after failure"
      },
      {
        "valueString" : "Treatment after loss to follow-up"
      },
      {
        "valueString" : "Other previously treated patients"
      },
      {
        "valueString" : "Unknown previous TB treatment history"
      },
      {
        "valueString" : "Transfer in"
      }]
    },
    {
      "linkId" : "reason-for-referral",
      "prefix" : "9.",
      "text" : "Reason for referral",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "DR-TB treatment"
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
      "linkId" : "laboratory-results",
      "prefix" : "10.",
      "text" : "Laboratory results",
      "type" : "group",
      "item" : [{
        "linkId" : "specimen-identification-number",
        "text" : "Specimen identification number",
        "type" : "string"
      },
      {
        "linkId" : "smear-result",
        "text" : "Smear result",
        "type" : "string"
      },
      {
        "linkId" : "xpert-mtb-rif-result",
        "text" : "Xpert MTB/RIF assay result",
        "type" : "string"
      },
      {
        "linkId" : "culture-result",
        "text" : "Culture result",
        "type" : "string"
      },
      {
        "linkId" : "other-laboratory-result",
        "text" : "Other laboratory result",
        "type" : "string"
      }]
    },
    {
      "linkId" : "hiv-status",
      "prefix" : "11.",
      "text" : "HIV status",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "HIV unknown"
      },
      {
        "valueString" : "HIV negative"
      },
      {
        "valueString" : "HIV positive"
      }]
    },
    {
      "linkId" : "current-medications",
      "prefix" : "12.",
      "text" : "Current medications",
      "type" : "choice",
      "repeats" : true,
      "answerOption" : [{
        "valueString" : "None"
      },
      {
        "valueString" : "TB treatment"
      },
      {
        "valueString" : "ART"
      },
      {
        "valueString" : "CPT"
      },
      {
        "valueString" : "Other"
      }]
    },
    {
      "linkId" : "current-tb-treatment-regimen",
      "text" : "Current TB treatment regimen",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "current-medications",
        "operator" : "=",
        "answerString" : "TB treatment"
      }],
      "answerOption" : [{
        "valueString" : "Six months regimen"
      },
      {
        "valueString" : "Twelve months regimen"
      },
      {
        "valueString" : "Shorter regimen"
      },
      {
        "valueString" : "Individualized regimen"
      },
      {
        "valueString" : "Oral regimen"
      }]
    },
    {
      "linkId" : "current-art-medications",
      "text" : "ART - list current medications",
      "type" : "string",
      "enableWhen" : [{
        "question" : "current-medications",
        "operator" : "=",
        "answerString" : "ART"
      }]
    },
    {
      "linkId" : "other-current-medication",
      "text" : "Specify other current medication",
      "type" : "string",
      "enableWhen" : [{
        "question" : "current-medications",
        "operator" : "=",
        "answerString" : "Other"
      }]
    },
    {
      "linkId" : "current-tb-regimen-start-date",
      "prefix" : "13.",
      "text" : "Date current TB regimen began",
      "type" : "date"
    },
    {
      "linkId" : "additional-clinical-notes",
      "prefix" : "14.",
      "text" : "Additional clinical notes",
      "type" : "text"
    },
    {
      "linkId" : "last-clinical-visit-date",
      "prefix" : "15.",
      "text" : "Date of last clinical visit at referral site",
      "type" : "date"
    },
    {
      "linkId" : "receiving-site-first-appointment-date",
      "prefix" : "16.",
      "text" : "Date of scheduled first appointment at the receiving site",
      "type" : "date"
    },
    {
      "linkId" : "referral-person",
      "prefix" : "17.",
      "text" : "Person effecting the referral",
      "type" : "group",
      "required" : true,
      "item" : [{
        "linkId" : "referral-person-name",
        "text" : "Name",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "referral-person-designation",
        "text" : "Designation",
        "type" : "string"
      },
      {
        "linkId" : "referral-person-phone",
        "text" : "Telephone number",
        "type" : "string"
      },
      {
        "linkId" : "referral-person-signature",
        "text" : "Signature or signature reference",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "acknowledgement-of-enrolment",
    "text" : "Section 2 - Acknowledgement of enrolment of patient",
    "type" : "group",
    "item" : [{
      "linkId" : "acknowledgement-instructions",
      "text" : "To be completed by the receiving TB admission centre and returned to the referring or transferring facility after the patient has reported.",
      "type" : "display"
    },
    {
      "linkId" : "received-date",
      "prefix" : "18.",
      "text" : "Received date",
      "type" : "date"
    },
    {
      "linkId" : "receiving-person",
      "prefix" : "19.",
      "text" : "Person receiving the patient",
      "type" : "group",
      "item" : [{
        "linkId" : "receiving-person-name",
        "text" : "Name of person receiving the patient",
        "type" : "string"
      },
      {
        "linkId" : "receiving-person-designation",
        "text" : "Designation",
        "type" : "string"
      },
      {
        "linkId" : "receiving-person-phone",
        "text" : "Telephone number",
        "type" : "string"
      },
      {
        "linkId" : "receiving-person-signature",
        "text" : "Signature or signature reference",
        "type" : "string"
      }]
    },
    {
      "linkId" : "tb-centre-admission-date",
      "prefix" : "20.",
      "text" : "Date of admission to TB centre",
      "type" : "date"
    }]
  }]
}

```
