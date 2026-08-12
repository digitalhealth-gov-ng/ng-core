# Radiology Result Observation Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiology Result Observation Example**

## Example Observation: Radiology Result Observation Example

Profile: [Nigeria Core Radiology Result Observation](StructureDefinition-ng-observation-results-radiology.md)

**status**: Final

**category**: Imaging

**code**: XR Chest 2 Views

**subject**: [Suleiman Bala Male, DoB: 2019-09-05 ( birthcert)](Patient-NgPatient-003.md)

**effective**: 2026-08-02 11:15:00+0100

**performer**: [Practitioner Hauwa Garba ](Practitioner-NgPractitioner-003.md)

**value**: No focal pulmonary opacity, pleural effusion, or pneumothorax is seen.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "NgObservationResultsRadiologyExample",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-results-radiology"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "imaging",
      "display" : "Imaging"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "36643-5",
      "display" : "XR Chest 2 Views"
    }]
  },
  "subject" : {
    "reference" : "Patient/NgPatient-003"
  },
  "effectiveDateTime" : "2026-08-02T11:15:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/NgPractitioner-003"
  }],
  "valueString" : "No focal pulmonary opacity, pleural effusion, or pneumothorax is seen."
}

```
