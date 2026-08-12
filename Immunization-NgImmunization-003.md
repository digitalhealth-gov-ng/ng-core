# Example Ng Immunization (Tetanus Diphtheria) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Immunization (Tetanus Diphtheria)**

## Example Immunization: Example Ng Immunization (Tetanus Diphtheria)

Profile: [NG Immunization](StructureDefinition-ng-immunization.md)

**NG Vaccine Contraindications**: Mild seasonal allergies - assessed, not a contraindication to vaccination

**NG Vaccine Contraindications**: Low-grade fever (37.8°C) - assessed by clinician, vaccination approved

**NG Immunization Contraindicated**: false

**NG Next Dose Date**: 2026-05-18

**status**: Completed

**vaccineCode**: Tetanus Diphtheria

**patient**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

**occurrence**: 2025-11-04 09:10:00+0100

**manufacturer**: [Organization Asokoro District Hospital](Organization-NgOrganization-001.md)

**lotNumber**: TD25-0300

**expirationDate**: 2027-12-31

**site**: Left deltoid

**route**: Intramuscular

**doseQuantity**: 0.5 mL (Details: UCUM codemL = 'mL')

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Kehinde Adebayo ](Practitioner-NgPractitioner-001.md) |

### ProtocolApplieds

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Series** | **TargetDisease** | **DoseNumber[x]** | **SeriesDoses[x]** |
| * | Hepatitis B Primary Series | Viral hepatitis type B | 2 | 3 |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "NgImmunization-003",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization"]
  },
  "extension" : [{
    "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-vaccine-contraindications",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "419076005",
        "display" : "Allergic reaction (disorder)"
      }],
      "text" : "Mild seasonal allergies - assessed, not a contraindication to vaccination"
    }
  },
  {
    "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-vaccine-contraindications",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "386661006",
        "display" : "Fever"
      }],
      "text" : "Low-grade fever (37.8°C) - assessed by clinician, vaccination approved"
    }
  },
  {
    "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-contraindicated",
    "valueBoolean" : false
  },
  {
    "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-next-dose-date",
    "valueDate" : "2026-05-18"
  }],
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local",
      "code" : "IMMZ.Z.DE28",
      "display" : "Tetanus Diphtheria"
    }]
  },
  "patient" : {
    "reference" : "Patient/NgPatient-001"
  },
  "occurrenceDateTime" : "2025-11-04T09:10:00+01:00",
  "manufacturer" : {
    "reference" : "Organization/NgOrganization-001"
  },
  "lotNumber" : "TD25-0300",
  "expirationDate" : "2027-12-31",
  "site" : {
    "text" : "Left deltoid"
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
      "reference" : "Practitioner/NgPractitioner-001"
    }
  }],
  "protocolApplied" : [{
    "series" : "Hepatitis B Primary Series",
    "targetDisease" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "66071002",
        "display" : "Viral hepatitis type B"
      }]
    }],
    "doseNumberPositiveInt" : 2,
    "seriesDosesPositiveInt" : 3
  }]
}

```
