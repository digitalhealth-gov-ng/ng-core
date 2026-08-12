# NG Immunization Updating Client Record Form - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Immunization Updating Client Record Form**

## Questionnaire: NG Immunization Updating Client Record Form 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-imm-updating-client-record-form | *Version*:0.0.0 |
| Draft as of 2026-08-12 | *Computable Name*:NgImmUpdatingClientRecordForm |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.13 | |

 
Questionnaire for updating demographic, contact and relevant clinical information in an immunization client record. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-imm-updating-client-record-form",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-imm-updating-client-record-form",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.13"
  }],
  "version" : "0.0.0",
  "name" : "NgImmUpdatingClientRecordForm",
  "title" : "NG Immunization Updating Client Record Form",
  "status" : "draft",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-08-12T13:22:49+01:00",
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
  "description" : "Questionnaire for updating demographic, contact and relevant clinical\ninformation in an immunization client record.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "record-update",
    "text" : "Client record update",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "client-identifier",
      "text" : "Client identifier",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "update-date",
      "text" : "Date and time of update",
      "type" : "dateTime",
      "required" : true
    },
    {
      "linkId" : "update-reason",
      "text" : "Reason for updating the record",
      "type" : "text",
      "required" : true
    },
    {
      "linkId" : "updated-phone",
      "text" : "Updated telephone number",
      "type" : "string",
      "required" : false
    },
    {
      "linkId" : "updated-caregiver-name",
      "text" : "Updated caregiver name",
      "type" : "string",
      "required" : false
    },
    {
      "linkId" : "updated-caregiver-relationship",
      "text" : "Updated caregiver relationship",
      "type" : "choice",
      "required" : false,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-relationships-vs"
    },
    {
      "linkId" : "updated-ward",
      "text" : "Updated residential ward",
      "type" : "choice",
      "required" : false,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-wards-vs"
    },
    {
      "linkId" : "updated-address",
      "text" : "Updated residential address",
      "type" : "text",
      "required" : false
    },
    {
      "linkId" : "allergies",
      "text" : "Known allergies",
      "type" : "text",
      "required" : false
    },
    {
      "linkId" : "vaccine-contraindications",
      "text" : "Known vaccine contraindications",
      "type" : "text",
      "required" : false
    }]
  }]
}

```
