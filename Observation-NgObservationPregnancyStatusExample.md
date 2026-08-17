# Pregnancy Status Observation Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pregnancy Status Observation Example**

## Example Observation: Pregnancy Status Observation Example

Profile: [NG Pregnancy Status Observation](StructureDefinition-ng-observation-pregnancy-status.md)

**status**: Final

**category**: Social History

**code**: Pregnancy status

**subject**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

**effective**: 2026-08-02

**performer**: [Practitioner Hauwa Garba ](Practitioner-NgPractitioner-003.md)

**value**: Pregnant

**hasMember**: [Pregnancy Expected Delivery Date Example](Observation-NgObservationPregnancyEddExample.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "NgObservationPregnancyStatusExample",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-pregnancy-status"]
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
      "code" : "82810-3",
      "display" : "Pregnancy status"
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
      "code" : "77386006",
      "display" : "Pregnant"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/NgObservationPregnancyEddExample",
    "display" : "Pregnancy Expected Delivery Date Example"
  }]
}

```
