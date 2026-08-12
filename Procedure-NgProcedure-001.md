# Example NG Procedure - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example NG Procedure**

## Example Procedure: Example NG Procedure

Profile: [NG Procedure](StructureDefinition-ng-procedure.md)

**status**: Completed

**category**: Obstetrics procedure

**code**: Cesarean section

**subject**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-11-04 09:00:00+0000 --> 2025-11-04 09:35:00+0000](Encounter-NgEncounter-001.md)

**performed**: 2025-11-27 10:30:00+0000

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Kehinde Adebayo ](Practitioner-NgPractitioner-001.md) |

**location**: [Location Asokoro OPD](Location-NgLocation-001.md)

**reasonCode**: Obstructed labor

**outcome**: Mother and baby stable

**usedReference**: [Device: identifier = https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-device-identifier-vs#VS-002; status = active; manufacturer = Acme Medtech; serialNumber = SN-12345; type = ](Device-NgDevice-001.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "NgProcedure-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-procedure"]
  },
  "status" : "completed",
  "category" : {
    "text" : "Obstetrics procedure"
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "11466000",
      "display" : "Cesarean section"
    }]
  },
  "subject" : {
    "reference" : "Patient/NgPatient-001"
  },
  "encounter" : {
    "reference" : "Encounter/NgEncounter-001"
  },
  "performedDateTime" : "2025-11-27T10:30:00Z",
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/NgPractitioner-001"
    }
  }],
  "location" : {
    "reference" : "Location/NgLocation-001"
  },
  "reasonCode" : [{
    "text" : "Obstructed labor"
  }],
  "outcome" : {
    "text" : "Mother and baby stable"
  },
  "usedReference" : [{
    "reference" : "Device/NgDevice-001"
  }]
}

```
