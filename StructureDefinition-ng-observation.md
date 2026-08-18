# NG Composite Observation - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Composite Observation**

## Resource Profile: NG Composite Observation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgObservation |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.56 | |

 
A composite Nigeria Core Observation used during client registration to record selected age, pregnancy, HIV-status, and birth-weight observations as components. 

**Usages:**

* Use this Profile: [Bundle NG AEFI Report](StructureDefinition-ng-aefi-report-bundle.md)
* Refer to this Profile: [NG Goal](StructureDefinition-ng-goal.md), [NG Immunization](StructureDefinition-ng-immunization.md), [NG Medication Statement](StructureDefinition-ng-medication-statement.md), [NG Procedure](StructureDefinition-ng-procedure.md) and [NG ServiceRequest](StructureDefinition-ng-service-request.md)
* Examples for this Profile: [Observation/NgObservation-001](Observation-NgObservation-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-observation.csv), [Excel](StructureDefinition-ng-observation.xlsx), [Schematron](StructureDefinition-ng-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-observation",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.56"
  }],
  "version" : "0.0.0",
  "name" : "NgObservation",
  "title" : "NG Composite Observation",
  "status" : "draft",
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "A composite Nigeria Core Observation used during client registration to record selected age, pregnancy, HIV-status, and birth-weight observations as components.",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history",
          "display" : "Social History"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-observation-code",
          "code" : "client-registration-summary",
          "display" : "Client registration observation summary"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "max" : "0"
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ageInWeeks",
      "path" : "Observation.component",
      "sliceName" : "ageInWeeks",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ageInWeeks.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/age-component-codes-cs",
          "code" : "wk",
          "display" : "Age in weeks"
        }]
      }
    },
    {
      "id" : "Observation.component:ageInWeeks.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ageInWeeks.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "week"
    },
    {
      "id" : "Observation.component:ageInWeeks.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:ageInWeeks.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "wk"
    },
    {
      "id" : "Observation.component:ageInMonths",
      "path" : "Observation.component",
      "sliceName" : "ageInMonths",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ageInMonths.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/age-component-codes-cs",
          "code" : "mo",
          "display" : "Age in months"
        }]
      }
    },
    {
      "id" : "Observation.component:ageInMonths.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ageInMonths.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "month"
    },
    {
      "id" : "Observation.component:ageInMonths.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:ageInMonths.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "mo"
    },
    {
      "id" : "Observation.component:ageInYears",
      "path" : "Observation.component",
      "sliceName" : "ageInYears",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ageInYears.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/age-component-codes-cs",
          "code" : "a",
          "display" : "Age in years"
        }]
      }
    },
    {
      "id" : "Observation.component:ageInYears.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ageInYears.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "year"
    },
    {
      "id" : "Observation.component:ageInYears.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:ageInYears.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "a"
    },
    {
      "id" : "Observation.component:pregnancyStatus",
      "path" : "Observation.component",
      "sliceName" : "pregnancyStatus",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:pregnancyStatus.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "82810-3",
          "display" : "Pregnancy status"
        }]
      }
    },
    {
      "id" : "Observation.component:pregnancyStatus.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-pregnancy-status-vs"
      }
    },
    {
      "id" : "Observation.component:hivStatus",
      "path" : "Observation.component",
      "sliceName" : "hivStatus",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hivStatus.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "278977008",
          "display" : "HIV status"
        }]
      }
    },
    {
      "id" : "Observation.component:hivStatus.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-status-vs"
      }
    },
    {
      "id" : "Observation.component:birthWeight",
      "path" : "Observation.component",
      "sliceName" : "birthWeight",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:birthWeight.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8339-4",
          "display" : "Birth weight Measured"
        }]
      }
    },
    {
      "id" : "Observation.component:birthWeight.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:birthWeight.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "g"
    },
    {
      "id" : "Observation.component:birthWeight.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:birthWeight.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "g"
    }]
  }
}

```
