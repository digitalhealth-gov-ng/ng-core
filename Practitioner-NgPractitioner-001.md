# Example Ng Practitioner (MNCH) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Practitioner (MNCH)**

## Example Practitioner: Example Ng Practitioner (MNCH)

Profile: [NG Practitioner](StructureDefinition-ng-practitioner.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-mdcn-cs`/MDCN-45231

**active**: true

**name**: Kehinde Adebayo 

**telecom**: [+2348030001122](tel:+2348030001122), [kehinde.adebayo@example.org](mailto:kehinde.adebayo@example.org)

**birthDate**: 1982-01-15

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Period** |
| * | Obstetrics & Gynaecology | 2016-01-01 --> (ongoing) |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "NgPractitioner-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-mdcn-cs",
    "value" : "MDCN-45231"
  }],
  "active" : true,
  "name" : [{
    "family" : "Adebayo",
    "given" : ["Kehinde"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+2348030001122"
  },
  {
    "system" : "email",
    "value" : "kehinde.adebayo@example.org"
  }],
  "birthDate" : "1982-01-15",
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
