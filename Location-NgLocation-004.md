# Example Gurdi Outreach Site - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Gurdi Outreach Site**

## Example Location: Example Gurdi Outreach Site

Profile: [NG Location](StructureDefinition-ng-location.md)

**status**: Active

**name**: Gurdi Outreach Site

**type**: Outreach Post

**address**: Primary School Field, Gurdi Ward Gurdi FC NG 

### Positions

| | | |
| :--- | :--- | :--- |
| - | **Longitude** | **Latitude** |
| * | 6.95 | 8.47 |

**managingOrganization**: [Organization Kano Central Hospital Pharmacy](Organization-NgOrganization-002.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "NgLocation-004",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-location"]
  },
  "status" : "active",
  "name" : "Gurdi Outreach Site",
  "type" : [{
    "coding" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs",
      "code" : "outreach",
      "display" : "Outreach Post"
    }]
  }],
  "address" : {
    "extension" : [{
      "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-administrative-ward",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-wards-cs",
          "code" : "fc-amac-gurdi",
          "display" : "Gurdi"
        }]
      }
    }],
    "line" : ["Primary School Field, Gurdi Ward"],
    "city" : "Gurdi",
    "district" : "fc-municipal",
    "state" : "FC",
    "country" : "NG"
  },
  "position" : {
    "longitude" : 6.95,
    "latitude" : 8.47
  },
  "managingOrganization" : {
    "reference" : "Organization/NgOrganization-002"
  }
}

```
