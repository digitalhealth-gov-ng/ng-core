# Tobacco Smoking Status Observation Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tobacco Smoking Status Observation Example**

## Example Observation: Tobacco Smoking Status Observation Example

Profile: [Nigeria Core Tobacco Smoking Status Observation](StructureDefinition-ng-observation-tobacco-use.md)

**status**: Final

**category**: Social History

**code**: Tobacco smoking status

**subject**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

**effective**: 2026-08-02

**performer**: [Practitioner Hauwa Garba ](Practitioner-NgPractitioner-003.md)

**value**: Never smoked tobacco



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "NgObservationTobaccoUseExample",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-tobacco-use"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "social-history",
      "display" : "Social History"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "72166-2",
      "display" : "Tobacco smoking status"
    }]
  },
  "subject" : {
    "reference" : "Patient/NgPatient-001"
  },
  "effectiveDateTime" : "2026-08-02",
  "performer" : [{
    "reference" : "Practitioner/NgPractitioner-003"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "266919005",
      "display" : "Never smoked tobacco"
    }]
  }
}

```
