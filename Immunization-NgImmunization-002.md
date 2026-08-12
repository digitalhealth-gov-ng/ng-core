# Example Ng Immunization (Rotavirus 1) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Immunization (Rotavirus 1)**

## Example Immunization: Example Ng Immunization (Rotavirus 1)

Profile: [NG Immunization](StructureDefinition-ng-immunization.md)

**status**: Completed

**vaccineCode**: Rotavirus 1

**patient**: [Suleiman Bala Male, DoB: 2019-09-05 ( birthcert)](Patient-NgPatient-003.md)

**occurrence**: 2025-09-10 10:05:00+0100

**manufacturer**: [Organization Gwagwalada Model PHC](Organization-NgOrganization-003.md)

**lotNumber**: ROTA25-0045

**expirationDate**: 2026-04-30

**route**: Oral

**doseQuantity**: 2 mL (Details: UCUM codemL = 'mL')

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Hauwa Garba ](Practitioner-NgPractitioner-003.md) |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "NgImmunization-002",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization"]
  },
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local",
      "code" : "IMMZ.Z.DE7",
      "display" : "Rotavirus 1"
    }]
  },
  "patient" : {
    "reference" : "Patient/NgPatient-003"
  },
  "occurrenceDateTime" : "2025-09-10T10:05:00+01:00",
  "manufacturer" : {
    "reference" : "Organization/NgOrganization-003"
  },
  "lotNumber" : "ROTA25-0045",
  "expirationDate" : "2026-04-30",
  "route" : {
    "text" : "Oral"
  },
  "doseQuantity" : {
    "value" : 2,
    "unit" : "mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mL"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/NgPractitioner-003"
    }
  }]
}

```
