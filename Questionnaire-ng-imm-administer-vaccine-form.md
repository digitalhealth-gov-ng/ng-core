# NG Immunization Administer Vaccine Form - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Immunization Administer Vaccine Form**

## Questionnaire: NG Immunization Administer Vaccine Form (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-imm-administer-vaccine-form | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgImmAdministerVaccineForm |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.7 | |

 
Questionnaire for recording the administration of an immunization. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-imm-administer-vaccine-form",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-imm-administer-vaccine-form",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.7"
  }],
  "version" : "0.0.0",
  "name" : "NgImmAdministerVaccineForm",
  "title" : "NG Immunization Administer Vaccine Form",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "Questionnaire for recording the administration of an immunization.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "vaccination",
    "text" : "Vaccine administration",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "client-identifier",
      "text" : "Client identifier",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "vaccine",
      "text" : "Vaccine administered",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-vaccine-local-vs"
    },
    {
      "linkId" : "dose-number",
      "text" : "Dose number",
      "type" : "integer",
      "required" : true
    },
    {
      "linkId" : "administration-date",
      "text" : "Date and time administered",
      "type" : "dateTime",
      "required" : true
    },
    {
      "linkId" : "batch-number",
      "text" : "Vaccine batch or lot number",
      "type" : "string",
      "required" : false
    },
    {
      "linkId" : "expiry-date",
      "text" : "Vaccine expiry date",
      "type" : "date",
      "required" : false
    },
    {
      "linkId" : "route",
      "text" : "Route of administration",
      "type" : "string",
      "required" : false
    },
    {
      "linkId" : "body-site",
      "text" : "Body site",
      "type" : "string",
      "required" : false
    },
    {
      "linkId" : "vaccinator-identifier",
      "text" : "Vaccinator identifier",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "facility-identifier",
      "text" : "Administering facility identifier",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "session-type",
      "text" : "Immunization session type",
      "type" : "choice",
      "required" : false,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-immunization-session-type-vs"
    },
    {
      "linkId" : "next-dose-date",
      "text" : "Next dose date",
      "type" : "date",
      "required" : false
    }]
  }]
}

```
