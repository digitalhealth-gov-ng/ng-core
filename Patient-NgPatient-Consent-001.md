# Consent Patient (Minimal) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Consent Patient (Minimal)**

## Example Patient: Consent Patient (Minimal)

Last updated: 2025-10-21 09:59:00+0100

Profile: [NG Patient](StructureDefinition-ng-patient.md)

Eko Okon Female, DoB: 1992-06-18 ( mobile)

-------

| | |
| :--- | :--- |
| Active: | true |
| Contact Detail | Uyo AK |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "NgPatient-Consent-001",
  "meta" : {
    "lastUpdated" : "2025-10-21T09:59:00+01:00",
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
        "code" : "MOBILE"
      }]
    },
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
    "value" : "08070001234"
  }],
  "active" : true,
  "name" : [{
    "family" : "Okon",
    "given" : ["Eko"]
  }],
  "gender" : "female",
  "birthDate" : "1992-06-18",
  "address" : [{
    "city" : "Uyo",
    "district" : "ak-uyo",
    "state" : "AK"
  }]
}

```
