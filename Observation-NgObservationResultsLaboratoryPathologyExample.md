# Laboratory Result Observation Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Laboratory Result Observation Example**

## Example Observation: Laboratory Result Observation Example

Profile: [NG Laboratory or Pathology Result Observation](StructureDefinition-ng-observation-results-laboratory-pathology.md)

**status**: Final

**category**: Laboratory

**code**: Hemoglobin [Mass/volume] in Blood

**subject**: [Suleiman Bala Male, DoB: 2019-09-05 ( birthcert)](Patient-NgPatient-003.md)

**effective**: 2026-08-02 09:30:00+0100

**performer**: [Practitioner Kehinde Adebayo ](Practitioner-NgPractitioner-001.md)

**value**: 12.4 g/dL (Details: UCUM codeg/dL = 'g/dL')

**interpretation**: Normal



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "NgObservationResultsLaboratoryPathologyExample",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-results-laboratory-pathology"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "718-7",
      "display" : "Hemoglobin [Mass/volume] in Blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/NgPatient-003"
  },
  "effectiveDateTime" : "2026-08-02T09:30:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/NgPractitioner-001"
  }],
  "valueQuantity" : {
    "value" : 12.4,
    "unit" : "g/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "g/dL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }]
}

```
