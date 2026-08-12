# Service Hospital - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Service Hospital**

## Example Organization: Service Hospital

Profile: [NG Provider Organization](StructureDefinition-ng-provider-organization.md)

**NG Owner of Facility**: Faith-based Institution Locations such as churches, musques, and traditional homes

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs`/HCF-RI-0045

**active**: true

**type**: Healthcare Provider

**name**: Port Harcourt Emergency Hospital

**telecom**: ph: 084-234-5678

**address**: Emergency Services Wing Port Harcourt RI 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "Organization-PortHarcourt-Hospital",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-provider-organization"]
  },
  "extension" : [{
    "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization-owner",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-organization-owner-cs",
        "code" : "faith-based"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs",
    "value" : "HCF-RI-0045"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "prov",
      "display" : "Healthcare Provider"
    }]
  }],
  "name" : "Port Harcourt Emergency Hospital",
  "telecom" : [{
    "system" : "phone",
    "value" : "084-234-5678"
  }],
  "address" : [{
    "line" : ["Emergency Services Wing"],
    "city" : "Port Harcourt",
    "district" : "ri-emohua",
    "state" : "RI"
  }]
}

```
