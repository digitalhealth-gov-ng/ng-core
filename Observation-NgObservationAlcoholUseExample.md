# Alcohol Use Observation Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alcohol Use Observation Example**

## Example Observation: Alcohol Use Observation Example

Profile: [NG Alcohol Use Observation](StructureDefinition-ng-observation-alcohol-use.md)

**status**: Final

**category**: Social History

**code**: Alcoholic drinks per day

**subject**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**effective**: 2026-08-02

**performer**: [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md)

**value**: 1 drink/day



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "NgObservationAlcoholUseExample",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-alcohol-use"]
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
      "code" : "74013-4",
      "display" : "Alcoholic drinks per day"
    }]
  },
  "subject" : {
    "reference" : "Patient/NgPatient-002"
  },
  "effectiveDateTime" : "2026-08-02",
  "performer" : [{
    "reference" : "Practitioner/NgPractitioner-002"
  }],
  "valueQuantity" : {
    "value" : 1,
    "unit" : "drink/day",
    "system" : "http://unitsofmeasure.org"
  }
}

```
