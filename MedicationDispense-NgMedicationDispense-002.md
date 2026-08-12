# Example Ng MedicationDispense (Paracetamol 250 mg/5 mL, 100 mL) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng MedicationDispense (Paracetamol 250 mg/5 mL, 100 mL)**

## Example MedicationDispense: Example Ng MedicationDispense (Paracetamol 250 mg/5 mL, 100 mL)

Profile: [NG MedicationDispense](StructureDefinition-ng-medication-dispense.md)

**status**: Completed

**medication**: [Medication ](Medication-NgMedication-002.md)

**subject**: [Suleiman Bala Male, DoB: 2019-09-05 ( birthcert)](Patient-NgPatient-003.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Hauwa Garba ](Practitioner-NgPractitioner-003.md) |

**quantity**: 100 mL (Details: UCUM codemL = 'mL')

**whenHandedOver**: 2025-11-04 12:25:00+0100

**note**: 

> 

Shake well before use.


### DosageInstructions

| | |
| :--- | :--- |
| - | **Text** |
| * | 5 mL orally every 6 hours as needed for fever. |



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "NgMedicationDispense-002",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication-dispense"]
  },
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/NgMedication-002"
  },
  "subject" : {
    "reference" : "Patient/NgPatient-003"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/NgPractitioner-003"
    }
  }],
  "quantity" : {
    "value" : 100,
    "unit" : "mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mL"
  },
  "whenHandedOver" : "2025-11-04T12:25:00+01:00",
  "note" : [{
    "text" : "Shake well before use."
  }],
  "dosageInstruction" : [{
    "text" : "5 mL orally every 6 hours as needed for fever."
  }]
}

```
