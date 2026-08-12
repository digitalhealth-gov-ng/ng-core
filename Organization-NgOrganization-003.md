# Example Gwagwalada Model PHC - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Gwagwalada Model PHC**

## Example Organization: Example Gwagwalada Model PHC

Profile: [NG Organization](StructureDefinition-ng-organization.md)

**NG Owner of Facility**: Public Health Institution Location

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs`/CLM-2025-0001

**active**: true

**type**: Primary Health Care Centre (Level 2)

**name**: Gwagwalada Model PHC

**telecom**: [+234-812-000-4455](tel:+234-812-000-4455)

**address**: Opposite Central Market Gwagwalada FC 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "NgOrganization-003",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
  },
  "extension" : [{
    "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization-owner",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-organization-owner-cs",
        "code" : "public",
        "display" : "Public Health Institution Location"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs",
    "value" : "CLM-2025-0001"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs",
      "code" : "phc-center-l2",
      "display" : "PHC Center Level 2"
    }],
    "text" : "Primary Health Care Centre (Level 2)"
  }],
  "name" : "Gwagwalada Model PHC",
  "telecom" : [{
    "system" : "phone",
    "value" : "+234-812-000-4455"
  }],
  "address" : [{
    "line" : ["Opposite Central Market"],
    "city" : "Gwagwalada",
    "district" : "fc-gwagwalada",
    "state" : "FC"
  }]
}

```
