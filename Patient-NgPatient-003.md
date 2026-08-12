# Example Ng Patient (Immunization) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Patient (Immunization)**

## Example Patient: Example Ng Patient (Immunization)

Last updated: 2025-11-04 11:45:00+0000

Profile: [NG Patient](StructureDefinition-ng-patient.md)

Suleiman Bala Male, DoB: 2019-09-05 ( birthcert)

-------

| | |
| :--- | :--- |
| Active: | true |
| Other Id: | mobile/08123456789 |
| Contact Detail | Plot 7, Mabushi Abuja FC |
| : | * Aisha Bala 
* Abuja FC 
* [+2348122223344](tel:+2348122223344)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "NgPatient-003",
  "meta" : {
    "lastUpdated" : "2025-11-04T11:45:00Z",
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
        "code" : "BIRTHCERT"
      }]
    },
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
    "value" : "NPC-FCT-2019-004321"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
        "code" : "MOBILE"
      }]
    },
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
    "value" : "08123456789"
  }],
  "active" : true,
  "name" : [{
    "family" : "Bala",
    "given" : ["Suleiman"]
  }],
  "gender" : "male",
  "birthDate" : "2019-09-05",
  "address" : [{
    "line" : ["Plot 7, Mabushi"],
    "city" : "Abuja",
    "district" : "fc-municipal",
    "state" : "FC"
  }],
  "contact" : [{
    "relationship" : [{
      "text" : "MOTHER"
    }],
    "name" : {
      "family" : "Bala",
      "given" : ["Aisha"]
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "+2348122223344"
    }],
    "address" : {
      "city" : "Abuja",
      "district" : "fc-municipal",
      "state" : "FC"
    }
  }]
}

```
