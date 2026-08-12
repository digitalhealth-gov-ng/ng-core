# Example Asokoro OPD - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Asokoro OPD**

## Example Location: Example Asokoro OPD

Profile: [NG Location](StructureDefinition-ng-location.md)

**status**: Active

**name**: Asokoro OPD

**type**: Secondary Hospital

**telecom**: [+234-800-111-2222](tel:+234-800-111-2222)

**address**: Yakubu Gowon Crescent, Asokoro Abuja Municipal Area Council FC NG 

### Positions

| | | |
| :--- | :--- | :--- |
| - | **Longitude** | **Latitude** |
| * | 7.516 | 9.043 |

**managingOrganization**: [Organization Asokoro District Hospital](Organization-NgOrganization-001.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "NgLocation-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-location"]
  },
  "status" : "active",
  "name" : "Asokoro OPD",
  "type" : [{
    "coding" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs",
      "code" : "hospital",
      "display" : "Secondary Hospital"
    }]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+234-800-111-2222"
  }],
  "address" : {
    "line" : ["Yakubu Gowon Crescent, Asokoro"],
    "city" : "Abuja Municipal Area Council",
    "district" : "fc-municipal",
    "state" : "FC",
    "country" : "NG"
  },
  "position" : {
    "longitude" : 7.516,
    "latitude" : 9.043
  },
  "managingOrganization" : {
    "reference" : "Organization/NgOrganization-001"
  }
}

```
