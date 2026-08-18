# NG TB Patient Treatment Card Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Patient Treatment Card Questionnaire**

## Questionnaire: NG TB Patient Treatment Card Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-patient-treatment-card-questionnaire | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgTBPatientTreatmentCardQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.18 | |

 
Questionnaire representing the NTBLCP/TB 05 Tuberculosis Patient Treatment Card. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-tb-patient-treatment-card-questionnaire",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-tb-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-patient-treatment-card-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.18"
  }],
  "version" : "0.0.0",
  "name" : "NgTBPatientTreatmentCardQuestionnaire",
  "title" : "NG TB Patient Treatment Card Questionnaire",
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
  "description" : "Questionnaire representing the NTBLCP/TB 05 Tuberculosis Patient Treatment Card.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "patient-identification",
    "text" : "Patient and treatment-card identification",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "hospital-clinic-number",
      "text" : "Hospital/Clinic number",
      "type" : "string"
    },
    {
      "linkId" : "etbmanager-unique-number",
      "text" : "e-TBManager unique number",
      "type" : "string"
    },
    {
      "linkId" : "lga-tb-number",
      "text" : "LGA TB number",
      "type" : "string"
    },
    {
      "linkId" : "health-facility-name",
      "text" : "Name of health facility",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "patient-name",
      "text" : "Name of patient in full",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "patient-address",
      "text" : "Address in full",
      "type" : "text"
    },
    {
      "linkId" : "age",
      "text" : "Age",
      "type" : "integer",
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
      "linkId" : "marital-status",
      "text" : "Marital status",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "Married"
      },
      {
        "valueString" : "Single"
      },
      {
        "valueString" : "Divorced"
      },
      {
        "valueString" : "Widow/Widower"
      }]
    },
    {
      "linkId" : "patient-occupation",
      "text" : "Patient occupation",
      "type" : "string"
    },
    {
      "linkId" : "health-care-worker",
      "text" : "Is the patient a health care worker?",
      "type" : "boolean"
    },
    {
      "linkId" : "patient-phone-number",
      "text" : "Phone number",
      "type" : "string"
    }]
  },
  {
    "linkId" : "contact-household-information",
    "text" : "Contact person and household information",
    "type" : "group",
    "item" : [{
      "linkId" : "contact-person-name",
      "text" : "Name of contact person",
      "type" : "string"
    },
    {
      "linkId" : "contact-person-phone",
      "text" : "Contact person's phone number",
      "type" : "string"
    },
    {
      "linkId" : "contact-person-address",
      "text" : "Contact person's address in full",
      "type" : "text"
    },
    {
      "linkId" : "previous-anti-tb-drugs-over-one-month",
      "text" : "History of intake of anti-TB drugs for more than one month?",
      "type" : "boolean"
    },
    {
      "linkId" : "previous-anti-tb-duration-weeks",
      "text" : "Duration of previous anti-TB drug intake in weeks",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "previous-anti-tb-drugs-over-one-month",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "household-contacts-under-five",
      "text" : "Number of household contacts under 5 years",
      "type" : "integer"
    },
    {
      "linkId" : "household-contacts-five-and-above",
      "text" : "Number of household contacts aged 5 years and above",
      "type" : "integer"
    }]
  },
  {
    "linkId" : "tb-classification",
    "text" : "TB disease classification",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "site-of-disease",
      "text" : "Site of disease",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "Pulmonary (P)"
      },
      {
        "valueString" : "Extrapulmonary (EP)"
      }]
    },
    {
      "linkId" : "extrapulmonary-site",
      "text" : "Site of extrapulmonary TB",
      "type" : "string",
      "enableWhen" : [{
        "question" : "site-of-disease",
        "operator" : "=",
        "answerString" : "Extrapulmonary (EP)"
      }]
    },
    {
      "linkId" : "type-of-patient",
      "text" : "Type of patient",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "New (N)"
      },
      {
        "valueString" : "Relapse (R)"
      },
      {
        "valueString" : "Treatment after failure (TAF)"
      },
      {
        "valueString" : "Treatment after loss to follow-up (TALF)"
      },
      {
        "valueString" : "Other previously treated (OPT)"
      },
      {
        "valueString" : "Patients with unknown previous TB treatment history (PUPH)"
      },
      {
        "valueString" : "Transferred in (TI)"
      }]
    }]
  },
  {
    "linkId" : "referral-information",
    "text" : "Referral information",
    "type" : "group",
    "item" : [{
      "linkId" : "source-of-referral",
      "text" : "Source of referral",
      "type" : "choice",
      "repeats" : true,
      "answerOption" : [{
        "valueString" : "ART facility"
      },
      {
        "valueString" : "TB patient"
      },
      {
        "valueString" : "Out Patient Department (OPD)"
      },
      {
        "valueString" : "Community Volunteer (CV)"
      },
      {
        "valueString" : "Treatment Supporter (TS)"
      },
      {
        "valueString" : "Community TB Worker (CTW)"
      },
      {
        "valueString" : "DOTS facility"
      },
      {
        "valueString" : "Patent Medicine Vendor (PMV)"
      },
      {
        "valueString" : "Community Pharmacy (CP)"
      },
      {
        "valueString" : "Faith-based organization (FBO)"
      },
      {
        "valueString" : "Private-for-profit (PFP)"
      },
      {
        "valueString" : "Traditional birth attendant (TBA)"
      },
      {
        "valueString" : "Stand-alone laboratory"
      },
      {
        "valueString" : "Community Informant (CI)"
      },
      {
        "valueString" : "Other"
      }]
    },
    {
      "linkId" : "other-referral-source",
      "text" : "Specify other source of referral",
      "type" : "string",
      "enableWhen" : [{
        "question" : "source-of-referral",
        "operator" : "=",
        "answerString" : "Other"
      }]
    },
    {
      "linkId" : "referral-date",
      "text" : "Referral date",
      "type" : "date"
    }]
  },
  {
    "linkId" : "diagnostic-tests",
    "text" : "Diagnostic tests",
    "type" : "group",
    "item" : [{
      "linkId" : "xpert-result",
      "text" : "Xpert result",
      "type" : "group",
      "item" : [{
        "linkId" : "xpert-date",
        "text" : "Xpert test date",
        "type" : "date"
      },
      {
        "linkId" : "xpert-mtb-result",
        "text" : "Xpert MTB result",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "MTB detected"
        },
        {
          "valueString" : "MTB not detected"
        }]
      }]
    },
    {
      "linkId" : "afb-result",
      "text" : "AFB result",
      "type" : "group",
      "item" : [{
        "linkId" : "afb-date",
        "text" : "AFB examination date",
        "type" : "date"
      },
      {
        "linkId" : "afb-laboratory-serial-number",
        "text" : "Laboratory serial number",
        "type" : "string"
      },
      {
        "linkId" : "afb-smear-result",
        "text" : "Smear result",
        "type" : "string"
      }]
    },
    {
      "linkId" : "xray-result",
      "text" : "X-Ray result",
      "type" : "group",
      "item" : [{
        "linkId" : "xray-date",
        "text" : "X-Ray date",
        "type" : "date"
      },
      {
        "linkId" : "xray-interpretation",
        "text" : "X-Ray result",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Suggestive"
        },
        {
          "valueString" : "Not suggestive"
        }]
      }]
    },
    {
      "linkId" : "tissue-biopsy-result",
      "text" : "Tissue biopsy result",
      "type" : "group",
      "item" : [{
        "linkId" : "tissue-biopsy-date",
        "text" : "Tissue biopsy date",
        "type" : "date"
      },
      {
        "linkId" : "tissue-biopsy-specimen-type",
        "text" : "Type of specimen",
        "type" : "string"
      },
      {
        "linkId" : "tissue-biopsy-interpretation",
        "text" : "Tissue biopsy result",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Suggestive"
        },
        {
          "valueString" : "Not suggestive"
        }]
      }]
    },
    {
      "linkId" : "other-diagnostic-test",
      "text" : "Other diagnostic test",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "other-diagnostic-test-date",
        "text" : "Date",
        "type" : "date"
      },
      {
        "linkId" : "other-diagnostic-test-name",
        "text" : "Specify test, e.g. TB-LAMP or LF-LAM",
        "type" : "string"
      },
      {
        "linkId" : "other-diagnostic-test-result",
        "text" : "Result",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Positive"
        },
        {
          "valueString" : "Negative"
        }]
      }]
    }]
  },
  {
    "linkId" : "hiv-information",
    "text" : "HIV status and HIV services",
    "type" : "group",
    "item" : [{
      "linkId" : "previously-known-hiv-status",
      "text" : "Previously known HIV status",
      "type" : "choice",
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
      "linkId" : "newly-tested-hiv-status",
      "text" : "Newly tested HIV status",
      "type" : "choice",
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
      "linkId" : "end-treatment-hiv-status",
      "text" : "HIV status at end of treatment",
      "type" : "choice",
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
      "linkId" : "hiv-referred",
      "text" : "Referred for HIV services",
      "type" : "boolean"
    },
    {
      "linkId" : "hiv-referral-date",
      "text" : "Date referred for HIV services",
      "type" : "date",
      "enableWhen" : [{
        "question" : "hiv-referred",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "on-art",
      "text" : "On ART",
      "type" : "boolean"
    },
    {
      "linkId" : "art-date",
      "text" : "ART date",
      "type" : "date",
      "enableWhen" : [{
        "question" : "on-art",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "on-cpt",
      "text" : "On Cotrimoxazole Preventive Therapy (CPT)",
      "type" : "boolean"
    },
    {
      "linkId" : "cpt-date",
      "text" : "CPT date",
      "type" : "date",
      "enableWhen" : [{
        "question" : "on-cpt",
        "operator" : "=",
        "answerBoolean" : true
      }]
    }]
  },
  {
    "linkId" : "treatment-monitoring",
    "text" : "Treatment monitoring",
    "type" : "group",
    "item" : [{
      "linkId" : "treatment-monitoring-entry",
      "text" : "Treatment monitoring entry",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "monitoring-month",
        "text" : "Treatment month",
        "type" : "choice",
        "answerOption" : [{
          "valueInteger" : 0
        },
        {
          "valueInteger" : 2
        },
        {
          "valueInteger" : 3
        },
        {
          "valueInteger" : 5
        },
        {
          "valueInteger" : 6
        }]
      },
      {
        "linkId" : "monitoring-weight",
        "text" : "Weight (kg)",
        "type" : "decimal"
      },
      {
        "linkId" : "monitoring-smear-result",
        "text" : "Smear result",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "intensive-phase",
    "text" : "Intensive phase",
    "type" : "group",
    "item" : [{
      "linkId" : "treatment-regimen",
      "text" : "Treatment regimen",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "6 Months Regimen (Regimen 1)"
      },
      {
        "valueString" : "12 Months Regimen (Regimen 2)"
      }]
    },
    {
      "linkId" : "intensive-rhze-tablets",
      "text" : "RHZE - number of tablets to be taken daily",
      "type" : "integer"
    },
    {
      "linkId" : "intensive-rh-tablets",
      "text" : "RH - number of tablets to be taken daily",
      "type" : "integer"
    },
    {
      "linkId" : "intensive-r-tablets",
      "text" : "R - number of tablets to be taken daily",
      "type" : "integer"
    },
    {
      "linkId" : "intensive-rfb-tablets",
      "text" : "Rfb - number of tablets to be taken daily",
      "type" : "integer"
    },
    {
      "linkId" : "intensive-h-tablets",
      "text" : "H - number of tablets to be taken daily",
      "type" : "integer"
    },
    {
      "linkId" : "intensive-z-tablets",
      "text" : "Z - number of tablets to be taken daily",
      "type" : "integer"
    },
    {
      "linkId" : "intensive-e-tablets",
      "text" : "E - number of tablets to be taken daily",
      "type" : "integer"
    },
    {
      "linkId" : "intensive-monthly-record",
      "text" : "Intensive-phase monthly treatment record",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "intensive-month-year",
        "text" : "Month/Year",
        "type" : "string"
      },
      {
        "linkId" : "intensive-daily-dose",
        "text" : "Daily dose record",
        "type" : "group",
        "repeats" : true,
        "item" : [{
          "linkId" : "intensive-day-of-month",
          "text" : "Day of month",
          "type" : "integer"
        },
        {
          "linkId" : "intensive-dose-status",
          "text" : "Medication administration status",
          "type" : "choice",
          "answerOption" : [{
            "valueString" : "X - Medication swallowed under direct observation of facility staff"
          },
          {
            "valueString" : "A - Medication taken but not observed by facility staff"
          },
          {
            "valueString" : "O - Medication not taken / missed dose"
          },
          {
            "valueString" : "Supplied to treatment supporter"
          }]
        }]
      },
      {
        "linkId" : "intensive-total-doses-month",
        "text" : "Total doses given in the month",
        "type" : "integer"
      },
      {
        "linkId" : "intensive-total-cumulative",
        "text" : "Total cumulative doses",
        "type" : "integer"
      }]
    }]
  },
  {
    "linkId" : "continuation-phase",
    "text" : "Continuation phase",
    "type" : "group",
    "item" : [{
      "linkId" : "continuation-rh-tablets",
      "text" : "RH - number of tablets to be taken daily",
      "type" : "integer"
    },
    {
      "linkId" : "continuation-r-tablets",
      "text" : "R - number of tablets to be taken daily",
      "type" : "integer"
    },
    {
      "linkId" : "continuation-rfb-tablets",
      "text" : "Rfb - number of tablets to be taken daily",
      "type" : "integer"
    },
    {
      "linkId" : "continuation-h-tablets",
      "text" : "H - number of tablets to be taken daily",
      "type" : "integer"
    },
    {
      "linkId" : "continuation-z-tablets",
      "text" : "Z - number of tablets to be taken daily",
      "type" : "integer"
    },
    {
      "linkId" : "continuation-e-tablets",
      "text" : "E - number of tablets to be taken daily",
      "type" : "integer"
    },
    {
      "linkId" : "continuation-monthly-record",
      "text" : "Continuation-phase monthly treatment record",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "continuation-month-year",
        "text" : "Month/Year",
        "type" : "string"
      },
      {
        "linkId" : "continuation-daily-dose",
        "text" : "Daily dose record",
        "type" : "group",
        "repeats" : true,
        "item" : [{
          "linkId" : "continuation-day-of-month",
          "text" : "Day of month",
          "type" : "integer"
        },
        {
          "linkId" : "continuation-dose-status",
          "text" : "Medication administration status",
          "type" : "choice",
          "answerOption" : [{
            "valueString" : "X - Medication swallowed under direct observation of facility staff"
          },
          {
            "valueString" : "A - Medication taken but not observed by facility staff"
          },
          {
            "valueString" : "O - Medication not taken / missed dose"
          },
          {
            "valueString" : "Supplied to treatment supporter"
          }]
        }]
      },
      {
        "linkId" : "continuation-total-doses-month",
        "text" : "Total doses given in the month",
        "type" : "integer"
      },
      {
        "linkId" : "continuation-total-cumulative",
        "text" : "Total cumulative doses",
        "type" : "integer"
      }]
    }]
  },
  {
    "linkId" : "treatment-supporter",
    "text" : "DOT provider and treatment supporter",
    "type" : "group",
    "item" : [{
      "linkId" : "dot-provider-type",
      "text" : "DOT provider",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "Treatment Supporter (TS)"
      },
      {
        "valueString" : "Health Worker"
      }]
    },
    {
      "linkId" : "treatment-supporter-name",
      "text" : "Name of treatment supporter",
      "type" : "string"
    },
    {
      "linkId" : "treatment-supporter-phone",
      "text" : "Treatment supporter phone number",
      "type" : "string"
    },
    {
      "linkId" : "treatment-supporter-signature",
      "text" : "Treatment supporter signature or signature reference",
      "type" : "string"
    }]
  },
  {
    "linkId" : "treatment-outcome",
    "text" : "Treatment outcome and remarks",
    "type" : "group",
    "item" : [{
      "linkId" : "treatment-outcome-value",
      "text" : "Treatment outcome",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "Cured"
      },
      {
        "valueString" : "Treatment completed"
      },
      {
        "valueString" : "Lost to follow-up"
      },
      {
        "valueString" : "Treatment failed"
      },
      {
        "valueString" : "Not evaluated"
      },
      {
        "valueString" : "Died"
      },
      {
        "valueString" : "Removed from the register"
      }]
    },
    {
      "linkId" : "treatment-completion-date",
      "text" : "Date treatment completed",
      "type" : "date"
    },
    {
      "linkId" : "health-worker-signature",
      "text" : "Health worker's signature or signature reference",
      "type" : "string"
    },
    {
      "linkId" : "remarks",
      "text" : "Remarks",
      "type" : "text"
    }]
  }]
}

```
