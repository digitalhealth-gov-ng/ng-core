# Triage Nurse - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Triage Nurse**

## Example Practitioner: Triage Nurse

Profile: [NG Practitioner](StructureDefinition-ng-practitioner.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-mdcn-cs`/PRSN-9C4E-7B12-OB01

**active**: true

**name**: Akon Aderemi 

**birthDate**: 1980-01-01

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Period** |
| * | GP | 2010-01-01 --> (ongoing) |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "NgPractitioner-006-Doctor",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-mdcn-cs",
    "value" : "PRSN-9C4E-7B12-OB01"
  }],
  "active" : true,
  "name" : [{
    "family" : "Aderemi",
    "given" : ["Akon"]
  }],
  "birthDate" : "1980-01-01",
  "qualification" : [{
    "code" : {
      "text" : "GP"
    },
    "period" : {
      "start" : "2010-01-01"
    }
  }]
}

```
