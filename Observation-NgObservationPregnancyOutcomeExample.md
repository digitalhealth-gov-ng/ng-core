# Pregnancy Outcome Observation Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pregnancy Outcome Observation Example**

## Example Observation: Pregnancy Outcome Observation Example

Profile: [NG Pregnancy Outcome Observation](StructureDefinition-ng-observation-pregnancy-outcome.md)

**status**: Final

**category**: Social History

**code**: Was your pregnancy a live birth, stillbirth, miscarriage, abortion, or ectopic pregnancy [PhenX]

**subject**: [Suleiman Bala Male, DoB: 2019-09-05 ( birthcert)](Patient-NgPatient-003.md)

**effective**: 2024-03-15

**performer**: [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md)

**value**: Live birth



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "NgObservationPregnancyOutcomeExample",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-pregnancy-outcome"]
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
      "code" : "64710-7",
      "display" : "Was your pregnancy a live birth, stillbirth, miscarriage, abortion, or ectopic pregnancy [PhenX]"
    }]
  },
  "subject" : {
    "reference" : "Patient/NgPatient-003"
  },
  "effectiveDateTime" : "2024-03-15",
  "performer" : [{
    "reference" : "Practitioner/NgPractitioner-002"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA14270-5",
      "display" : "Live birth"
    }]
  }
}

```
