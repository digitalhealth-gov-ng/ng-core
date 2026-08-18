# NG Immunization Client Registration Form - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Immunization Client Registration Form**

## Questionnaire: NG Immunization Client Registration Form 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-imm-client-registration-form | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgImmClientRegistrationForm |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.8 | |

 
Questionnaire for registering a client for immunization services. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-imm-client-registration-form",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-imm-client-registration-form",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.8"
  }],
  "version" : "0.0.0",
  "name" : "NgImmClientRegistrationForm",
  "title" : "NG Immunization Client Registration Form",
  "status" : "draft",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Questionnaire for registering a client for immunization services.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "client",
    "text" : "Client registration",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "client-identifier",
      "text" : "Client identifier",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "given-name",
      "text" : "Given name",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "family-name",
      "text" : "Family name",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "sex",
      "text" : "Sex",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-gender-vs"
    },
    {
      "linkId" : "birth-date",
      "text" : "Date of birth",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "caregiver-name",
      "text" : "Caregiver name",
      "type" : "string",
      "required" : false
    },
    {
      "linkId" : "caregiver-phone",
      "text" : "Caregiver telephone",
      "type" : "string",
      "required" : false
    },
    {
      "linkId" : "caregiver-relationship",
      "text" : "Caregiver relationship to client",
      "type" : "choice",
      "required" : false,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-relationships-vs"
    },
    {
      "linkId" : "residential-ward",
      "text" : "Residential ward",
      "type" : "choice",
      "required" : false,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-wards-vs"
    },
    {
      "linkId" : "residential-address",
      "text" : "Residential address",
      "type" : "text",
      "required" : false
    }]
  }]
}

```
