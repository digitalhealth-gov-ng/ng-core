# Example Ng Patient (MNCH Referral) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Patient (MNCH Referral)**

## Example Patient: Example Ng Patient (MNCH Referral)

Last updated: 2025-11-04 08:30:00+0000

Profile: [NG Patient](StructureDefinition-ng-patient.md)

Kemi Adebayo Female, DoB: 1995-02-14 ( nin)

-------

| | |
| :--- | :--- |
| Active: | true |
| Other Ids: | * mrn/ASO-2025-0098
* mobile/08051234567
 |
| Contact Detail | 15 Ajayi Street Ikeja LA |
| : | * Funke Adebayo 
* Ikeja LA 
* [+2348059988776](tel:+2348059988776)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "NgPatient-001",
  "meta" : {
    "lastUpdated" : "2025-11-04T08:30:00Z",
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
    "value" : "23456789012"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
        "code" : "MRN"
      }]
    },
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
    "value" : "ASO-2025-0098"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
        "code" : "MOBILE"
      }]
    },
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs",
    "value" : "08051234567"
  }],
  "active" : true,
  "name" : [{
    "family" : "Adebayo",
    "given" : ["Kemi"]
  }],
  "gender" : "female",
  "birthDate" : "1995-02-14",
  "address" : [{
    "line" : ["15 Ajayi Street"],
    "city" : "Ikeja",
    "district" : "la-ikeja",
    "state" : "LA"
  }],
  "contact" : [{
    "relationship" : [{
      "text" : "Mother"
    }],
    "name" : {
      "family" : "Adebayo",
      "given" : ["Funke"]
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "+2348059988776"
    }],
    "address" : {
      "city" : "Ikeja",
      "district" : "la-ikeja",
      "state" : "LA"
    }
  }]
}

```
