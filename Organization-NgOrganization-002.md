# Example Kano Central Hospital Pharmacy - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Kano Central Hospital Pharmacy**

## Example Organization: Example Kano Central Hospital Pharmacy

Profile: [NG Organization](StructureDefinition-ng-organization.md)

**NG Owner of Facility**: Private Health Institution Location

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs`/HCF-12347

**active**: true

**type**: Hospital Department

**name**: Kano Central Hospital Pharmacy

**telecom**: [+234-803-555-7788](tel:+234-803-555-7788), [pharmacy@kanocentral.example.ng](mailto:pharmacy@kanocentral.example.ng)

**address**: No. 7 Kiru Road Kabo KN 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "NgOrganization-002",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
  },
  "extension" : [{
    "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization-owner",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-organization-owner-cs",
        "code" : "private",
        "display" : "Private Health Institution Location"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs",
    "value" : "HCF-12347"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs",
      "code" : "hospital",
      "display" : "Secondary Hospital"
    }],
    "text" : "Hospital Department"
  }],
  "name" : "Kano Central Hospital Pharmacy",
  "telecom" : [{
    "system" : "phone",
    "value" : "+234-803-555-7788"
  },
  {
    "system" : "email",
    "value" : "pharmacy@kanocentral.example.ng"
  }],
  "address" : [{
    "line" : ["No. 7 Kiru Road"],
    "city" : "Kabo",
    "district" : "kn-kabo",
    "state" : "KN"
  }]
}

```
