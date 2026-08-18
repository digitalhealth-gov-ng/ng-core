# NG Immunization Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Immunization Questionnaire**

## Resource Profile: NG Immunization Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization-questionnaire | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgImmunizationQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.33 | |

 
Base Questionnaire profile for immunization program forms in the Nigeria Core FHIR Implementation Guide. 

**Usages:**

* Examples for this Profile: [NgImmAdministerVaccineForm](Questionnaire-ng-imm-administer-vaccine-form.md), [NgImmClientRegistrationForm](Questionnaire-ng-imm-client-registration-form.md), [NgImmDefaulterTrackingForm](Questionnaire-ng-imm-defaulter-tracking-form.md), [NgImmFacilityRegistrationForm](Questionnaire-ng-imm-facility-registration-form.md)... Show 3 more, [NgImmGenerateReportForm](Questionnaire-ng-imm-generate-report-form.md), [NgImmManageAEFIForm](Questionnaire-ng-imm-manage-aefi-form.md) and [NgImmUpdatingClientRecordForm](Questionnaire-ng-imm-updating-client-record-form.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-immunization-questionnaire.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-immunization-questionnaire.csv), [Excel](StructureDefinition-ng-immunization-questionnaire.xlsx), [Schematron](StructureDefinition-ng-immunization-questionnaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-immunization-questionnaire",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.33"
  }],
  "version" : "0.0.0",
  "name" : "NgImmunizationQuestionnaire",
  "title" : "NG Immunization Questionnaire",
  "status" : "draft",
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Base Questionnaire profile for immunization program forms in the\nNigeria Core FHIR Implementation Guide.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Questionnaire",
  "baseDefinition" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-questionnaire",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Questionnaire",
      "path" : "Questionnaire"
    }]
  }
}

```
