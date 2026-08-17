# Pregnancy Expected Delivery Date Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pregnancy Expected Delivery Date Example**

## Example Observation: Pregnancy Expected Delivery Date Example

Profile: [NG Pregnancy EDD Observation](StructureDefinition-ng-observation-pregnancy-edd.md)

**status**: Final

**category**: Social History

**code**: Delivery date Estimated

**subject**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

**effective**: 2026-08-02

**performer**: [Practitioner Hauwa Garba ](Practitioner-NgPractitioner-003.md)

**value**: 2026-11-20



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "NgObservationPregnancyEddExample",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-pregnancy-edd"]
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
      "code" : "11778-8",
      "display" : "Delivery date Estimated"
    }]
  },
  "subject" : {
    "reference" : "Patient/NgPatient-001"
  },
  "effectiveDateTime" : "2026-08-02",
  "performer" : [{
    "reference" : "Practitioner/NgPractitioner-003"
  }],
  "valueDateTime" : "2026-11-20"
}

```
