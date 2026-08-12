# NG HIV Care and Treatment Transfer Form Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Care and Treatment Transfer Form Questionnaire**

## Questionnaire: NG HIV Care and Treatment Transfer Form Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-hiv-transfer-form-questionnaire | *Version*:0.0.0 |
| Draft as of 2026-07-28 | *Computable Name*:NgHivTransferFormQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.6 | |

 
Questionnaire representing the Nigeria HIV Care and Treatment Transfer Form revised November 2025. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-hiv-transfer-form-questionnaire",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-hiv-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-hiv-transfer-form-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.6"
  }],
  "version" : "0.0.0",
  "name" : "NgHivTransferFormQuestionnaire",
  "title" : "NG HIV Care and Treatment Transfer Form Questionnaire",
  "status" : "draft",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-07-28",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    },
    {
      "system" : "email",
      "value" : "emeka2015@gmail.com"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "lekeojewale@gmail.com",
      "use" : "work"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "emeka2015@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "Questionnaire representing the Nigeria HIV Care and Treatment Transfer Form revised November 2025.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "transfer-document-and-client",
    "text" : "Transfer document and client identity",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "transfer-form-date",
      "prefix" : "1.",
      "text" : "Date the transfer form was completed",
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
        "linkId" : "surname",
        "text" : "Surname",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "other-names",
        "text" : "Other names",
        "type" : "string"
      }]
    },
    {
      "linkId" : "hospital-unit-number",
      "prefix" : "3.",
      "text" : "Hospital or unit number",
      "type" : "string"
    },
    {
      "linkId" : "unique-id",
      "prefix" : "4.",
      "text" : "HIV clinic unique identifier",
      "type" : "group",
      "required" : true,
      "item" : [{
        "linkId" : "unique-id-state",
        "text" : "State component of the unique identifier",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
      },
      {
        "linkId" : "unique-id-lga",
        "text" : "LGA component of the unique identifier",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
      },
      {
        "linkId" : "unique-id-facility-number",
        "text" : "Facility-number component of the unique identifier",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "unique-id-client-number",
        "text" : "Client-number component of the unique identifier",
        "type" : "string",
        "required" : true
      }]
    },
    {
      "linkId" : "sex",
      "prefix" : "5.",
      "text" : "Sex at birth",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-gender-vs"
    },
    {
      "linkId" : "date-of-birth",
      "prefix" : "6.",
      "text" : "Date of birth",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "age-years",
      "prefix" : "7.",
      "text" : "Age in completed years",
      "type" : "integer"
    },
    {
      "linkId" : "phone-number",
      "prefix" : "8.",
      "text" : "Client telephone number",
      "type" : "string"
    },
    {
      "linkId" : "current-address",
      "prefix" : "9.",
      "text" : "Client's current residential or work address, including a known landmark",
      "type" : "text",
      "required" : true
    }]
  },
  {
    "linkId" : "transfer-sites",
    "text" : "Transferring and receiving treatment sites",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "transferring-from",
      "prefix" : "10.",
      "text" : "Transferring from",
      "type" : "group",
      "required" : true,
      "item" : [{
        "linkId" : "transferring-from-facility",
        "text" : "Transferring facility name",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "transferring-from-lga",
        "text" : "LGA of the transferring facility",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
      },
      {
        "linkId" : "transferring-from-state",
        "text" : "State of the transferring facility",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
      }]
    },
    {
      "linkId" : "transferring-to",
      "prefix" : "11.",
      "text" : "Transferring to",
      "type" : "group",
      "required" : true,
      "item" : [{
        "linkId" : "transferring-to-facility",
        "text" : "Receiving facility name",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "transferring-to-lga",
        "text" : "LGA of the receiving facility, if known",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
      },
      {
        "linkId" : "transferring-to-state",
        "text" : "State of the receiving facility, if known",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
      }]
    }]
  },
  {
    "linkId" : "clinical-and-treatment-summary",
    "text" : "Clinical and treatment summary",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "clinical-notes",
      "prefix" : "12.",
      "text" : "Clinical notes, including drug allergies, ART history, adherence, comorbidities and other relevant history",
      "type" : "text",
      "required" : true
    },
    {
      "linkId" : "confirmed-hiv-positive-date",
      "prefix" : "13a.",
      "text" : "Date confirmed HIV positive",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "hiv-test-mode",
      "prefix" : "13b.",
      "text" : "Mode of the confirmatory HIV test",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-test-type-vs"
    },
    {
      "linkId" : "pregnancy-status",
      "prefix" : "14a.",
      "text" : "Pregnancy status",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "sex",
        "operator" : "=",
        "answerCoding" : {
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "female"
        }
      }],
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-pregnancy-status-vs"
    },
    {
      "linkId" : "gestational-age-weeks",
      "prefix" : "14b.",
      "text" : "Gestational age in completed weeks",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "pregnancy-status",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-pregnancy-status-cs",
          "code" : "pregnant"
        }
      },
      {
        "question" : "pregnancy-status",
        "operator" : "=",
        "answerCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "77386006"
        }
      }],
      "enableBehavior" : "any"
    },
    {
      "linkId" : "date-enrolled-in-care",
      "prefix" : "15a.",
      "text" : "Date enrolled in HIV care",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "date-enrolled-in-treatment",
      "prefix" : "15b.",
      "text" : "Date ART treatment commenced",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "current-who-clinical-stage",
      "prefix" : "16.",
      "text" : "Current WHO clinical stage",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-who-stage-vs"
    },
    {
      "linkId" : "baseline-cd4-count",
      "prefix" : "17a.",
      "text" : "Baseline CD4 count in cells/mm3",
      "type" : "integer"
    },
    {
      "linkId" : "current-cd4-count",
      "prefix" : "17b.",
      "text" : "Current CD4 count in cells/mm3",
      "type" : "integer"
    },
    {
      "linkId" : "current-viral-load",
      "prefix" : "18.",
      "text" : "Current viral load in copies/mL",
      "type" : "integer"
    },
    {
      "linkId" : "height-or-length",
      "prefix" : "19.",
      "text" : "Height or length in metres or centimetres",
      "type" : "quantity"
    },
    {
      "linkId" : "weight",
      "prefix" : "20.",
      "text" : "Weight in kilograms",
      "type" : "quantity"
    },
    {
      "linkId" : "bmi-or-muac",
      "prefix" : "21.",
      "text" : "BMI or MUAC",
      "type" : "string"
    },
    {
      "linkId" : "original-first-line-art-regimen",
      "prefix" : "22a.",
      "text" : "Original first-line ART regimen",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-arv-treatment-vs"
    },
    {
      "linkId" : "current-regimen-line",
      "prefix" : "22b.",
      "text" : "Current ART regimen line",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-regimen-line-vs"
    },
    {
      "linkId" : "current-medications",
      "prefix" : "23.",
      "text" : "Current medications and doses",
      "type" : "group",
      "item" : [{
        "linkId" : "no-current-medications",
        "text" : "No current medication recorded",
        "type" : "boolean"
      },
      {
        "linkId" : "current-art-regimen",
        "text" : "Current ART regimen",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-arv-treatment-vs"
      },
      {
        "linkId" : "current-art-dose",
        "text" : "Current ART dose or dosing instructions",
        "type" : "string"
      },
      {
        "linkId" : "current-ctx-regimen",
        "text" : "Current co-trimoxazole regimen",
        "type" : "string"
      },
      {
        "linkId" : "current-ctx-dose",
        "text" : "Current co-trimoxazole dose or dosing instructions",
        "type" : "string"
      },
      {
        "linkId" : "current-anti-tb-medications",
        "text" : "Current anti-TB medication or medications",
        "type" : "text"
      },
      {
        "linkId" : "other-current-medications",
        "text" : "Other current medication or medications and doses",
        "type" : "text"
      }]
    },
    {
      "linkId" : "adherence-measure",
      "prefix" : "24.",
      "text" : "ART adherence measure",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-eac-adherence-vs"
    }]
  },
  {
    "linkId" : "latest-laboratory-results",
    "prefix" : "25.",
    "text" : "Latest laboratory results from the preceding year",
    "type" : "group",
    "item" : [{
      "linkId" : "latest-cd4",
      "text" : "CD4 count",
      "type" : "group",
      "item" : [{
        "linkId" : "latest-cd4-date",
        "text" : "Date of the latest cd4 count result",
        "type" : "date"
      },
      {
        "linkId" : "latest-cd4-value",
        "text" : "CD4 count in cells/mm3",
        "type" : "integer"
      },
      {
        "linkId" : "latest-cd4-next-due-date",
        "text" : "Date the next cd4 count test is due",
        "type" : "date"
      }]
    },
    {
      "linkId" : "latest-haemoglobin",
      "text" : "haemoglobin",
      "type" : "group",
      "item" : [{
        "linkId" : "latest-haemoglobin-date",
        "text" : "Date of the latest haemoglobin result",
        "type" : "date"
      },
      {
        "linkId" : "latest-haemoglobin-value",
        "text" : "Haemoglobin in g/dL",
        "type" : "decimal"
      },
      {
        "linkId" : "latest-haemoglobin-next-due-date",
        "text" : "Date the next haemoglobin test is due",
        "type" : "date"
      }]
    },
    {
      "linkId" : "latest-wbc",
      "text" : "white blood cell count",
      "type" : "group",
      "item" : [{
        "linkId" : "latest-wbc-date",
        "text" : "Date of the latest white blood cell count result",
        "type" : "date"
      },
      {
        "linkId" : "latest-wbc-value",
        "text" : "White blood cell count in x10^9/L",
        "type" : "decimal"
      },
      {
        "linkId" : "latest-wbc-next-due-date",
        "text" : "Date the next white blood cell count test is due",
        "type" : "date"
      }]
    },
    {
      "linkId" : "latest-ast",
      "text" : "AST",
      "type" : "group",
      "item" : [{
        "linkId" : "latest-ast-date",
        "text" : "Date of the latest ast result",
        "type" : "date"
      },
      {
        "linkId" : "latest-ast-value",
        "text" : "AST in international units",
        "type" : "decimal"
      },
      {
        "linkId" : "latest-ast-next-due-date",
        "text" : "Date the next ast test is due",
        "type" : "date"
      }]
    },
    {
      "linkId" : "latest-alt",
      "text" : "ALT",
      "type" : "group",
      "item" : [{
        "linkId" : "latest-alt-date",
        "text" : "Date of the latest alt result",
        "type" : "date"
      },
      {
        "linkId" : "latest-alt-value",
        "text" : "ALT in international units",
        "type" : "decimal"
      },
      {
        "linkId" : "latest-alt-next-due-date",
        "text" : "Date the next alt test is due",
        "type" : "date"
      }]
    },
    {
      "linkId" : "latest-viral-load",
      "text" : "viral load",
      "type" : "group",
      "item" : [{
        "linkId" : "latest-viral-load-date",
        "text" : "Date of the latest viral load result",
        "type" : "date"
      },
      {
        "linkId" : "latest-viral-load-value",
        "text" : "Viral load in copies/mL",
        "type" : "integer"
      },
      {
        "linkId" : "latest-viral-load-next-due-date",
        "text" : "Date the next viral load test is due",
        "type" : "date"
      }]
    }]
  },
  {
    "linkId" : "transfer-details-and-sign-off",
    "text" : "Transfer reason, treatment supporter and transferring-site sign-off",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "reason-for-transfer",
      "prefix" : "26.",
      "text" : "Reason for transfer",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-transfer-reason-vs"
    },
    {
      "linkId" : "treatment-supporter",
      "prefix" : "27.",
      "text" : "Treatment supporter",
      "type" : "group",
      "item" : [{
        "linkId" : "treatment-supporter-name",
        "text" : "Name of treatment supporter",
        "type" : "string"
      },
      {
        "linkId" : "treatment-supporter-address",
        "text" : "Treatment supporter's home or office contact address",
        "type" : "text"
      },
      {
        "linkId" : "treatment-supporter-phone",
        "text" : "Treatment supporter's telephone number",
        "type" : "string"
      },
      {
        "linkId" : "treatment-supporter-relationship",
        "text" : "Treatment supporter's relationship to the client",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-relationships-vs"
      }]
    },
    {
      "linkId" : "additional-notes-recommendations",
      "prefix" : "28.",
      "text" : "Additional notes and/or recommendations",
      "type" : "text"
    },
    {
      "linkId" : "transferring-clinician-name",
      "prefix" : "29.",
      "text" : "Transferring clinician's name",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "transferring-clinician-signature",
      "prefix" : "30.",
      "text" : "Transferring clinician's signature or signature reference",
      "type" : "string"
    },
    {
      "linkId" : "last-clinic-visit-date",
      "prefix" : "31.",
      "text" : "Date of the last clinic visit at the transferring site",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "receiving-site-appointment-date",
      "prefix" : "32.",
      "text" : "Date of the first confirmed scheduled appointment at the receiving site",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "transfer-facilitator-name",
      "prefix" : "33.",
      "text" : "Name of the person effecting the transfer",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "transfer-facilitator-phone",
      "prefix" : "34.",
      "text" : "Telephone number of the person effecting the transfer",
      "type" : "string",
      "required" : true
    }]
  },
  {
    "linkId" : "receiving-site-acknowledgement",
    "text" : "Acknowledgement of transfer, to be completed by the receiving ART service point",
    "type" : "group",
    "item" : [{
      "linkId" : "patient-came-with-transfer-form",
      "prefix" : "35.",
      "text" : "Patient came with the transfer form",
      "type" : "boolean"
    },
    {
      "linkId" : "patient-attended-first-receiving-site-visit",
      "prefix" : "36.",
      "text" : "Patient attended the first visit at the receiving ART site",
      "type" : "boolean"
    },
    {
      "linkId" : "transfer-received-date",
      "prefix" : "37.",
      "text" : "Date the receiving site received the transfer or the patient presented",
      "type" : "date"
    },
    {
      "linkId" : "first-receiving-site-visit-date",
      "prefix" : "38.",
      "text" : "Date of the patient's first service visit at the receiving site",
      "type" : "date",
      "enableWhen" : [{
        "question" : "patient-attended-first-receiving-site-visit",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "receiving-clinician-name",
      "prefix" : "39.",
      "text" : "Name of the clinician receiving the transfer",
      "type" : "string"
    },
    {
      "linkId" : "receiving-clinician-phone",
      "prefix" : "40.",
      "text" : "Telephone number of the clinician receiving the transfer",
      "type" : "string"
    }]
  }]
}

```
