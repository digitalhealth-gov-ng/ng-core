# NG HIV Combined Pharmacy Order Form Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Combined Pharmacy Order Form Questionnaire**

## Questionnaire: NG HIV Combined Pharmacy Order Form Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-hiv-pharmacy-order-questionnaire | *Version*:0.0.0 |
| Draft as of 2026-07-28 | *Computable Name*:NgHivPharmacyOrderQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.5 | |

 
Questionnaire representing the Nigeria Combined Pharmacy Order Form revised November 2025. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-hiv-pharmacy-order-questionnaire",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-hiv-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-hiv-pharmacy-order-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.5"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPharmacyOrderQuestionnaire",
  "title" : "NG HIV Combined Pharmacy Order Form Questionnaire",
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
  "description" : "Questionnaire representing the Nigeria Combined Pharmacy Order Form revised November 2025.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "prescription-and-client-information",
    "text" : "Prescription purpose, visit and client information",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "purpose-of-prescription",
      "prefix" : "1.",
      "text" : "Purpose of prescription",
      "type" : "choice",
      "required" : true,
      "repeats" : true,
      "answerOption" : [{
        "valueString" : "ART"
      },
      {
        "valueString" : "Non-ART"
      },
      {
        "valueString" : "Occupational PEP"
      },
      {
        "valueString" : "Non-occupational PEP"
      },
      {
        "valueString" : "HIV-exposed infant"
      },
      {
        "valueString" : "PrEP"
      }]
    },
    {
      "linkId" : "visit-type",
      "prefix" : "2.",
      "text" : "Visit type",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerOption" : [{
        "valueString" : "Initial visit"
      },
      {
        "valueString" : "Follow-up visit"
      }]
    },
    {
      "linkId" : "visit-date",
      "prefix" : "4.",
      "text" : "Visit date",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "surname",
      "prefix" : "5.",
      "text" : "Surname",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "other-names",
      "prefix" : "6.",
      "text" : "Other name or names",
      "type" : "string"
    },
    {
      "linkId" : "age-value",
      "prefix" : "7.",
      "text" : "Age",
      "type" : "integer",
      "required" : true
    },
    {
      "linkId" : "age-unit",
      "text" : "Age unit",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "Years"
      },
      {
        "valueString" : "Months"
      }]
    },
    {
      "linkId" : "sex",
      "prefix" : "8.",
      "text" : "Sex",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-gender-vs"
    },
    {
      "linkId" : "state",
      "prefix" : "9.",
      "text" : "State where the facility is located",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
    },
    {
      "linkId" : "lga",
      "prefix" : "10.",
      "text" : "Local Government Area where the facility is located",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
    },
    {
      "linkId" : "facility-name",
      "prefix" : "11.",
      "text" : "Facility name",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "client-unique-id",
      "prefix" : "12.",
      "text" : "Client unique ID",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "hospital-unit-number",
      "prefix" : "13.",
      "text" : "Hospital or unit number",
      "type" : "string"
    },
    {
      "linkId" : "weight-kg",
      "prefix" : "14.",
      "text" : "Weight in kilograms",
      "type" : "decimal"
    },
    {
      "linkId" : "height-m",
      "text" : "Height in metres",
      "type" : "decimal"
    },
    {
      "linkId" : "pregnant",
      "prefix" : "15.",
      "text" : "Pregnant",
      "type" : "boolean"
    },
    {
      "linkId" : "refill-only",
      "prefix" : "16.",
      "text" : "Visit is for medicine refill only",
      "type" : "boolean"
    },
    {
      "linkId" : "regimen-substitution",
      "prefix" : "17.",
      "text" : "There is a substitution in the client regimen at this visit",
      "type" : "boolean"
    },
    {
      "linkId" : "regimen-switch",
      "prefix" : "18.",
      "text" : "There is a switch in the client regimen at this visit",
      "type" : "boolean"
    },
    {
      "linkId" : "dsd-model",
      "prefix" : "19.",
      "text" : "Model of care",
      "type" : "choice",
      "answerOption" : [{
        "valueString" : "Facility-based"
      },
      {
        "valueString" : "Community-based"
      }]
    },
    {
      "linkId" : "next-appointment-date",
      "prefix" : "20.",
      "text" : "Next appointment date",
      "type" : "date"
    }]
  },
  {
    "linkId" : "viral-load-and-eac",
    "text" : "Viral load and Enhanced Adherence Counselling",
    "type" : "group",
    "item" : [{
      "linkId" : "viral-load-result",
      "prefix" : "21.",
      "text" : "Most recent viral-load result in copies/mL",
      "type" : "integer"
    },
    {
      "linkId" : "last-viral-load-date",
      "text" : "Date of the most recent viral-load test or result",
      "type" : "date"
    },
    {
      "linkId" : "eac-sessions-received",
      "prefix" : "22.",
      "text" : "Enhanced Adherence Counselling sessions received",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "viral-load-result",
        "operator" : ">",
        "answerInteger" : 50
      }],
      "repeats" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-eac-given-vs"
    }]
  },
  {
    "linkId" : "pharmacy-orders",
    "text" : "Pharmacy orders",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "adult-art-orders",
      "prefix" : "23.",
      "text" : "Adult ART medicine order",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "adult-art-medicine",
        "text" : "Medicine product and strength",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-adult-art-medication-vs"
      },
      {
        "linkId" : "adult-art-strength",
        "text" : "Strength, if different from or additional to the coded product",
        "type" : "string"
      },
      {
        "linkId" : "adult-art-frequency",
        "text" : "Administration frequency",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueString" : "OD"
        },
        {
          "valueString" : "BD"
        },
        {
          "valueString" : "TDS"
        },
        {
          "valueString" : "QDS"
        },
        {
          "valueString" : "Three times weekly"
        },
        {
          "valueString" : "Weekly"
        },
        {
          "valueString" : "Monthly"
        },
        {
          "valueString" : "As directed"
        },
        {
          "valueString" : "Other"
        }]
      },
      {
        "linkId" : "adult-art-frequency-other",
        "text" : "Specify other administration frequency",
        "type" : "string",
        "enableWhen" : [{
          "question" : "adult-art-frequency",
          "operator" : "=",
          "answerString" : "Other"
        }]
      },
      {
        "linkId" : "adult-art-duration-value",
        "text" : "Duration value",
        "type" : "integer",
        "required" : true
      },
      {
        "linkId" : "adult-art-duration-unit",
        "text" : "Duration unit",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueString" : "Days"
        },
        {
          "valueString" : "Weeks"
        },
        {
          "valueString" : "Months"
        }]
      },
      {
        "linkId" : "adult-art-quantity-prescribed",
        "text" : "Quantity prescribed",
        "type" : "integer",
        "required" : true
      },
      {
        "linkId" : "adult-art-quantity-dispensed",
        "text" : "Quantity dispensed",
        "type" : "integer"
      }]
    },
    {
      "linkId" : "paediatric-art-orders",
      "prefix" : "23.",
      "text" : "Paediatric ART medicine order",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "paediatric-art-medicine",
        "text" : "Medicine product and strength",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-paediatric-art-medication-vs"
      },
      {
        "linkId" : "paediatric-art-strength",
        "text" : "Strength, if different from or additional to the coded product",
        "type" : "string"
      },
      {
        "linkId" : "paediatric-art-frequency",
        "text" : "Administration frequency",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueString" : "OD"
        },
        {
          "valueString" : "BD"
        },
        {
          "valueString" : "TDS"
        },
        {
          "valueString" : "QDS"
        },
        {
          "valueString" : "Three times weekly"
        },
        {
          "valueString" : "Weekly"
        },
        {
          "valueString" : "Monthly"
        },
        {
          "valueString" : "As directed"
        },
        {
          "valueString" : "Other"
        }]
      },
      {
        "linkId" : "paediatric-art-frequency-other",
        "text" : "Specify other administration frequency",
        "type" : "string",
        "enableWhen" : [{
          "question" : "paediatric-art-frequency",
          "operator" : "=",
          "answerString" : "Other"
        }]
      },
      {
        "linkId" : "paediatric-art-duration-value",
        "text" : "Duration value",
        "type" : "integer",
        "required" : true
      },
      {
        "linkId" : "paediatric-art-duration-unit",
        "text" : "Duration unit",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueString" : "Days"
        },
        {
          "valueString" : "Weeks"
        },
        {
          "valueString" : "Months"
        }]
      },
      {
        "linkId" : "paediatric-art-quantity-prescribed",
        "text" : "Quantity prescribed",
        "type" : "integer",
        "required" : true
      },
      {
        "linkId" : "paediatric-art-quantity-dispensed",
        "text" : "Quantity dispensed",
        "type" : "integer"
      }]
    },
    {
      "linkId" : "oi-prophylaxis-treatment-orders",
      "prefix" : "29.",
      "text" : "OI prophylaxis or treatment medicine order",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "oi-medicine",
        "text" : "Medicine product and strength",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-oi-prophylaxis-treatment-medication-vs"
      },
      {
        "linkId" : "oi-strength",
        "text" : "Strength, if different from or additional to the coded product",
        "type" : "string"
      },
      {
        "linkId" : "oi-frequency",
        "text" : "Administration frequency",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueString" : "OD"
        },
        {
          "valueString" : "BD"
        },
        {
          "valueString" : "TDS"
        },
        {
          "valueString" : "QDS"
        },
        {
          "valueString" : "Three times weekly"
        },
        {
          "valueString" : "Weekly"
        },
        {
          "valueString" : "Monthly"
        },
        {
          "valueString" : "As directed"
        },
        {
          "valueString" : "Other"
        }]
      },
      {
        "linkId" : "oi-frequency-other",
        "text" : "Specify other administration frequency",
        "type" : "string",
        "enableWhen" : [{
          "question" : "oi-frequency",
          "operator" : "=",
          "answerString" : "Other"
        }]
      },
      {
        "linkId" : "oi-duration-value",
        "text" : "Duration value",
        "type" : "integer",
        "required" : true
      },
      {
        "linkId" : "oi-duration-unit",
        "text" : "Duration unit",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueString" : "Days"
        },
        {
          "valueString" : "Weeks"
        },
        {
          "valueString" : "Months"
        }]
      },
      {
        "linkId" : "oi-quantity-prescribed",
        "text" : "Quantity prescribed",
        "type" : "integer",
        "required" : true
      },
      {
        "linkId" : "oi-quantity-dispensed",
        "text" : "Quantity dispensed",
        "type" : "integer"
      }]
    },
    {
      "linkId" : "tb-preventive-therapy-orders",
      "prefix" : "34.",
      "text" : "TB preventive therapy medicine order",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "tpt-medicine",
        "text" : "Medicine product and strength",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-tb-preventive-therapy-medication-vs"
      },
      {
        "linkId" : "tpt-other-medicine",
        "text" : "Specify other TB preventive therapy medicine or regimen",
        "type" : "string",
        "enableWhen" : [{
          "question" : "tpt-medicine",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-pharmacy-order-cs",
            "code" : "tpt-other"
          }
        }]
      },
      {
        "linkId" : "tpt-strength",
        "text" : "Strength, if different from or additional to the coded product",
        "type" : "string"
      },
      {
        "linkId" : "tpt-frequency",
        "text" : "Administration frequency",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueString" : "OD"
        },
        {
          "valueString" : "BD"
        },
        {
          "valueString" : "TDS"
        },
        {
          "valueString" : "QDS"
        },
        {
          "valueString" : "Three times weekly"
        },
        {
          "valueString" : "Weekly"
        },
        {
          "valueString" : "Monthly"
        },
        {
          "valueString" : "As directed"
        },
        {
          "valueString" : "Other"
        }]
      },
      {
        "linkId" : "tpt-frequency-other",
        "text" : "Specify other administration frequency",
        "type" : "string",
        "enableWhen" : [{
          "question" : "tpt-frequency",
          "operator" : "=",
          "answerString" : "Other"
        }]
      },
      {
        "linkId" : "tpt-duration-value",
        "text" : "Duration value",
        "type" : "integer",
        "required" : true
      },
      {
        "linkId" : "tpt-duration-unit",
        "text" : "Duration unit",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueString" : "Days"
        },
        {
          "valueString" : "Weeks"
        },
        {
          "valueString" : "Months"
        }]
      },
      {
        "linkId" : "tpt-quantity-prescribed",
        "text" : "Quantity prescribed",
        "type" : "integer",
        "required" : true
      },
      {
        "linkId" : "tpt-quantity-dispensed",
        "text" : "Quantity dispensed",
        "type" : "integer"
      }]
    },
    {
      "linkId" : "prep-orders",
      "prefix" : "39.",
      "text" : "PrEP medicine order",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "prep-medicine",
        "text" : "Medicine product and strength",
        "type" : "choice",
        "required" : true,
        "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-prep-medication-vs"
      },
      {
        "linkId" : "prep-strength",
        "text" : "Strength, if different from or additional to the coded product",
        "type" : "string"
      },
      {
        "linkId" : "prep-frequency",
        "text" : "Administration frequency",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueString" : "OD"
        },
        {
          "valueString" : "BD"
        },
        {
          "valueString" : "TDS"
        },
        {
          "valueString" : "QDS"
        },
        {
          "valueString" : "Three times weekly"
        },
        {
          "valueString" : "Weekly"
        },
        {
          "valueString" : "Monthly"
        },
        {
          "valueString" : "As directed"
        },
        {
          "valueString" : "Other"
        }]
      },
      {
        "linkId" : "prep-frequency-other",
        "text" : "Specify other administration frequency",
        "type" : "string",
        "enableWhen" : [{
          "question" : "prep-frequency",
          "operator" : "=",
          "answerString" : "Other"
        }]
      },
      {
        "linkId" : "prep-duration-value",
        "text" : "Duration value",
        "type" : "integer",
        "required" : true
      },
      {
        "linkId" : "prep-duration-unit",
        "text" : "Duration unit",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueString" : "Days"
        },
        {
          "valueString" : "Weeks"
        },
        {
          "valueString" : "Months"
        }]
      },
      {
        "linkId" : "prep-quantity-prescribed",
        "text" : "Quantity prescribed",
        "type" : "integer",
        "required" : true
      },
      {
        "linkId" : "prep-quantity-dispensed",
        "text" : "Quantity dispensed",
        "type" : "integer"
      }]
    },
    {
      "linkId" : "other-medicine-orders",
      "prefix" : "44.",
      "text" : "Other OI or non-HIV-related medicine order",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "other-medicine-name",
        "text" : "Medicine name",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "other-medicine-strength",
        "text" : "Strength",
        "type" : "string"
      },
      {
        "linkId" : "other-medicine-frequency",
        "text" : "Administration frequency",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "other-medicine-duration-value",
        "text" : "Duration value",
        "type" : "integer",
        "required" : true
      },
      {
        "linkId" : "other-medicine-duration-unit",
        "text" : "Duration unit",
        "type" : "choice",
        "required" : true,
        "answerOption" : [{
          "valueString" : "Days"
        },
        {
          "valueString" : "Weeks"
        },
        {
          "valueString" : "Months"
        }]
      },
      {
        "linkId" : "other-medicine-quantity-prescribed",
        "text" : "Quantity prescribed",
        "type" : "integer",
        "required" : true
      },
      {
        "linkId" : "other-medicine-quantity-dispensed",
        "text" : "Quantity dispensed",
        "type" : "integer"
      }]
    }]
  },
  {
    "linkId" : "workflow-sign-off",
    "text" : "Ordering, dispensing, counselling and pickup sign-off",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "ordered-sign-off",
      "prefix" : "45.",
      "text" : "Ordered by",
      "type" : "group",
      "item" : [{
        "linkId" : "ordered-by-name",
        "text" : "Physician or prescriber's printed name",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "ordered-signature",
        "text" : "Signature or signature reference",
        "type" : "string"
      },
      {
        "linkId" : "ordered-date",
        "text" : "Date",
        "type" : "date",
        "required" : true
      }]
    },
    {
      "linkId" : "dispensed-sign-off",
      "text" : "Dispensed by",
      "type" : "group",
      "item" : [{
        "linkId" : "dispensed-by-name",
        "text" : "Pharmacist's printed name",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "dispensed-signature",
        "text" : "Signature or signature reference",
        "type" : "string"
      },
      {
        "linkId" : "dispensed-date",
        "text" : "Date",
        "type" : "date",
        "required" : true
      }]
    },
    {
      "linkId" : "counselled-sign-off",
      "text" : "Counselled by",
      "type" : "group",
      "item" : [{
        "linkId" : "counselled-by-name",
        "text" : "Adherence counsellor's printed name",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "counselled-signature",
        "text" : "Signature or signature reference",
        "type" : "string"
      },
      {
        "linkId" : "counselled-date",
        "text" : "Date",
        "type" : "date",
        "required" : true
      }]
    },
    {
      "linkId" : "picked-up-sign-off",
      "text" : "Picked up by",
      "type" : "group",
      "item" : [{
        "linkId" : "picked-up-by-name",
        "text" : "Name of person who picked up the medicines",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "picked-up-signature",
        "text" : "Signature or signature reference",
        "type" : "string"
      },
      {
        "linkId" : "picked-up-date",
        "text" : "Date",
        "type" : "date",
        "required" : true
      }]
    }]
  },
  {
    "linkId" : "pharmacist-medication-error-feedback",
    "text" : "Pharmacist feedback on an observed medication error",
    "type" : "group",
    "item" : [{
      "linkId" : "medication-error-observed",
      "text" : "Medication error observed",
      "type" : "boolean"
    },
    {
      "linkId" : "medication-error-drug-names",
      "text" : "Name of the drug or drugs involved",
      "type" : "text",
      "enableWhen" : [{
        "question" : "medication-error-observed",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "medication-error-nature",
      "text" : "Nature of the error or errors",
      "type" : "text",
      "enableWhen" : [{
        "question" : "medication-error-observed",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "medication-error-consequences",
      "text" : "Consequence or consequences of the error",
      "type" : "text",
      "enableWhen" : [{
        "question" : "medication-error-observed",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "medication-error-pharmacist-signature",
      "text" : "Pharmacist signature or signature reference",
      "type" : "string",
      "enableWhen" : [{
        "question" : "medication-error-observed",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "medication-error-date",
      "text" : "Date of pharmacist feedback",
      "type" : "date",
      "enableWhen" : [{
        "question" : "medication-error-observed",
        "operator" : "=",
        "answerBoolean" : true
      }]
    }]
  }]
}

```
