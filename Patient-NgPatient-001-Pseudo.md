# Pseudonymized Ng Patient (MNCH Referral) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pseudonymized Ng Patient (MNCH Referral)**

## Example Patient: Pseudonymized Ng Patient (MNCH Referral)

Last updated: 2025-11-04 08:30:00+0000

Profile: [NG Patient](StructureDefinition-ng-patient.md)

Female-01 Client Female, DoB: 1995-02-01 ( Pseudonymized Identifier: PSN-8A7F-2C19-KE95)

-------

| | |
| :--- | :--- |
| Active: | true |
| Contact Detail | LA |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "NgPatient-001-Pseudo",
  "meta" : {
    "lastUpdated" : "2025-11-04T08:30:00Z",
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
        "code" : "PSEUDONYM",
        "display" : "Pseudonymized Identifier"
      }]
    },
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
    "value" : "PSN-8A7F-2C19-KE95"
  }],
  "active" : true,
  "name" : [{
    "family" : "Client",
    "given" : ["Female-01"]
  }],
  "gender" : "female",
  "birthDate" : "1995-02-01",
  "address" : [{
    "state" : "LA"
  }]
}

```
