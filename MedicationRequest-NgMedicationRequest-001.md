# Nigeria Medication Request Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Medication Request Example**

## Example MedicationRequest: Nigeria Medication Request Example

Profile: [NG MedicationRequest](StructureDefinition-ng-medication-request.md)

**status**: Active

**intent**: Order

**category**: Outpatient

**reported**: false

**medication**: [Medication ](Medication-NgMedication-001.md)

**subject**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-11-04 12:15:00+0000 --> 2025-11-04 12:25:00+0000](Encounter-NgEncounter-002.md)

**authoredOn**: 2026-08-03 09:00:00+0100

**requester**: [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md)

**reasonCode**: Fever and mild body pain

**note**: 

> 

Review the patient if symptoms persist after five days.


> **dosageInstruction****sequence**: 1**text**: Take two tablets orally every eight hours for five days**timing**: 3 per 1 day**route**: Oral route

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 2 tablet (Details: UCUM code1 = '1') |


> **dispenseRequest****numberOfRepeatsAllowed**: 0**quantity**: 30 tablet (Details: UCUM code1 = '1')

### ExpectedSupplyDurations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Value** | **Unit** | **System** | **Code** |
| * | 5 | day | [http://unitsofmeasure.org](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html) | d |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "NgMedicationRequest-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication-request"]
  },
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medicationrequest-category",
      "code" : "outpatient",
      "display" : "Outpatient"
    }]
  }],
  "reportedBoolean" : false,
  "medicationReference" : {
    "reference" : "Medication/NgMedication-001"
  },
  "subject" : {
    "reference" : "Patient/NgPatient-002"
  },
  "encounter" : {
    "reference" : "Encounter/NgEncounter-002"
  },
  "authoredOn" : "2026-08-03T09:00:00+01:00",
  "requester" : {
    "reference" : "Practitioner/NgPractitioner-002"
  },
  "reasonCode" : [{
    "text" : "Fever and mild body pain"
  }],
  "note" : [{
    "text" : "Review the patient if symptoms persist after five days."
  }],
  "dosageInstruction" : [{
    "sequence" : 1,
    "text" : "Take two tablets orally every eight hours for five days",
    "timing" : {
      "repeat" : {
        "boundsDuration" : {
          "value" : 5,
          "unit" : "day",
          "system" : "http://unitsofmeasure.org",
          "code" : "d"
        },
        "frequency" : 3,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "route" : {
      "text" : "Oral route"
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 2,
        "unit" : "tablet",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }]
  }],
  "dispenseRequest" : {
    "numberOfRepeatsAllowed" : 0,
    "quantity" : {
      "value" : 30,
      "unit" : "tablet",
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    },
    "expectedSupplyDuration" : {
      "value" : 5,
      "unit" : "day",
      "system" : "http://unitsofmeasure.org",
      "code" : "d"
    }
  }
}

```
