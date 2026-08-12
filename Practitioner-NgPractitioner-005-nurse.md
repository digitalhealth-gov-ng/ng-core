# Triage Nurse - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Triage Nurse**

## Example Practitioner: Triage Nurse

Profile: [NG Practitioner](StructureDefinition-ng-practitioner.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-mdcn-cs`/PRSN-9C4E-7B12-OB01

**active**: true

**name**: Blessing Sister 

**birthDate**: 1981-01-01

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Period** |
| * | Nurse | 2016-01-01 --> (ongoing) |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "NgPractitioner-005-nurse",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-mdcn-cs",
    "value" : "PRSN-9C4E-7B12-OB01"
  }],
  "active" : true,
  "name" : [{
    "family" : "Sister",
    "given" : ["Blessing"]
  }],
  "birthDate" : "1981-01-01",
  "qualification" : [{
    "code" : {
      "text" : "Nurse"
    },
    "period" : {
      "start" : "2016-01-01"
    }
  }]
}

```
