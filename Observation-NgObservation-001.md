# Composite Client Registration Observation Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Composite Client Registration Observation Example**

## Example Observation: Composite Client Registration Observation Example

Profile: [Nigeria Core Composite Observation](StructureDefinition-ng-observation.md)

**status**: Final

**category**: Social History

**code**: Client registration observation summary

**subject**: [Example Nigeria Core patient](Patient-NgPatient-002.md)

**effective**: 2026-08-02 10:00:00+0100

**performer**: [Practitioner Kehinde Adebayo ](Practitioner-NgPractitioner-001.md)

> **component****code**: Age in years**value**: 28 year (Details: UCUM codea = 'a')

> **component****code**: Pregnancy status**value**: Pregnant



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "NgObservation-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation"]
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
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-observation-code",
      "code" : "client-registration-summary",
      "display" : "Client registration observation summary"
    }]
  },
  "subject" : {
    "reference" : "Patient/NgPatient-002",
    "display" : "Example Nigeria Core patient"
  },
  "effectiveDateTime" : "2026-08-02T10:00:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/NgPractitioner-001"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/age-component-codes-cs",
        "code" : "a",
        "display" : "Age in years"
      }]
    },
    "valueQuantity" : {
      "value" : 28,
      "unit" : "year",
      "system" : "http://unitsofmeasure.org",
      "code" : "a"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "82810-3",
        "display" : "Pregnancy status"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "77386006",
        "display" : "Pregnant"
      }]
    }
  }]
}

```
