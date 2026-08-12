# Patient - Chika Okafor - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient - Chika Okafor**

## Example Patient: Patient - Chika Okafor

Last updated: 2025-11-06 23:47:00+0100

Profile: [NG Patient](StructureDefinition-ng-patient.md)

Chika Okafor Male, DoB: 1985-06-15 ( mobile: 08045678901)

-------

| | |
| :--- | :--- |
| Active: | true |
| Contact Detail | Industrial Area Port Harcourt RI |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Patient-Chika-Okafor",
  "meta" : {
    "lastUpdated" : "2025-11-06T23:47:00+01:00",
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
        "code" : "MOBILE",
        "display" : "mobile"
      }]
    },
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
    "value" : "08045678901"
  }],
  "active" : true,
  "name" : [{
    "family" : "Okafor",
    "given" : ["Chika"]
  }],
  "gender" : "male",
  "birthDate" : "1985-06-15",
  "address" : [{
    "line" : ["Industrial Area"],
    "city" : "Port Harcourt",
    "district" : "ri-emohua",
    "state" : "RI"
  }]
}

```
