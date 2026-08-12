# NG HIV Care and ART Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Care and ART Questionnaire**

## Questionnaire: NG HIV Care and ART Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-hiv-care-art-questionnaire | *Version*:0.0.0 |
| Draft as of 2026-07-27 | *Computable Name*:NgHivCareArtFormQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.2 | |

 
Questionnaire representing the Nigeria HIV Care/ART Card initial care and ART workflow. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-hiv-care-art-questionnaire",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-hiv-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-hiv-care-art-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.2"
  }],
  "version" : "0.0.0",
  "name" : "NgHivCareArtFormQuestionnaire",
  "title" : "NG HIV Care and ART Questionnaire",
  "status" : "draft",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-07-27",
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
  "description" : "Questionnaire representing the Nigeria HIV Care/ART Card initial care and ART workflow.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "initial-visit",
    "text" : "Initial visit",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "care-art-card-number",
      "text" : "Care/ART card number",
      "type" : "string"
    },
    {
      "linkId" : "facility-name",
      "text" : "Facility name",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "hospital-number",
      "prefix" : "1.",
      "text" : "Hospital number",
      "type" : "string"
    },
    {
      "linkId" : "unique-id",
      "prefix" : "2.",
      "text" : "Unique ID",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "date-enrolled-in-hiv-care",
      "prefix" : "3.",
      "text" : "Date enrolled in HIV care",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "surname",
      "prefix" : "4.",
      "text" : "Surname",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "other-names",
      "text" : "Other names",
      "type" : "string"
    },
    {
      "linkId" : "address",
      "prefix" : "5.",
      "text" : "Address",
      "type" : "text"
    },
    {
      "linkId" : "occupation",
      "prefix" : "6.",
      "text" : "Occupation",
      "type" : "string"
    },
    {
      "linkId" : "marital-status",
      "prefix" : "7.",
      "text" : "Marital status",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-marital-status-vs"
    },
    {
      "linkId" : "educational-status",
      "prefix" : "8.",
      "text" : "Educational status",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-educational-status-vs"
    },
    {
      "linkId" : "educational-status-other",
      "text" : "Specify other educational status",
      "type" : "string",
      "enableWhen" : [{
        "question" : "educational-status",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-art-codes-cs",
          "code" : "educational-status-5"
        }
      }]
    },
    {
      "linkId" : "telephone-number",
      "prefix" : "9.",
      "text" : "Telephone number",
      "type" : "string"
    },
    {
      "linkId" : "next-of-kin-name",
      "prefix" : "10.",
      "text" : "Next of kin",
      "type" : "string"
    },
    {
      "linkId" : "next-of-kin-relationship",
      "prefix" : "11.",
      "text" : "Relationship of next of kin to client",
      "type" : "string"
    },
    {
      "linkId" : "next-of-kin-telephone",
      "prefix" : "12.",
      "text" : "Telephone number of next of kin",
      "type" : "string"
    },
    {
      "linkId" : "biometric-captured",
      "prefix" : "13.",
      "text" : "Biometric captured",
      "type" : "boolean"
    },
    {
      "linkId" : "sex",
      "prefix" : "14.",
      "text" : "Sex",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "Male"
      },
      {
        "valueString" : "Female"
      }]
    },
    {
      "linkId" : "age",
      "prefix" : "15.",
      "text" : "Age in years or months",
      "type" : "integer"
    },
    {
      "linkId" : "date-of-birth",
      "prefix" : "16.",
      "text" : "Date of birth",
      "type" : "date"
    },
    {
      "linkId" : "mother-unique-id",
      "prefix" : "17.",
      "text" : "Mother's unique ID, if the client is an infant",
      "type" : "string"
    },
    {
      "linkId" : "care-entry-point",
      "prefix" : "18.",
      "text" : "Care entry point",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-care-entry-point-vs"
    },
    {
      "linkId" : "care-entry-point-other",
      "text" : "Specify other care entry point",
      "type" : "string",
      "enableWhen" : [{
        "question" : "care-entry-point",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-art-codes-cs",
          "code" : "care-entry-point-9"
        }
      }]
    },
    {
      "linkId" : "confirmed-hiv-test-date",
      "prefix" : "19.",
      "text" : "Date of confirmed HIV test",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "hiv-test-mode",
      "prefix" : "20.",
      "text" : "Mode of HIV test",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "HIV antibody test"
      },
      {
        "valueString" : "PCR"
      }]
    },
    {
      "linkId" : "hiv-test-location",
      "prefix" : "21.",
      "text" : "HIV test location",
      "type" : "string"
    },
    {
      "linkId" : "prior-art",
      "prefix" : "22.",
      "text" : "Prior ART",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-prior-art-vs"
    },
    {
      "linkId" : "kp-typology",
      "prefix" : "23.",
      "text" : "Key population typology, if applicable",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-kp-typology-vs"
    },
    {
      "linkId" : "date-transferred-in",
      "prefix" : "24a.",
      "text" : "Date transferred in",
      "type" : "date"
    },
    {
      "linkId" : "facility-transferred-from",
      "prefix" : "24b.",
      "text" : "Facility transferred from",
      "type" : "string"
    }]
  },
  {
    "linkId" : "enrollment-and-art-commencement",
    "text" : "Enrollment and ART commencement",
    "type" : "group",
    "item" : [{
      "linkId" : "clinical-stage-at-art-start",
      "prefix" : "25.",
      "text" : "Clinical stage at start of ART",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "WHO stage 1"
      },
      {
        "valueString" : "WHO stage 2"
      },
      {
        "valueString" : "WHO stage 3"
      },
      {
        "valueString" : "WHO stage 4"
      }]
    },
    {
      "linkId" : "cd4-at-art-start",
      "prefix" : "26a.",
      "text" : "CD4 at start of ART, in cells/mm3",
      "type" : "integer"
    },
    {
      "linkId" : "cd4-reference",
      "prefix" : "26b.",
      "text" : "CD4 reference category",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-cd4-reference-vs"
    },
    {
      "linkId" : "initial-adherence-counselling-completed-date",
      "prefix" : "27.",
      "text" : "Date initial adherence counselling was completed",
      "type" : "date"
    },
    {
      "linkId" : "art-start-date",
      "prefix" : "28.",
      "text" : "Date ART started",
      "type" : "date"
    },
    {
      "linkId" : "first-art-regimen",
      "prefix" : "29.",
      "text" : "First ART regimen code or description",
      "type" : "string"
    },
    {
      "linkId" : "weight-at-art-start",
      "prefix" : "30.",
      "text" : "Weight at ART start, in kilograms",
      "type" : "decimal"
    },
    {
      "linkId" : "height-length-at-art-start",
      "prefix" : "31.",
      "text" : "Height or length at ART start, in metres or centimetres",
      "type" : "decimal"
    },
    {
      "linkId" : "bmi-or-muac-at-art-start",
      "prefix" : "32.",
      "text" : "BMI or MUAC at ART start",
      "type" : "string"
    },
    {
      "linkId" : "tb-preventive-therapy",
      "prefix" : "33.",
      "text" : "TB preventive therapy medication",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-tb-preventive-therapy-vs"
    },
    {
      "linkId" : "tb-preventive-therapy-dose",
      "text" : "TB preventive therapy dose",
      "type" : "string"
    },
    {
      "linkId" : "tb-preventive-therapy-start-date",
      "text" : "TB preventive therapy start date",
      "type" : "date"
    },
    {
      "linkId" : "tb-preventive-therapy-completion-date",
      "text" : "TB preventive therapy completion date",
      "type" : "date"
    },
    {
      "linkId" : "pregnant-at-art-start",
      "prefix" : "34.",
      "text" : "Pregnant at ART start",
      "type" : "boolean"
    },
    {
      "linkId" : "breastfeeding-at-art-start",
      "text" : "Breastfeeding at ART start",
      "type" : "boolean"
    }]
  },
  {
    "linkId" : "substitutions-and-switches",
    "text" : "Substitutions and switches",
    "type" : "group",
    "item" : [{
      "linkId" : "substitution-regimen-line",
      "text" : "Regimen line in which substitution occurred",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "First-line regimen"
      },
      {
        "valueString" : "Second-line regimen"
      },
      {
        "valueString" : "Third-line regimen"
      }]
    },
    {
      "linkId" : "first-substitution",
      "text" : "First documented regimen substitution",
      "type" : "group",
      "item" : [{
        "linkId" : "first-substitution-date",
        "prefix" : "35.",
        "text" : "Date of new regimen",
        "type" : "date"
      },
      {
        "linkId" : "first-substitution-reason",
        "prefix" : "36.",
        "text" : "Reason for regimen substitution",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-regimen-change-reason-vs"
      },
      {
        "linkId" : "first-substitution-other-reason",
        "text" : "Specify other reason for regimen substitution",
        "type" : "string",
        "enableWhen" : [{
          "question" : "first-substitution-reason",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-art-codes-cs",
            "code" : "regimen-change-reason-10"
          }
        }]
      },
      {
        "linkId" : "first-substitution-new-regimen",
        "prefix" : "37.",
        "text" : "New regimen code or description",
        "type" : "string"
      }]
    },
    {
      "linkId" : "second-substitution",
      "text" : "Second documented regimen substitution",
      "type" : "group",
      "item" : [{
        "linkId" : "second-substitution-date",
        "prefix" : "38.",
        "text" : "Date of new regimen",
        "type" : "date"
      },
      {
        "linkId" : "second-substitution-reason",
        "prefix" : "39.",
        "text" : "Reason for regimen substitution",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-regimen-change-reason-vs"
      },
      {
        "linkId" : "second-substitution-other-reason",
        "text" : "Specify other reason for regimen substitution",
        "type" : "string",
        "enableWhen" : [{
          "question" : "second-substitution-reason",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-art-codes-cs",
            "code" : "regimen-change-reason-10"
          }
        }]
      },
      {
        "linkId" : "second-substitution-new-regimen",
        "prefix" : "40.",
        "text" : "New regimen code or description",
        "type" : "string"
      }]
    },
    {
      "linkId" : "switch-to-regimen-line",
      "text" : "Regimen line to which the client switched",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "Second-line regimen"
      },
      {
        "valueString" : "Third-line regimen"
      }]
    },
    {
      "linkId" : "drug-resistance-genotyping-done",
      "prefix" : "41a.",
      "text" : "Drug-resistance genotyping done",
      "type" : "boolean"
    },
    {
      "linkId" : "drug-resistance-sample-collection-date",
      "prefix" : "41b.",
      "text" : "Drug-resistance sample collection date",
      "type" : "date",
      "enableWhen" : [{
        "question" : "drug-resistance-genotyping-done",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "drug-resistance-result-received-date",
      "prefix" : "41c.",
      "text" : "Date drug-resistance result was received",
      "type" : "date",
      "enableWhen" : [{
        "question" : "drug-resistance-genotyping-done",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "drug-resistance-result",
      "prefix" : "41d.",
      "text" : "Drug-resistance result",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "drug-resistance-genotyping-done",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-drug-resistance-result-vs"
    },
    {
      "linkId" : "resistance-details",
      "prefix" : "41e.",
      "text" : "If resistance was detected, specify the resistance",
      "type" : "text",
      "enableWhen" : [{
        "question" : "drug-resistance-result",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-art-codes-cs",
          "code" : "drug-resistance-result-2"
        }
      },
      {
        "question" : "drug-resistance-result",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-art-codes-cs",
          "code" : "drug-resistance-result-4"
        }
      }],
      "enableBehavior" : "any"
    },
    {
      "linkId" : "first-switch",
      "text" : "First documented regimen switch",
      "type" : "group",
      "item" : [{
        "linkId" : "first-switch-date",
        "prefix" : "42.",
        "text" : "Date of new regimen",
        "type" : "date"
      },
      {
        "linkId" : "first-switch-reason",
        "prefix" : "43.",
        "text" : "Reason for regimen switch",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-regimen-change-reason-vs"
      },
      {
        "linkId" : "first-switch-other-reason",
        "text" : "Specify other reason for regimen switch",
        "type" : "string",
        "enableWhen" : [{
          "question" : "first-switch-reason",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-art-codes-cs",
            "code" : "regimen-change-reason-10"
          }
        }]
      },
      {
        "linkId" : "first-switch-new-regimen",
        "prefix" : "44.",
        "text" : "New regimen code or description",
        "type" : "string"
      }]
    },
    {
      "linkId" : "second-switch",
      "text" : "Second documented regimen switch",
      "type" : "group",
      "item" : [{
        "linkId" : "second-switch-date",
        "prefix" : "45.",
        "text" : "Date of new regimen",
        "type" : "date"
      },
      {
        "linkId" : "second-switch-reason",
        "prefix" : "46.",
        "text" : "Reason for regimen switch",
        "type" : "choice",
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-regimen-change-reason-vs"
      },
      {
        "linkId" : "second-switch-other-reason",
        "text" : "Specify other reason for regimen switch",
        "type" : "string",
        "enableWhen" : [{
          "question" : "second-switch-reason",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-art-codes-cs",
            "code" : "regimen-change-reason-10"
          }
        }]
      },
      {
        "linkId" : "second-switch-new-regimen",
        "prefix" : "47.",
        "text" : "New regimen code or description",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "discontinuations-and-interruptions",
    "text" : "Discontinuations and interruptions",
    "type" : "group",
    "item" : [{
      "linkId" : "art-interruption",
      "prefix" : "48.",
      "text" : "ART interruption episode",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "interruption-type",
        "text" : "Interruption type",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueString" : "Stopped"
        },
        {
          "valueString" : "Defaulted"
        }]
      },
      {
        "linkId" : "interruption-date",
        "text" : "Interruption date",
        "type" : "date",
        "required" : true
      },
      {
        "linkId" : "art-stop-reason",
        "text" : "Why ART was stopped or interrupted",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-stop-reason-vs"
      },
      {
        "linkId" : "art-stop-other-reason",
        "text" : "Specify other reason for stopping or interrupting ART",
        "type" : "string",
        "enableWhen" : [{
          "question" : "art-stop-reason",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-art-codes-cs",
            "code" : "art-stop-reason-10"
          }
        }]
      },
      {
        "linkId" : "art-restart-date",
        "text" : "Date ART was restarted, if applicable",
        "type" : "date"
      }]
    },
    {
      "linkId" : "transfer-out-date",
      "prefix" : "49.",
      "text" : "Date patient transferred out",
      "type" : "date"
    },
    {
      "linkId" : "facility-transferred-to",
      "prefix" : "50.",
      "text" : "Facility transferred to",
      "type" : "string"
    },
    {
      "linkId" : "date-of-death",
      "prefix" : "51.",
      "text" : "Date patient died",
      "type" : "date"
    },
    {
      "linkId" : "source-of-death-information",
      "prefix" : "52.",
      "text" : "Source of death information",
      "type" : "string"
    },
    {
      "linkId" : "cause-of-death",
      "prefix" : "53.",
      "text" : "Cause of death",
      "type" : "choice",
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-cause-of-death-vs"
    },
    {
      "linkId" : "cause-of-death-other",
      "text" : "Specify other cause of death",
      "type" : "string",
      "enableWhen" : [{
        "question" : "cause-of-death",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-art-codes-cs",
          "code" : "cause-of-death-8"
        }
      }]
    },
    {
      "linkId" : "history-of-drug-allergies",
      "prefix" : "54.",
      "text" : "History of drug allergies",
      "type" : "text"
    }]
  },
  {
    "linkId" : "art-adherence-preparation",
    "text" : "ART adherence preparation",
    "type" : "group",
    "item" : [{
      "linkId" : "art-adherence-preparation-session",
      "text" : "ART adherence preparation session",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "adherence-preparation-date",
        "text" : "Date of adherence preparation session",
        "type" : "date",
        "required" : true
      },
      {
        "linkId" : "art-essentials-education",
        "text" : "ART essentials explained",
        "type" : "boolean"
      },
      {
        "linkId" : "complete-adherence-importance",
        "text" : "Why complete adherence is needed explained",
        "type" : "boolean"
      },
      {
        "linkId" : "dose-and-missed-dose-guidance",
        "text" : "Dose, administration time and missed-dose guidance provided",
        "type" : "boolean"
      },
      {
        "linkId" : "side-effect-guidance",
        "text" : "Possible side effects and their management explained",
        "type" : "boolean"
      },
      {
        "linkId" : "adherence-plan-completed",
        "text" : "Adherence plan completed, including schedule, aids, diary and travel preparation",
        "type" : "boolean"
      },
      {
        "linkId" : "treatment-supporter-preparation",
        "text" : "Treatment supporter prepared",
        "type" : "boolean"
      },
      {
        "linkId" : "treatment-supporter-contact",
        "text" : "Treatment supporter name, address and telephone contacts",
        "type" : "text"
      },
      {
        "linkId" : "ready-for-art",
        "text" : "Client assessed as ready for ART",
        "type" : "boolean"
      },
      {
        "linkId" : "art-readiness-date",
        "text" : "Date client was assessed as ready for ART",
        "type" : "date"
      },
      {
        "linkId" : "art-readiness-result",
        "text" : "ART readiness result or comments",
        "type" : "text"
      }]
    }]
  },
  {
    "linkId" : "initial-clinical-evaluation",
    "text" : "Initial clinical evaluation",
    "type" : "group",
    "item" : [{
      "linkId" : "medical-history",
      "text" : "Medical history",
      "type" : "group",
      "item" : [{
        "linkId" : "symptom-review",
        "prefix" : "1.",
        "text" : "Symptom review",
        "type" : "group",
        "repeats" : true,
        "item" : [{
          "linkId" : "symptom",
          "text" : "Symptom",
          "type" : "choice",
          "required" : true,
          "answerOption" : [{
            "valueString" : "Fever or chills"
          },
          {
            "valueString" : "Ear discharge"
          },
          {
            "valueString" : "Pain on micturition"
          },
          {
            "valueString" : "Chronic diarrhoea"
          },
          {
            "valueString" : "Weight loss or failure to gain weight"
          },
          {
            "valueString" : "Oral sores"
          },
          {
            "valueString" : "Genital sores"
          },
          {
            "valueString" : "Numbness or tingling"
          },
          {
            "valueString" : "Night sweats"
          },
          {
            "valueString" : "Pain or difficulty when swallowing"
          },
          {
            "valueString" : "Genital discharge"
          },
          {
            "valueString" : "Convulsion"
          },
          {
            "valueString" : "Nausea or vomiting"
          },
          {
            "valueString" : "Difficulty breathing"
          },
          {
            "valueString" : "Genital itching"
          },
          {
            "valueString" : "Pain"
          },
          {
            "valueString" : "Irritability"
          },
          {
            "valueString" : "Cough"
          },
          {
            "valueString" : "Food refusal"
          },
          {
            "valueString" : "Rash"
          },
          {
            "valueString" : "Weakness"
          },
          {
            "valueString" : "Headache"
          },
          {
            "valueString" : "Diarrhoea"
          },
          {
            "valueString" : "Difficulty sleeping"
          },
          {
            "valueString" : "Itching"
          },
          {
            "valueString" : "New visual impairment"
          },
          {
            "valueString" : "Other symptom"
          }]
        },
        {
          "linkId" : "symptom-duration",
          "text" : "Symptom duration",
          "type" : "string"
        },
        {
          "linkId" : "other-symptom",
          "text" : "Specify other symptom",
          "type" : "string",
          "enableWhen" : [{
            "question" : "symptom",
            "operator" : "=",
            "answerString" : "Other symptom"
          }]
        }]
      },
      {
        "linkId" : "assessed-for-tb",
        "prefix" : "2a.",
        "text" : "Patient assessed for TB",
        "type" : "boolean"
      },
      {
        "linkId" : "tb-status",
        "prefix" : "2b.",
        "text" : "TB status",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "No signs or symptoms of TB"
        },
        {
          "valueString" : "Presumptive TB"
        },
        {
          "valueString" : "Currently on TB preventive therapy"
        },
        {
          "valueString" : "Confirmed active TB"
        },
        {
          "valueString" : "Currently on TB treatment"
        }]
      },
      {
        "linkId" : "developmental-assessment",
        "prefix" : "3.",
        "text" : "Developmental assessment",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Appropriate"
        },
        {
          "valueString" : "Delayed"
        },
        {
          "valueString" : "Significant developmental delay"
        }]
      },
      {
        "linkId" : "immunisation-complete-for-age",
        "prefix" : "4.",
        "text" : "Immunisation complete for age",
        "type" : "boolean"
      },
      {
        "linkId" : "infant-feeding-mode",
        "prefix" : "5.",
        "text" : "Mode of infant feeding for infants six months or younger",
        "type" : "choice",
        "answerOption" : [{
          "valueString" : "Exclusive breastfeeding"
        },
        {
          "valueString" : "Exclusive breast-milk substitute"
        },
        {
          "valueString" : "Mixed feeding"
        }]
      },
      {
        "linkId" : "known-drug-allergies",
        "prefix" : "6.",
        "text" : "Known drug allergies",
        "type" : "text"
      },
      {
        "linkId" : "past-medical-history",
        "prefix" : "7.",
        "text" : "Past medical history, including hospitalisation and surgery",
        "type" : "text"
      },
      {
        "linkId" : "pregnancy-information",
        "prefix" : "8.",
        "text" : "Pregnancy information",
        "type" : "group",
        "item" : [{
          "linkId" : "currently-pregnant",
          "prefix" : "8a.",
          "text" : "Currently pregnant",
          "type" : "choice",
          "answerOption" : [{
            "valueString" : "Yes"
          },
          {
            "valueString" : "No"
          },
          {
            "valueString" : "Uncertain"
          }]
        },
        {
          "linkId" : "last-menstrual-period",
          "prefix" : "8b.",
          "text" : "Last menstrual period",
          "type" : "date"
        },
        {
          "linkId" : "gestational-age-weeks",
          "prefix" : "8c.",
          "text" : "Gestational age in weeks",
          "type" : "integer"
        },
        {
          "linkId" : "expected-date-of-delivery",
          "prefix" : "8d.",
          "text" : "Expected date of delivery",
          "type" : "date"
        }]
      },
      {
        "linkId" : "previous-arv-exposure",
        "prefix" : "9a.",
        "text" : "Previous ARV exposure",
        "type" : "boolean"
      },
      {
        "linkId" : "previous-arv-exposure-type",
        "text" : "Type of previous ARV exposure",
        "type" : "choice",
        "enableWhen" : [{
          "question" : "previous-arv-exposure",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "repeats" : true,
        "answerOption" : [{
          "valueString" : "Earlier ARV but not a transfer in"
        },
        {
          "valueString" : "PrEP"
        },
        {
          "valueString" : "PEP"
        },
        {
          "valueString" : "Transfer in without records"
        }]
      },
      {
        "linkId" : "previous-arv-facility",
        "prefix" : "9b.",
        "text" : "Name of facility where previous ARV care was received",
        "type" : "string",
        "enableWhen" : [{
          "question" : "previous-arv-exposure",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "linkId" : "previous-arv-care-start-date",
        "prefix" : "9c.",
        "text" : "Previous ARV care start date",
        "type" : "date",
        "enableWhen" : [{
          "question" : "previous-arv-exposure",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "linkId" : "previous-arv-care-end-date",
        "text" : "Previous ARV care end date",
        "type" : "date",
        "enableWhen" : [{
          "question" : "previous-arv-exposure",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "linkId" : "current-medications",
        "prefix" : "10.",
        "text" : "Current medications",
        "type" : "choice",
        "repeats" : true,
        "answerOption" : [{
          "valueString" : "None"
        },
        {
          "valueString" : "ART"
        },
        {
          "valueString" : "Cotrimoxazole"
        },
        {
          "valueString" : "Anti-TB drugs"
        },
        {
          "valueString" : "Other medication"
        }]
      },
      {
        "linkId" : "current-medications-other",
        "text" : "Specify other current medication",
        "type" : "text",
        "enableWhen" : [{
          "question" : "current-medications",
          "operator" : "=",
          "answerString" : "Other medication"
        }]
      },
      {
        "linkId" : "status-disclosure",
        "prefix" : "11.",
        "text" : "Patient has disclosed or can disclose HIV status to",
        "type" : "choice",
        "repeats" : true,
        "answerOption" : [{
          "valueString" : "No one"
        },
        {
          "valueString" : "Family member"
        },
        {
          "valueString" : "Friend"
        },
        {
          "valueString" : "Spouse"
        },
        {
          "valueString" : "Spiritual leader"
        },
        {
          "valueString" : "Other person"
        }]
      },
      {
        "linkId" : "status-disclosure-other",
        "text" : "Specify other person to whom status can be disclosed",
        "type" : "string",
        "enableWhen" : [{
          "question" : "status-disclosure",
          "operator" : "=",
          "answerString" : "Other person"
        }]
      },
      {
        "linkId" : "past-or-current-medication-side-effects",
        "prefix" : "12a.",
        "text" : "Past or current ARV or other medication side effects",
        "type" : "boolean"
      },
      {
        "linkId" : "medication-side-effects",
        "text" : "Describe the medication side effects",
        "type" : "text",
        "enableWhen" : [{
          "question" : "past-or-current-medication-side-effects",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "linkId" : "medications-associated-with-side-effects",
        "prefix" : "12b.",
        "text" : "Specify medication or medications associated with side effects",
        "type" : "text",
        "enableWhen" : [{
          "question" : "past-or-current-medication-side-effects",
          "operator" : "=",
          "answerBoolean" : true
        }]
      }]
    },
    {
      "linkId" : "physical-examination",
      "prefix" : "13.",
      "text" : "Physical examination",
      "type" : "group",
      "item" : [{
        "linkId" : "temperature-celsius",
        "text" : "Temperature in degrees Celsius",
        "type" : "decimal"
      },
      {
        "linkId" : "blood-pressure",
        "text" : "Blood pressure in mmHg",
        "type" : "string"
      },
      {
        "linkId" : "pulse-rate",
        "text" : "Pulse rate in beats per minute",
        "type" : "integer"
      },
      {
        "linkId" : "weight-kg",
        "text" : "Weight in kilograms",
        "type" : "decimal"
      },
      {
        "linkId" : "height-m",
        "text" : "Height in metres",
        "type" : "decimal"
      },
      {
        "linkId" : "head-circumference-cm",
        "text" : "Head circumference in centimetres",
        "type" : "decimal"
      },
      {
        "linkId" : "body-surface-area",
        "text" : "Body surface area",
        "type" : "decimal"
      },
      {
        "linkId" : "general-appearance-findings",
        "text" : "General appearance findings",
        "type" : "choice",
        "repeats" : true,
        "answerOption" : [{
          "valueString" : "No significant findings"
        },
        {
          "valueString" : "Pallor"
        },
        {
          "valueString" : "Febrile"
        },
        {
          "valueString" : "Dehydrated"
        },
        {
          "valueString" : "Jaundice"
        },
        {
          "valueString" : "Peripheral oedema"
        },
        {
          "valueString" : "Other finding"
        }]
      },
      {
        "linkId" : "general-appearance-other",
        "text" : "Specify other general-appearance finding",
        "type" : "text",
        "enableWhen" : [{
          "question" : "general-appearance-findings",
          "operator" : "=",
          "answerString" : "Other finding"
        }]
      },
      {
        "linkId" : "respiratory-rate",
        "text" : "Respiratory rate in breaths per minute",
        "type" : "integer"
      },
      {
        "linkId" : "respiratory-findings",
        "text" : "Respiratory findings",
        "type" : "choice",
        "repeats" : true,
        "answerOption" : [{
          "valueString" : "No significant findings"
        },
        {
          "valueString" : "Laboured breathing"
        },
        {
          "valueString" : "Intercostal or subcostal recession"
        },
        {
          "valueString" : "Cyanosis"
        },
        {
          "valueString" : "Wheezing"
        }]
      },
      {
        "linkId" : "respiratory-auscultation",
        "text" : "Respiratory auscultation finding",
        "type" : "text"
      },
      {
        "linkId" : "respiratory-other",
        "text" : "Other respiratory finding",
        "type" : "text"
      },
      {
        "linkId" : "cardiovascular-findings",
        "text" : "Cardiovascular findings",
        "type" : "choice",
        "repeats" : true,
        "answerOption" : [{
          "valueString" : "No significant findings"
        },
        {
          "valueString" : "Abnormal heart rate"
        }]
      },
      {
        "linkId" : "cardiovascular-auscultation",
        "text" : "Cardiovascular auscultation finding",
        "type" : "text"
      },
      {
        "linkId" : "cardiovascular-other",
        "text" : "Other cardiovascular finding",
        "type" : "text"
      },
      {
        "linkId" : "gastrointestinal-findings",
        "text" : "Gastrointestinal findings",
        "type" : "choice",
        "repeats" : true,
        "answerOption" : [{
          "valueString" : "No significant findings"
        },
        {
          "valueString" : "Distention"
        },
        {
          "valueString" : "Hepatomegaly"
        },
        {
          "valueString" : "Splenomegaly"
        },
        {
          "valueString" : "Tenderness"
        }]
      },
      {
        "linkId" : "gastrointestinal-other",
        "text" : "Other gastrointestinal finding",
        "type" : "text"
      },
      {
        "linkId" : "genital-findings",
        "text" : "Genital findings",
        "type" : "choice",
        "repeats" : true,
        "answerOption" : [{
          "valueString" : "No significant findings"
        },
        {
          "valueString" : "Genital discharge"
        },
        {
          "valueString" : "Genital ulcer or lesion"
        }]
      },
      {
        "linkId" : "tanner-stage",
        "text" : "Tanner stage",
        "type" : "string"
      },
      {
        "linkId" : "neurological-findings",
        "text" : "Neurological findings",
        "type" : "choice",
        "repeats" : true,
        "answerOption" : [{
          "valueString" : "No significant findings"
        },
        {
          "valueString" : "Disoriented in time, place or person"
        },
        {
          "valueString" : "Impaired consciousness"
        },
        {
          "valueString" : "Slurred speech"
        },
        {
          "valueString" : "Neck stiffness"
        },
        {
          "valueString" : "Blindness in one or both eyes"
        },
        {
          "valueString" : "Weakness or paralysis"
        },
        {
          "valueString" : "Numbness of extremities"
        }]
      },
      {
        "linkId" : "neurological-other",
        "text" : "Other neurological finding",
        "type" : "text"
      },
      {
        "linkId" : "breast-gland-findings",
        "text" : "Breast or gland findings",
        "type" : "choice",
        "repeats" : true,
        "answerOption" : [{
          "valueString" : "No significant findings"
        },
        {
          "valueString" : "Lumps or masses"
        },
        {
          "valueString" : "Discharge"
        },
        {
          "valueString" : "Parotid swelling"
        },
        {
          "valueString" : "Lymphadenopathy"
        }]
      },
      {
        "linkId" : "breast-gland-other",
        "text" : "Other breast or gland finding",
        "type" : "text"
      },
      {
        "linkId" : "mental-status-findings",
        "text" : "Mental-status findings",
        "type" : "choice",
        "repeats" : true,
        "answerOption" : [{
          "valueString" : "No significant findings"
        },
        {
          "valueString" : "Slow mentation"
        },
        {
          "valueString" : "Memory loss"
        },
        {
          "valueString" : "Mood swings"
        },
        {
          "valueString" : "Depression"
        },
        {
          "valueString" : "Anxiety"
        },
        {
          "valueString" : "Suicidal ideation"
        }]
      },
      {
        "linkId" : "mental-status-other",
        "text" : "Other mental-status finding",
        "type" : "text"
      },
      {
        "linkId" : "skin-findings",
        "text" : "Skin findings",
        "type" : "choice",
        "repeats" : true,
        "answerOption" : [{
          "valueString" : "No significant findings"
        },
        {
          "valueString" : "Pruritic papular dermatitis"
        },
        {
          "valueString" : "Abscesses"
        },
        {
          "valueString" : "Herpes zoster"
        },
        {
          "valueString" : "Kaposi's lesions"
        },
        {
          "valueString" : "Seborrhoeic dermatitis"
        },
        {
          "valueString" : "Fungal infections"
        },
        {
          "valueString" : "Scabies"
        }]
      },
      {
        "linkId" : "skin-other",
        "text" : "Other skin finding",
        "type" : "text"
      },
      {
        "linkId" : "head-eye-ent-findings",
        "text" : "Head, eye, ear, nose and throat findings",
        "type" : "choice",
        "repeats" : true,
        "answerOption" : [{
          "valueString" : "No significant findings"
        },
        {
          "valueString" : "Icterus"
        },
        {
          "valueString" : "Thrush"
        },
        {
          "valueString" : "Oral Kaposi sarcoma"
        },
        {
          "valueString" : "Gingivitis"
        },
        {
          "valueString" : "Otitis media"
        },
        {
          "valueString" : "Ear discharge"
        },
        {
          "valueString" : "Oral ulcer"
        },
        {
          "valueString" : "Abnormal fundoscopy"
        }]
      },
      {
        "linkId" : "head-eye-ent-other",
        "text" : "Other head, eye, ear, nose or throat finding",
        "type" : "text"
      },
      {
        "linkId" : "additional-detailed-findings",
        "text" : "Additional and detailed findings",
        "type" : "text"
      }]
    },
    {
      "linkId" : "clinical-assessment",
      "prefix" : "14.",
      "text" : "Clinical assessment",
      "type" : "choice",
      "repeats" : true,
      "answerOption" : [{
        "valueString" : "Asymptomatic"
      },
      {
        "valueString" : "Symptomatic"
      },
      {
        "valueString" : "AIDS-defining illness"
      },
      {
        "valueString" : "Opportunistic infection"
      }]
    },
    {
      "linkId" : "who-clinical-stage",
      "prefix" : "15.",
      "text" : "WHO clinical stage",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "WHO stage 1"
      },
      {
        "valueString" : "WHO stage 2"
      },
      {
        "valueString" : "WHO stage 3"
      },
      {
        "valueString" : "WHO stage 4"
      }]
    },
    {
      "linkId" : "enrol-in-service",
      "prefix" : "16.",
      "text" : "Enrol in service",
      "type" : "choice",
      "repeats" : true,
      "answerOption" : [{
        "valueString" : "General medical follow-up"
      },
      {
        "valueString" : "ARV therapy"
      },
      {
        "valueString" : "Advanced HIV disease management"
      },
      {
        "valueString" : "Pending laboratory results"
      }]
    },
    {
      "linkId" : "art-plan",
      "prefix" : "17.",
      "text" : "Plan for antiretroviral therapy",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "Ongoing monitoring; ART postponed for clinical reasons"
      },
      {
        "valueString" : "Change treatment"
      },
      {
        "valueString" : "Restart treatment"
      },
      {
        "valueString" : "Start new treatment"
      }]
    },
    {
      "linkId" : "drugs-in-regimen",
      "prefix" : "18.",
      "text" : "Drugs in regimen",
      "type" : "text"
    },
    {
      "linkId" : "additional-comments",
      "prefix" : "19.",
      "text" : "Additional comments",
      "type" : "text"
    },
    {
      "linkId" : "next-appointment-date",
      "prefix" : "20.",
      "text" : "Next appointment date",
      "type" : "date"
    },
    {
      "linkId" : "clinician-name",
      "text" : "Clinician's name",
      "type" : "string"
    },
    {
      "linkId" : "clinician-signature",
      "text" : "Clinician signature or signature reference",
      "type" : "string"
    }]
  },
  {
    "linkId" : "care-and-support-positive-health-dignity-prevention",
    "text" : "Care and support/Positive Health, Dignity and Prevention services",
    "type" : "group",
    "item" : [{
      "linkId" : "care-support-service-delivery",
      "text" : "Care and support service delivery",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "service-date",
        "text" : "Date service was provided",
        "type" : "date",
        "required" : true
      },
      {
        "linkId" : "services-provided",
        "text" : "Service or services provided",
        "type" : "choice",
        "required" : true,
        "repeats" : true,
        "answerOption" : [{
          "valueString" : "Adherence counselling"
        },
        {
          "valueString" : "Basic HIV education and transmission, including nutrition"
        },
        {
          "valueString" : "Prevention counselling: abstinence, safer sex and household precautions"
        },
        {
          "valueString" : "Disclosure, partner testing and counselling, and family situation"
        },
        {
          "valueString" : "Condom provision"
        },
        {
          "valueString" : "STI screening, diagnosis and referral for management"
        },
        {
          "valueString" : "Provision of or referral for reproductive health and family-planning services"
        },
        {
          "valueString" : "Alcohol and other substance-use risk-reduction counselling"
        },
        {
          "valueString" : "Symptom management and palliative care at home"
        },
        {
          "valueString" : "Positive-living counselling"
        },
        {
          "valueString" : "Support-group enrolment, community support and clinic contacts"
        },
        {
          "valueString" : "Mental-health screening"
        }]
      },
      {
        "linkId" : "service-comment",
        "text" : "Comment",
        "type" : "text"
      }]
    }]
  }]
}

```
