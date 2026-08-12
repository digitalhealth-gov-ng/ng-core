# Example Ng MedicationDispense (Amoxicillin 500 mg CAPS x30) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng MedicationDispense (Amoxicillin 500 mg CAPS x30)**

## Example MedicationDispense: Example Ng MedicationDispense (Amoxicillin 500 mg CAPS x30)

Profile: [NG MedicationDispense](StructureDefinition-ng-medication-dispense.md)

**status**: Completed

**medication**: [Medication ](Medication-NgMedication-001.md)

**subject**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md) |

**quantity**: 30 1 (Details: UCUM code1 = '1')

**whenHandedOver**: 2025-11-04 12:20:00+0100

**note**: 

> 

Dispensed after coverage verification.


### DosageInstructions

| | |
| :--- | :--- |
| - | **Text** |
| * | Take 1 capsule orally every 8 hours for 10 days. |



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "NgMedicationDispense-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication-dispense"]
  },
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/NgMedication-001"
  },
  "subject" : {
    "reference" : "Patient/NgPatient-002"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/NgPractitioner-002"
    }
  }],
  "quantity" : {
    "value" : 30,
    "unit" : "1",
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "whenHandedOver" : "2025-11-04T12:20:00+01:00",
  "note" : [{
    "text" : "Dispensed after coverage verification."
  }],
  "dosageInstruction" : [{
    "text" : "Take 1 capsule orally every 8 hours for 10 days."
  }]
}

```
