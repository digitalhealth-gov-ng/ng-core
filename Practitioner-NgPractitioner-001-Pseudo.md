# Pseudonymized Ng Practitioner (MNCH) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pseudonymized Ng Practitioner (MNCH)**

## Example Practitioner: Pseudonymized Ng Practitioner (MNCH)

Profile: [NG Practitioner](StructureDefinition-ng-practitioner.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-mdcn-cs`/PRSN-9C4E-7B12-OB01

**active**: true

**name**: Alias-01 Clinician 

**birthDate**: 1982-01-01

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Period** |
| * | Obstetrics & Gynaecology | 2016-01-01 --> (ongoing) |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "NgPractitioner-001-Pseudo",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-mdcn-cs",
    "value" : "PRSN-9C4E-7B12-OB01"
  }],
  "active" : true,
  "name" : [{
    "family" : "Clinician",
    "given" : ["Alias-01"]
  }],
  "birthDate" : "1982-01-01",
  "qualification" : [{
    "code" : {
      "text" : "Obstetrics & Gynaecology"
    },
    "period" : {
      "start" : "2016-01-01"
    }
  }]
}

```
