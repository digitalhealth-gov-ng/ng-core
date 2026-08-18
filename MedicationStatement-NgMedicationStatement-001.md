# Nigeria Medication Statement Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Medication Statement Example**

## Example MedicationStatement: Nigeria Medication Statement Example

Profile: [NG Medication Statement](StructureDefinition-ng-medication-statement.md)

**status**: Active

**category**: Outpatient medication

**medication**: [Medication ](Medication-NgMedication-001.md)

**subject**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**context**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-11-04 12:15:00+0000 --> 2025-11-04 12:25:00+0000](Encounter-NgEncounter-002.md)

**effective**: 2026-08-01 --> (ongoing)

**dateAsserted**: 2026-08-03 09:00:00+0100

**informationSource**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**reasonCode**: Fever and mild body pain

**note**: 

> 

The patient reported taking the medication as directed.


> **dosage****sequence**: 1**text**: Take two tablets orally every eight hours as needed for fever**timing**: 3 per 1 day**asNeeded**: true**route**: Oral route

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 2 tablet |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "NgMedicationStatement-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication-statement"]
  },
  "status" : "active",
  "category" : {
    "text" : "Outpatient medication"
  },
  "medicationReference" : {
    "reference" : "Medication/NgMedication-001"
  },
  "subject" : {
    "reference" : "Patient/NgPatient-002"
  },
  "context" : {
    "reference" : "Encounter/NgEncounter-002"
  },
  "effectivePeriod" : {
    "start" : "2026-08-01"
  },
  "dateAsserted" : "2026-08-03T09:00:00+01:00",
  "informationSource" : {
    "reference" : "Patient/NgPatient-002"
  },
  "reasonCode" : [{
    "text" : "Fever and mild body pain"
  }],
  "note" : [{
    "text" : "The patient reported taking the medication as directed."
  }],
  "dosage" : [{
    "sequence" : 1,
    "text" : "Take two tablets orally every eight hours as needed for fever",
    "timing" : {
      "repeat" : {
        "frequency" : 3,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "asNeededBoolean" : true,
    "route" : {
      "text" : "Oral route"
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 2,
        "unit" : "tablet"
      }
    }]
  }]
}

```
