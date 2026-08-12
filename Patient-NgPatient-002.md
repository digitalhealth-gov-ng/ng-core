# Example Ng Patient (ePharmacy & Claims) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Patient (ePharmacy & Claims)**

## Example Patient: Example Ng Patient (ePharmacy & Claims)

Last updated: 2025-11-04 09:10:00+0000

Profile: [NG Patient](StructureDefinition-ng-patient.md)

Musa Abdullahi Male, DoB: 1987-07-06 ( nin)

-------

| | |
| :--- | :--- |
| Active: | true |
| Other Ids: | * mrn/KNH-2025-33445
* insurance no/NHIA-0011223344
* mobile/08031234567
 |
| Contact Detail | No. 8 Lafia Road Kano KN |
| : | * Zainab Abdullahi 
* Kano KN 
* [+2348031112233](tel:+2348031112233)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "NgPatient-002",
  "meta" : {
    "lastUpdated" : "2025-11-04T09:10:00Z",
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
        "code" : "NIN"
      }]
    },
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
    "value" : "12345678901"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
        "code" : "MRN"
      }]
    },
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
    "value" : "KNH-2025-33445"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
        "code" : "INSUR"
      }]
    },
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
    "value" : "NHIA-0011223344"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
        "code" : "MOBILE"
      }]
    },
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
    "value" : "08031234567"
  }],
  "active" : true,
  "name" : [{
    "family" : "Abdullahi",
    "given" : ["Musa"]
  }],
  "gender" : "male",
  "birthDate" : "1987-07-06",
  "address" : [{
    "line" : ["No. 8 Lafia Road"],
    "city" : "Kano",
    "district" : "kn-kano-municipal",
    "state" : "KN"
  }],
  "contact" : [{
    "relationship" : [{
      "text" : "Sister"
    }],
    "name" : {
      "family" : "Abdullahi",
      "given" : ["Zainab"]
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "+2348031112233"
    }],
    "address" : {
      "city" : "Kano",
      "district" : "kn-kano-municipal",
      "state" : "KN"
    }
  }]
}

```
