# NG TB Preventive Therapy Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Preventive Therapy Questionnaire**

## Questionnaire: NG TB Preventive Therapy Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-preventive-therapy-questionnaire | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgTBPreventiveTherapyQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.19 | |

 
Questionnaire representing the NTBLCP/TB 11 TB Preventive Therapy Card. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-tb-preventive-therapy-questionnaire",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-tb-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-tb-preventive-therapy-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.19"
  }],
  "version" : "0.0.0",
  "name" : "NgTBPreventiveTherapyQuestionnaire",
  "title" : "NG TB Preventive Therapy Questionnaire",
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
  "description" : "Questionnaire representing the NTBLCP/TB 11 TB Preventive Therapy Card.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "client-information",
    "text" : "Client and facility information",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "clinic-name",
      "text" : "Clinic name",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "client-name",
      "text" : "Name of client/contact on TPT",
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
      "linkId" : "weight",
      "text" : "Weight in kilograms",
      "type" : "decimal",
      "required" : true
    },
    {
      "linkId" : "phone-number",
      "text" : "Phone number(s)",
      "type" : "string"
    },
    {
      "linkId" : "address",
      "text" : "Address",
      "type" : "text"
    }]
  },
  {
    "linkId" : "tpt-indication",
    "text" : "Reason for TB preventive therapy",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "reason-for-tpt",
      "text" : "Reason for TPT",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "TB contact"
      },
      {
        "valueString" : "PLHIV"
      },
      {
        "valueString" : "Other"
      }]
    },
    {
      "linkId" : "other-reason-for-tpt",
      "text" : "Specify other reason for TPT",
      "type" : "string",
      "enableWhen" : [{
        "question" : "reason-for-tpt",
        "operator" : "=",
        "answerString" : "Other"
      }]
    }]
  },
  {
    "linkId" : "index-patient-information",
    "text" : "Details of index patient of contact",
    "type" : "group",
    "enableWhen" : [{
      "question" : "reason-for-tpt",
      "operator" : "=",
      "answerString" : "TB contact"
    }],
    "item" : [{
      "linkId" : "index-patient-name",
      "text" : "Name of index patient",
      "type" : "string"
    },
    {
      "linkId" : "index-patient-lga-tb-number",
      "text" : "LGA TB registration number",
      "type" : "string"
    }]
  },
  {
    "linkId" : "tpt-regimen",
    "text" : "TB preventive therapy regimen and dosage",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "tpt-regimen-type",
      "text" : "TB preventive therapy regimen",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "Isoniazid (INH)"
      },
      {
        "valueString" : "Rifapentine/Isoniazid (3HP)"
      },
      {
        "valueString" : "Cotrimoxazole/Isoniazid/Pyridoxine fixed-dose combination (CTX/INH/B6 FDC)"
      }]
    },
    {
      "linkId" : "inh-formulation",
      "text" : "INH formulation",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "tpt-regimen-type",
        "operator" : "=",
        "answerString" : "Isoniazid (INH)"
      }],
      "answerOption" : [{
        "valueString" : "Tablet"
      },
      {
        "valueString" : "Syrup"
      }]
    },
    {
      "linkId" : "prescribed-dose",
      "text" : "Prescribed dose",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "prescribed-dose-mg-day",
      "text" : "Prescribed INH dose in mg/day, when applicable",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "tpt-regimen-type",
        "operator" : "=",
        "answerString" : "Isoniazid (INH)"
      }]
    },
    {
      "linkId" : "prescribed-tablets-per-day",
      "text" : "Number of INH tablets per day, when applicable",
      "type" : "decimal",
      "enableWhen" : [{
        "question" : "inh-formulation",
        "operator" : "=",
        "answerString" : "Tablet"
      }]
    },
    {
      "linkId" : "inh-dose-guidance-heading",
      "text" : "Source-form INH dosage guidance",
      "type" : "display"
    },
    {
      "linkId" : "inh-dose-under-2-5kg",
      "text" : "Weight less than 2.5 kg: INH 25 mg/day; 1/4 tablet/day.",
      "type" : "display"
    },
    {
      "linkId" : "inh-dose-2-5-to-5kg",
      "text" : "Weight 2.5-5.0 kg: INH 50 mg/day; 1/2 tablet/day.",
      "type" : "display"
    },
    {
      "linkId" : "inh-dose-6-to-10kg",
      "text" : "Weight 6.0-10.0 kg: INH 100 mg/day; 1 tablet/day.",
      "type" : "display"
    },
    {
      "linkId" : "inh-dose-11-to-25kg",
      "text" : "Weight 11.0-25.0 kg: INH 150 mg/day; 1.5 tablets/day.",
      "type" : "display"
    },
    {
      "linkId" : "inh-dose-over-25kg",
      "text" : "Weight greater than 25 kg: INH 300 mg/day; 3 tablets or one adult tablet.",
      "type" : "display"
    }]
  },
  {
    "linkId" : "drug-collection-record",
    "text" : "Record of drug collection by contact",
    "type" : "group",
    "item" : [{
      "linkId" : "drug-collection",
      "text" : "Drug collection",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "drug-collection-date",
        "text" : "Date",
        "type" : "date",
        "required" : true
      },
      {
        "linkId" : "drug-collection-month",
        "text" : "Month",
        "type" : "string"
      },
      {
        "linkId" : "drug-collection-dosage",
        "text" : "Dosage",
        "type" : "string"
      },
      {
        "linkId" : "issuing-dots-staff-signature",
        "text" : "Signature of DOTS staff issuing the drugs or signature reference",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "tpt-outcome",
    "text" : "TPT outcome",
    "type" : "group",
    "item" : [{
      "linkId" : "tpt-outcome-value",
      "text" : "TPT outcome",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueString" : "Treatment completed"
      },
      {
        "valueString" : "Lost to follow up"
      },
      {
        "valueString" : "Died"
      },
      {
        "valueString" : "Developed active TB"
      },
      {
        "valueString" : "Not evaluated"
      }]
    }]
  }]
}

```
