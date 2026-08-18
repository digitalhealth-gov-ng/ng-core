# NG TB Index Patient Contact Investigation Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Index Patient Contact Investigation Questionnaire**

## Questionnaire: NG TB Index Patient Contact Investigation Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-index-patient-contact-investigation-questionnaire | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgTBIndexPatientContactInvestigationQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.16 | |

 
Questionnaire representing the NTBLCP/TB 10 TB Index Patient Contact Investigation Form. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-tb-index-patient-contact-investigation-questionnaire",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-tb-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-index-patient-contact-investigation-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.16"
  }],
  "version" : "0.0.0",
  "name" : "NgTBIndexPatientContactInvestigationQuestionnaire",
  "title" : "NG TB Index Patient Contact Investigation Questionnaire",
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
  "description" : "Questionnaire representing the NTBLCP/TB 10 TB Index Patient Contact Investigation Form.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "contact-investigator-information",
    "text" : "Part A - Contact Investigator Information",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "contact-investigator-name",
      "text" : "Name of TB Contact Investigator",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "contact-investigator-designation",
      "text" : "Designation of TB Contact Investigator",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "Community Volunteer (CV)"
      },
      {
        "valueString" : "Community TB Worker (CTW)"
      },
      {
        "valueString" : "Healthcare Worker (HCW)"
      },
      {
        "valueString" : "Other"
      }]
    },
    {
      "linkId" : "other-investigator-designation",
      "text" : "Specify other TB Contact Investigator designation",
      "type" : "string",
      "enableWhen" : [{
        "question" : "contact-investigator-designation",
        "operator" : "=",
        "answerString" : "Other"
      }]
    },
    {
      "linkId" : "contact-investigator-phone",
      "text" : "Phone number of TB Contact Investigator",
      "type" : "string"
    },
    {
      "linkId" : "contact-tracing-date",
      "text" : "Date contact tracing conducted",
      "type" : "date",
      "required" : true
    }]
  },
  {
    "linkId" : "index-case-information",
    "text" : "Part B - Index Case Information",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "index-patient-name",
      "text" : "Name of Index TB Patient",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "index-case-lgatb-registration-number",
      "text" : "LGATB registration number of index case",
      "type" : "string"
    },
    {
      "linkId" : "number-household-contacts",
      "text" : "Number of household contacts",
      "type" : "integer",
      "required" : true
    },
    {
      "linkId" : "type-of-tb",
      "text" : "Type of TB",
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
      "linkId" : "contact-tracing-consent",
      "text" : "Consent for contact tracing",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "Agreed"
      },
      {
        "valueString" : "Declined"
      }]
    },
    {
      "linkId" : "index-patient-address",
      "text" : "Address of index TB patient",
      "type" : "text"
    },
    {
      "linkId" : "index-patient-phone",
      "text" : "Phone number of index TB patient",
      "type" : "string"
    }]
  },
  {
    "linkId" : "contacts",
    "text" : "Parts C-E - Household Contact Investigation",
    "type" : "group",
    "item" : [{
      "linkId" : "contact",
      "text" : "Household contact",
      "type" : "group",
      "required" : true,
      "repeats" : true,
      "item" : [{
        "linkId" : "contact-serial-number",
        "text" : "Serial number",
        "type" : "integer"
      },
      {
        "linkId" : "contact-name",
        "text" : "Name of contact, surname first",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "contact-age",
        "text" : "Age",
        "type" : "integer",
        "required" : true
      },
      {
        "linkId" : "contact-sex",
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
        "linkId" : "contact-phone-number",
        "text" : "Phone number",
        "type" : "string"
      },
      {
        "linkId" : "relationship-with-index-case",
        "text" : "Relationship with index case",
        "type" : "string"
      },
      {
        "linkId" : "tb-symptom-checklist",
        "text" : "Part D - TB Symptom Checklist",
        "type" : "group",
        "item" : [{
          "linkId" : "cough",
          "text" : "Cough for 2 weeks or more",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "cough-plhiv-note",
          "text" : "For a person living with HIV, cough of any duration is considered presumptive TB.",
          "type" : "display"
        },
        {
          "linkId" : "weight-loss",
          "text" : "Weight loss of 3 kg or more in one month, or appreciable weight loss described by the contact",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "night-sweats",
          "text" : "Night sweats",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "fever",
          "text" : "Fever",
          "type" : "boolean",
          "required" : true
        }]
      },
      {
        "linkId" : "contact-investigation-outcome",
        "text" : "Part E - Contact Investigation Outcome and Actions",
        "type" : "group",
        "item" : [{
          "linkId" : "presumptive-tb-identified",
          "text" : "Presumptive TB case identified",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "presumptive-tb-referred",
          "text" : "Presumptive TB case referred for diagnosis",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "sputum-samples-collected",
          "text" : "Sputum samples collected",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "tb-diagnosed",
          "text" : "TB diagnosed",
          "type" : "boolean",
          "required" : true
        }]
      }]
    }]
  }]
}

```
