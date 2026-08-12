# Example Ng Practitioner (Medical Devices) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Practitioner (Medical Devices)**

## Example Practitioner: Example Ng Practitioner (Medical Devices)

Profile: [NG Practitioner](StructureDefinition-ng-practitioner.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-mdcn-cs`/CHEW-12347

**active**: true

**name**: Hauwa Garba 

**telecom**: [+2348123456677](tel:+2348123456677), [hauwa.garba@example.org](mailto:hauwa.garba@example.org)

**birthDate**: 1995-11-09

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Period** |
| * | Community Health Extension Worker | 2020-03-01 --> (ongoing) |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "NgPractitioner-003",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-mdcn-cs",
    "value" : "CHEW-12347"
  }],
  "active" : true,
  "name" : [{
    "family" : "Garba",
    "given" : ["Hauwa"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+2348123456677"
  },
  {
    "system" : "email",
    "value" : "hauwa.garba@example.org"
  }],
  "birthDate" : "1995-11-09",
  "qualification" : [{
    "code" : {
      "text" : "Community Health Extension Worker"
    },
    "period" : {
      "start" : "2020-03-01"
    }
  }]
}

```
