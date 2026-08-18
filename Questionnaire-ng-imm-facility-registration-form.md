# NG Immunization Facility Registration Form - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Immunization Facility Registration Form**

## Questionnaire: NG Immunization Facility Registration Form 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-imm-facility-registration-form | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgImmFacilityRegistrationForm |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.35.10 | |

 
Questionnaire for registering a health facility that provides immunization services. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ng-imm-facility-registration-form",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization-questionnaire"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/Questionnaire/ng-imm-facility-registration-form",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.35.10"
  }],
  "version" : "0.0.0",
  "name" : "NgImmFacilityRegistrationForm",
  "title" : "NG Immunization Facility Registration Form",
  "status" : "draft",
  "experimental" : false,
  "subjectType" : ["Organization"],
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Questionnaire for registering a health facility that provides\nimmunization services.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "item" : [{
    "linkId" : "facility",
    "text" : "Facility registration",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "facility-name",
      "text" : "Facility name",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "facility-identifier",
      "text" : "Facility identifier",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "facility-type",
      "text" : "Facility type",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-facility-type-vs"
    },
    {
      "linkId" : "facility-owner",
      "text" : "Facility ownership",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-organization-owner-vs"
    },
    {
      "linkId" : "state",
      "text" : "State",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
    },
    {
      "linkId" : "lga",
      "text" : "Local Government Area",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
    },
    {
      "linkId" : "ward",
      "text" : "Ward",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-wards-vs"
    },
    {
      "linkId" : "facility-address",
      "text" : "Facility address",
      "type" : "text",
      "required" : true
    },
    {
      "linkId" : "contact-phone",
      "text" : "Facility contact telephone",
      "type" : "string",
      "required" : false
    },
    {
      "linkId" : "session-type",
      "text" : "Immunization session type",
      "type" : "choice",
      "required" : false,
      "answerValueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-immunization-session-type-vs"
    }]
  }]
}

```
