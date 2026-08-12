# Example Gwagwalada Immunization Room - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Gwagwalada Immunization Room**

## Example Location: Example Gwagwalada Immunization Room

Profile: [NG Location](StructureDefinition-ng-location.md)

**status**: Active

**name**: Immunization Room

**type**: PHC Center Level 2

**address**: Opposite Central Market Gwagwalada FC NG 

### Positions

| | | |
| :--- | :--- | :--- |
| - | **Longitude** | **Latitude** |
| * | 7.081 | 8.939 |

**managingOrganization**: [Organization Gwagwalada Model PHC](Organization-NgOrganization-003.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "NgLocation-003",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-location"]
  },
  "status" : "active",
  "name" : "Immunization Room",
  "type" : [{
    "coding" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs",
      "code" : "phc-center-l2",
      "display" : "PHC Center Level 2"
    }]
  }],
  "address" : {
    "line" : ["Opposite Central Market"],
    "city" : "Gwagwalada",
    "district" : "fc-gwagwalada",
    "state" : "FC",
    "country" : "NG"
  },
  "position" : {
    "longitude" : 7.081,
    "latitude" : 8.939
  },
  "managingOrganization" : {
    "reference" : "Organization/NgOrganization-003"
  }
}

```
