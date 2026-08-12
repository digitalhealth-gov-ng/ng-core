# Nigeria Health Insurance Organization Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Health Insurance Organization Example**

## Example Organization: Nigeria Health Insurance Organization Example

Profile: [NG Insurer Organization](StructureDefinition-ng-insurer-organization.md)

**active**: true

**type**: Insurance Company

**name**: Ondo Community Health Insurance

**telecom**: [+2348030000000](tel:+2348030000000), [info@ondohealthassurance.example](mailto:info@ondohealthassurance.example)

**address**: 10 Igbatoro Road Akure south ON Nigeria 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "NgInsurerOrganization-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-insurer-organization"]
  },
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "ins",
      "display" : "Insurance Company"
    }]
  }],
  "name" : "Ondo Community Health Insurance",
  "telecom" : [{
    "system" : "phone",
    "value" : "+2348030000000"
  },
  {
    "system" : "email",
    "value" : "info@ondohealthassurance.example"
  }],
  "address" : [{
    "type" : "physical",
    "line" : ["10 Igbatoro Road"],
    "city" : "Akure south",
    "district" : "on-akure-south",
    "state" : "ON",
    "country" : "Nigeria"
  }]
}

```
