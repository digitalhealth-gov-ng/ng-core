# NG DR-TB Patient Discharge Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG DR-TB Patient Discharge Questionnaire**

## Questionnaire: NG DR-TB Patient Discharge Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-drtb-patient-discharge-questionnaire | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgDRTBPatientDischargeQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.14 | |

 
Questionnaire representing the NTBLCP/DR-TB 06 DR-TB In-Patient Discharge Form, 2019. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-drtb-patient-discharge-questionnaire",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-tb-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-drtb-patient-discharge-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.14"
  }],
  "version" : "0.0.0",
  "name" : "NgDRTBPatientDischargeQuestionnaire",
  "title" : "NG DR-TB Patient Discharge Questionnaire",
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
  "description" : "Questionnaire representing the NTBLCP/DR-TB 06 DR-TB In-Patient Discharge Form, 2019.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "treatment-centre",
    "text" : "DR-TB treatment centre",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "treatment-centre-name",
      "text" : "Name of DR Treatment Centre",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "treatment-centre-state",
      "text" : "State",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
    }]
  },
  {
    "linkId" : "patient-information",
    "text" : "Patient information",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "patient-name",
      "text" : "Name of the patient",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "date-of-birth",
      "text" : "Date of birth",
      "type" : "date"
    },
    {
      "linkId" : "age",
      "text" : "Age",
      "type" : "integer"
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
      "linkId" : "patient-address",
      "text" : "Patient address",
      "type" : "text"
    },
    {
      "linkId" : "patient-phone",
      "text" : "Patient phone number",
      "type" : "string"
    },
    {
      "linkId" : "state-of-residence",
      "text" : "State of residence",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
    },
    {
      "linkId" : "lga-of-residence",
      "text" : "LGA of residence",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
    },
    {
      "linkId" : "treatment-supporter",
      "text" : "Treatment supporter",
      "type" : "group",
      "item" : [{
        "linkId" : "treatment-supporter-name",
        "text" : "Name of treatment supporter",
        "type" : "string"
      },
      {
        "linkId" : "treatment-supporter-phone",
        "text" : "Treatment supporter phone number",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "admission-discharge-information",
    "text" : "Admission, registration and discharge information",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "admission-date",
      "text" : "Date of admission",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "discharge-date",
      "text" : "Date of discharge",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "drtb-registration-number",
      "text" : "DR-TB registration number",
      "type" : "string"
    },
    {
      "linkId" : "drtb-registration-date",
      "text" : "Date of DR-TB registration",
      "type" : "date"
    },
    {
      "linkId" : "treatment-initiation-date",
      "text" : "Date of treatment initiation",
      "type" : "date"
    },
    {
      "linkId" : "health-facility-number",
      "text" : "Health facility number",
      "type" : "string"
    }]
  },
  {
    "linkId" : "discharge-destination",
    "text" : "Facility patient is discharged to",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "receiving-facility-name",
      "text" : "Facility patient is discharged to",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "receiving-facility-state",
      "text" : "State",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
    },
    {
      "linkId" : "receiving-facility-lga",
      "text" : "LGA",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
    }]
  },
  {
    "linkId" : "comorbidity",
    "text" : "Comorbidity",
    "type" : "group",
    "item" : [{
      "linkId" : "has-comorbidity",
      "text" : "Does the patient have any comorbidity?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "comorbidity-details",
      "text" : "Specify comorbidity",
      "type" : "text",
      "enableWhen" : [{
        "question" : "has-comorbidity",
        "operator" : "=",
        "answerBoolean" : true
      }]
    }]
  },
  {
    "linkId" : "inpatient-treatment",
    "text" : "Treatment during admission",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "drugs-used",
      "text" : "Drugs used",
      "type" : "text"
    },
    {
      "linkId" : "admission-treatment-regimen",
      "text" : "Treatment regimen on admission - specify drugs",
      "type" : "text",
      "required" : true
    },
    {
      "linkId" : "admission-treatment-duration",
      "text" : "Duration of treatment regimen on admission",
      "type" : "string"
    }]
  },
  {
    "linkId" : "adverse-reactions",
    "text" : "Adverse reactions during treatment",
    "type" : "group",
    "item" : [{
      "linkId" : "had-adverse-reaction",
      "text" : "Did the patient have any adverse reactions while on treatment?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "adverse-reaction",
      "text" : "Adverse reaction",
      "type" : "group",
      "enableWhen" : [{
        "question" : "had-adverse-reaction",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "repeats" : true,
      "item" : [{
        "linkId" : "adverse-reaction-type",
        "text" : "Type of adverse reaction",
        "type" : "string"
      },
      {
        "linkId" : "adverse-reaction-date",
        "text" : "Date of adverse reaction",
        "type" : "date"
      },
      {
        "linkId" : "adverse-reaction-treatment",
        "text" : "Treatment given for adverse reaction",
        "type" : "text"
      }]
    }]
  },
  {
    "linkId" : "post-discharge-treatment",
    "text" : "Treatment to continue after discharge",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "dots-facility-treatment-regimen",
      "text" : "Treatment regimen to be continued at the DOTS Facility - specify drugs",
      "type" : "text",
      "required" : true
    },
    {
      "linkId" : "discharge-medication-supply-days",
      "text" : "Number of days the drugs given on discharge day will last",
      "type" : "integer",
      "required" : true
    }]
  },
  {
    "linkId" : "programme-coordination",
    "text" : "Programme coordination contacts",
    "type" : "group",
    "item" : [{
      "linkId" : "stblco",
      "text" : "STBLCO the patient is discharged to",
      "type" : "group",
      "item" : [{
        "linkId" : "stblco-name",
        "text" : "Name of STBLCO",
        "type" : "string"
      },
      {
        "linkId" : "stblco-phone",
        "text" : "STBLCO phone number",
        "type" : "string"
      }]
    },
    {
      "linkId" : "state-drtb-focal-person",
      "text" : "State DR-TB Focal Person the patient is discharged to",
      "type" : "group",
      "item" : [{
        "linkId" : "state-drtb-focal-person-name",
        "text" : "Name of State DR-TB Focal Person",
        "type" : "string"
      },
      {
        "linkId" : "state-drtb-focal-person-phone",
        "text" : "State DR-TB Focal Person phone number",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "treatment-centre-personnel",
    "text" : "Treatment centre responsible personnel",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "treatment-centre-medical-doctor",
      "text" : "Treatment Centre Medical Doctor",
      "type" : "group",
      "item" : [{
        "linkId" : "medical-doctor-name",
        "text" : "Name of Treatment Centre Medical Doctor",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "medical-doctor-phone",
        "text" : "Treatment Centre Medical Doctor phone number",
        "type" : "string"
      },
      {
        "linkId" : "medical-doctor-signature",
        "text" : "Treatment Centre Medical Doctor signature or signature reference",
        "type" : "string"
      }]
    },
    {
      "linkId" : "treatment-centre-matron",
      "text" : "Treatment Centre Matron",
      "type" : "group",
      "item" : [{
        "linkId" : "matron-name",
        "text" : "Name of Treatment Centre Matron",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "matron-phone",
        "text" : "Treatment Centre Matron phone number",
        "type" : "string"
      },
      {
        "linkId" : "matron-signature",
        "text" : "Treatment Centre Matron signature or signature reference",
        "type" : "string"
      }]
    }]
  }]
}

```
