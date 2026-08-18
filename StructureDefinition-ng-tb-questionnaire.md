# NG TB Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Questionnaire**

## Resource Profile: NG TB Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-tb-questionnaire | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgTBQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.73 | |

 
A Nigeria Core profile of the FHIR Questionnaire resource used to represent structured TB program forms, assessments, counselling forms, and clinical data collection instruments. 

**Usages:**

* Examples for this Profile: [NgDRTBPatientDischargeQuestionnaire](Questionnaire-ng-drtb-patient-discharge-questionnaire.md), [NgTBCommunityFacilityReferralQuestionnaire](Questionnaire-ng-tb-community-facility-referral-questionnaire.md), [NgTBIndexPatientContactInvestigationQuestionnaire](Questionnaire-ng-tb-index-patient-contact-investigation-questionnaire.md), [NgTBPatientReferralTransferQuestionnaire](Questionnaire-ng-tb-patient-referral-transfer-questionnaire.md)... Show 5 more, [NgTBPatientTreatmentCardQuestionnaire](Questionnaire-ng-tb-patient-treatment-card-questionnaire.md), [NgTBPreventiveTherapyQuestionnaire](Questionnaire-ng-tb-preventive-therapy-questionnaire.md), [NgTBSpecimenExamRxQuestionnaire](Questionnaire-ng-tb-specimen-examination-request-questionnaire.md), [NgTBSpecimenExamnRxQuestionnaire](Questionnaire-ng-tb-specimen-examination-result-questionnaire.md) and [NgTBTreatmentInterruptionTrackingQuestionnaire](Questionnaire-ng-tb-treatment-interruption-tracking-questionnaire.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-tb-questionnaire.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-tb-questionnaire.csv), [Excel](StructureDefinition-ng-tb-questionnaire.xlsx), [Schematron](StructureDefinition-ng-tb-questionnaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-tb-questionnaire",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-tb-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.73"
  }],
  "version" : "0.0.0",
  "name" : "NgTBQuestionnaire",
  "title" : "NG TB Questionnaire",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "A Nigeria Core profile of the FHIR Questionnaire resource used to represent\nstructured TB program forms, assessments, counselling forms, and clinical\ndata collection instruments.",
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
