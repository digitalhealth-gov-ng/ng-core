# NG HIV Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Questionnaire**

## Resource Profile: NG HIV Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-hiv-questionnaire | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgHivQuestionnaire |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.31 | |

 
A Nigeria Core profile of the FHIR Questionnaire resource used to represent structured HIV program forms, assessments, counselling forms, and clinical data collection instruments. 

**Usages:**

* Examples for this Profile: [NgHivCareArtFormQuestionnaire](Questionnaire-ng-hiv-care-art-questionnaire.md), [NgHivEacFormQuestionnaire](Questionnaire-ng-hiv-eac-form-questionnaire.md), [NgHivIntLabFormQuestionnaire](Questionnaire-ng-hiv-int-lab-form-questionnaire.md), [NgHivPharmacyOrderQuestionnaire](Questionnaire-ng-hiv-pharmacy-order-questionnaire.md) and [NgHivTransferFormQuestionnaire](Questionnaire-ng-hiv-transfer-form-questionnaire.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-hiv-questionnaire.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-hiv-questionnaire.csv), [Excel](StructureDefinition-ng-hiv-questionnaire.xlsx), [Schematron](StructureDefinition-ng-hiv-questionnaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-hiv-questionnaire",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-hiv-questionnaire",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.31"
  }],
  "version" : "0.0.0",
  "name" : "NgHivQuestionnaire",
  "title" : "NG HIV Questionnaire",
  "status" : "active",
  "experimental" : false,
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
  "description" : "A Nigeria Core profile of the FHIR Questionnaire resource used to represent\nstructured HIV program forms, assessments, counselling forms, and clinical\ndata collection instruments.",
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
