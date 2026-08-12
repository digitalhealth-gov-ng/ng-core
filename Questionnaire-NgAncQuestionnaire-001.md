# Nigeria Antenatal Care Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Antenatal Care Questionnaire**

## Questionnaire: Nigeria Antenatal Care Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/NgAncQuestionnaire-001 | *Version*:0.0.0 |
| Active as of 2026-08-03 | *Computable Name*:NgAncQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.1 | |

 
A basic Nigeria Core questionnaire for collecting antenatal care information during a pregnant woman's ANC visit. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "NgAncQuestionnaire-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/NgAncQuestionnaire-001",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.1"
  }],
  "version" : "0.0.0",
  "name" : "NgAncQuestionnaire",
  "title" : "Nigeria Antenatal Care Questionnaire",
  "status" : "active",
  "subjectType" : ["Patient"],
  "date" : "2026-08-03",
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
  "description" : "A basic Nigeria Core questionnaire for collecting antenatal care\ninformation during a pregnant woman's ANC visit.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "anc-visit",
    "prefix" : "1",
    "text" : "ANC visit information",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "anc-visit-date",
      "prefix" : "1.1",
      "text" : "Date of ANC visit",
      "type" : "date",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "anc-visit-number",
      "prefix" : "1.2",
      "text" : "ANC visit number",
      "type" : "integer",
      "required" : true,
      "repeats" : false
    }]
  },
  {
    "linkId" : "pregnancy-history",
    "prefix" : "2",
    "text" : "Pregnancy history",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "gravida",
      "prefix" : "2.1",
      "text" : "Number of pregnancies, including current pregnancy",
      "type" : "integer",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "parity",
      "prefix" : "2.2",
      "text" : "Number of previous births",
      "type" : "integer",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "previous-caesarean-section",
      "prefix" : "2.3",
      "text" : "History of caesarean section",
      "type" : "boolean",
      "required" : true,
      "repeats" : false
    }]
  },
  {
    "linkId" : "current-pregnancy",
    "prefix" : "3",
    "text" : "Current pregnancy information",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "last-menstrual-period",
      "prefix" : "3.1",
      "text" : "First day of the last menstrual period",
      "type" : "date",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "estimated-delivery-date",
      "prefix" : "3.2",
      "text" : "Estimated date of delivery",
      "type" : "date",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "gestational-age-weeks",
      "prefix" : "3.3",
      "text" : "Gestational age in completed weeks",
      "type" : "integer",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "multiple-pregnancy",
      "prefix" : "3.4",
      "text" : "Is this a multiple pregnancy?",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    }]
  },
  {
    "linkId" : "clinical-assessment",
    "prefix" : "4",
    "text" : "Vital signs and clinical assessment",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "weight-kg",
      "prefix" : "4.1",
      "text" : "Weight in kilograms",
      "type" : "decimal",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "systolic-blood-pressure",
      "prefix" : "4.2",
      "text" : "Systolic blood pressure in mmHg",
      "type" : "integer",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "diastolic-blood-pressure",
      "prefix" : "4.3",
      "text" : "Diastolic blood pressure in mmHg",
      "type" : "integer",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "fetal-heart-rate",
      "prefix" : "4.4",
      "text" : "Fetal heart rate in beats per minute",
      "type" : "integer",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "danger-signs-present",
      "prefix" : "4.5",
      "text" : "Are any maternal or fetal danger signs present?",
      "type" : "boolean",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "clinical-notes",
      "prefix" : "4.6",
      "text" : "Clinical findings and additional notes",
      "type" : "text",
      "required" : false,
      "repeats" : false
    }]
  },
  {
    "linkId" : "anc-services",
    "prefix" : "5",
    "text" : "ANC services provided",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "iron-folic-acid-provided",
      "prefix" : "5.1",
      "text" : "Iron and folic acid provided",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "malaria-prevention-provided",
      "prefix" : "5.2",
      "text" : "Malaria prevention service provided",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "tetanus-vaccination-provided",
      "prefix" : "5.3",
      "text" : "Tetanus-containing vaccine provided",
      "type" : "boolean",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "referral-required",
      "prefix" : "5.4",
      "text" : "Is referral to another facility required?",
      "type" : "boolean",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "next-appointment-date",
      "prefix" : "5.5",
      "text" : "Date of next ANC appointment",
      "type" : "date",
      "required" : false,
      "repeats" : false
    }]
  }]
}

```
