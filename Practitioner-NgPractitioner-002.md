# Example Ng Practitioner (ePharmacy & Claims) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Practitioner (ePharmacy & Claims)**

## Example Practitioner: Example Ng Practitioner (ePharmacy & Claims)

Profile: [NG Practitioner](StructureDefinition-ng-practitioner.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-pcn-cs`/PCN-45231

**active**: true

**name**: Nkiru Okeke 

**telecom**: [+2348057788990](tel:+2348057788990), [nkiru.okeke@pharm.example.ng](mailto:nkiru.okeke@pharm.example.ng)

**birthDate**: 1990-06-24

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Period** |
| * | Registered Pharmacist | 2018-07-01 --> (ongoing) |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "NgPractitioner-002",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-pcn-cs",
    "value" : "PCN-45231"
  }],
  "active" : true,
  "name" : [{
    "family" : "Okeke",
    "given" : ["Nkiru"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+2348057788990"
  },
  {
    "system" : "email",
    "value" : "nkiru.okeke@pharm.example.ng"
  }],
  "birthDate" : "1990-06-24",
  "qualification" : [{
    "code" : {
      "text" : "Registered Pharmacist"
    },
    "period" : {
      "start" : "2018-07-01"
    }
  }]
}

```
