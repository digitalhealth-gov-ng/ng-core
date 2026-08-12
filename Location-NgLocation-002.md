# Example Kano Central Pharmacy Counter - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Kano Central Pharmacy Counter**

## Example Location: Example Kano Central Pharmacy Counter

Profile: [NG Location](StructureDefinition-ng-location.md)

**status**: Active

**name**: Pharmacy Counter

**type**: Secondary Hospital

**telecom**: [+234-803-555-7788](tel:+234-803-555-7788)

**address**: No. 8 Lafia Road Kano Municipal KN NG 

### Positions

| | | |
| :--- | :--- | :--- |
| - | **Longitude** | **Latitude** |
| * | 8.5 | 12 |

**managingOrganization**: [Organization Kano Central Hospital Pharmacy](Organization-NgOrganization-002.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "NgLocation-002",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-location"]
  },
  "status" : "active",
  "name" : "Pharmacy Counter",
  "type" : [{
    "coding" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs",
      "code" : "hospital",
      "display" : "Secondary Hospital"
    }]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+234-803-555-7788"
  }],
  "address" : {
    "line" : ["No. 8 Lafia Road"],
    "city" : "Kano Municipal",
    "district" : "kn-kano-municipal",
    "state" : "KN",
    "country" : "NG"
  },
  "position" : {
    "longitude" : 8.5,
    "latitude" : 12
  },
  "managingOrganization" : {
    "reference" : "Organization/NgOrganization-002"
  }
}

```
