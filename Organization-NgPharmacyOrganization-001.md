# Community Pharmacy Organization Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Community Pharmacy Organization Example**

## Example Organization: Community Pharmacy Organization Example

Profile: [NG Pharmacy Organization](StructureDefinition-ng-pharmacy-organization.md)

**active**: true

**type**: Community Group

**name**: Sunrise Community Group

**telecom**: [+2348030000000](tel:+2348030000000), [info@sunrisepharmacy.example](mailto:info@sunrisepharmacy.example)

**address**: 15 Hospital Road Akure South ON Nigeria 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "NgPharmacyOrganization-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-pharmacy-organization"]
  },
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "cg",
      "display" : "Community Group"
    }]
  }],
  "name" : "Sunrise Community Group",
  "telecom" : [{
    "system" : "phone",
    "value" : "+2348030000000"
  },
  {
    "system" : "email",
    "value" : "info@sunrisepharmacy.example"
  }],
  "address" : [{
    "type" : "physical",
    "line" : ["15 Hospital Road"],
    "city" : "Akure South",
    "district" : "on-akure-south",
    "state" : "ON",
    "country" : "Nigeria"
  }]
}

```
