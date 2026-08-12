# Example Ng MedicationDispense (Insulin 100 IU/mL, 10 mL) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng MedicationDispense (Insulin 100 IU/mL, 10 mL)**

## Example MedicationDispense: Example Ng MedicationDispense (Insulin 100 IU/mL, 10 mL)

Profile: [NG MedicationDispense](StructureDefinition-ng-medication-dispense.md)

**status**: Completed

**medication**: Insulin (short-acting) 100 IU/mL vial

**subject**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Kehinde Adebayo ](Practitioner-NgPractitioner-001.md) |

**quantity**: 10 mL (Details: UCUM codemL = 'mL')

**whenHandedOver**: 2025-11-04 12:40:00+0100

**note**: 

> 

Keep refrigerated. Do not freeze.


### DosageInstructions

| | |
| :--- | :--- |
| - | **Text** |
| * | Inject 10 units subcutaneously before breakfast daily. |



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "NgMedicationDispense-003",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication-dispense"]
  },
  "status" : "completed",
  "medicationCodeableConcept" : {
    "text" : "Insulin (short-acting) 100 IU/mL vial"
  },
  "subject" : {
    "reference" : "Patient/NgPatient-001"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/NgPractitioner-001"
    }
  }],
  "quantity" : {
    "value" : 10,
    "unit" : "mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mL"
  },
  "whenHandedOver" : "2025-11-04T12:40:00+01:00",
  "note" : [{
    "text" : "Keep refrigerated. Do not freeze."
  }],
  "dosageInstruction" : [{
    "text" : "Inject 10 units subcutaneously before breakfast daily."
  }]
}

```
