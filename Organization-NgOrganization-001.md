# Example Asokoro District Hospital - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Asokoro District Hospital**

## Example Organization: Example Asokoro District Hospital

Profile: [NG Organization](StructureDefinition-ng-organization.md)

**NG Owner of Facility**: Public Health Institution Location

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs`/HOSPITAL1234

**active**: true

**type**: Secondary Hospital

**name**: Asokoro District Hospital

**telecom**: [+234-800-111-2222](tel:+234-800-111-2222), [info@asokorodh.example.ng](mailto:info@asokorodh.example.ng)

**address**: Plot 12, Yakubu Gowon Crescent, Asokoro Abuja FC 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "NgOrganization-001",
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
    "value" : "HOSPITAL1234"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs",
      "code" : "hospital",
      "display" : "Secondary Hospital"
    }],
    "text" : "Secondary Hospital"
  }],
  "name" : "Asokoro District Hospital",
  "telecom" : [{
    "system" : "phone",
    "value" : "+234-800-111-2222"
  },
  {
    "system" : "email",
    "value" : "info@asokorodh.example.ng"
  }],
  "address" : [{
    "line" : ["Plot 12, Yakubu Gowon Crescent, Asokoro"],
    "city" : "Abuja",
    "district" : "fc-municipal",
    "state" : "FC"
  }]
}

```
