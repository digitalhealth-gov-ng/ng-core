# Example Ng Immunization (Pentavalent 1) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Immunization (Pentavalent 1)**

## Example Immunization: Example Ng Immunization (Pentavalent 1)

Profile: [NG Immunization](StructureDefinition-ng-immunization.md)

**NG Next Dose Date**: 2024-09-10

**status**: Completed

**vaccineCode**: Pentavalent 1

**patient**: [Suleiman Bala Male, DoB: 2019-09-05 ( birthcert)](Patient-NgPatient-003.md)

**occurrence**: 2025-09-10 10:00:00+0100

**manufacturer**: [Organization Asokoro District Hospital](Organization-NgOrganization-001.md)

**lotNumber**: PENTA25-0001

**expirationDate**: 2026-06-30

**site**: Left thigh

**route**: Intramuscular

**doseQuantity**: 0.5 mL (Details: UCUM codemL = 'mL')

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Hauwa Garba ](Practitioner-NgPractitioner-003.md) |

### ProtocolApplieds

| | |
| :--- | :--- |
| - | **DoseNumber[x]** |
| * | 4 |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "NgImmunization-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization"]
  },
  "extension" : [{
    "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-next-dose-date",
    "valueDate" : "2024-09-10"
  }],
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local",
      "code" : "IMMZ.Z.DE4",
      "display" : "Pentavalent 1"
    }]
  },
  "patient" : {
    "reference" : "Patient/NgPatient-003"
  },
  "occurrenceDateTime" : "2025-09-10T10:00:00+01:00",
  "manufacturer" : {
    "reference" : "Organization/NgOrganization-001"
  },
  "lotNumber" : "PENTA25-0001",
  "expirationDate" : "2026-06-30",
  "site" : {
    "text" : "Left thigh"
  },
  "route" : {
    "text" : "Intramuscular"
  },
  "doseQuantity" : {
    "value" : 0.5,
    "unit" : "mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mL"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/NgPractitioner-003"
    }
  }],
  "protocolApplied" : [{
    "doseNumberPositiveInt" : 4
  }]
}

```
