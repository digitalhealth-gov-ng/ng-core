# Nigeria Healthcare Provider Organization Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Healthcare Provider Organization Example**

## Example Organization: Nigeria Healthcare Provider Organization Example

Profile: [NG Provider Organization](StructureDefinition-ng-provider-organization.md)

**active**: true

**type**: Healthcare Provider

**name**: Akure Central Hospital

**telecom**: [+2348030000000](tel:+2348030000000), [info@akurecentralhospital.example](mailto:info@akurecentralhospital.example)

**address**: 25 Hospital Road Akure south ON 340001 Nigeria 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "NgProviderOrganization-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-provider-organization"]
  },
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "prov",
      "display" : "Healthcare Provider"
    }]
  }],
  "name" : "Akure Central Hospital",
  "telecom" : [{
    "system" : "phone",
    "value" : "+2348030000000"
  },
  {
    "system" : "email",
    "value" : "info@akurecentralhospital.example"
  }],
  "address" : [{
    "type" : "physical",
    "line" : ["25 Hospital Road"],
    "city" : "Akure south",
    "district" : "on-akure-south",
    "state" : "ON",
    "postalCode" : "340001",
    "country" : "Nigeria"
  }]
}

```
