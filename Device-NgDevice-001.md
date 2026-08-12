# Example NG Device - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example NG Device**

## Example Device: Example NG Device

Profile: [NG Device](StructureDefinition-ng-device.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-device-identifier-vs`/VS-002

**status**: Active

**manufacturer**: Acme Medtech

**serialNumber**: SN-12345

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | POX-210 | User Friendly name |

**type**: Pulse oximeter

**patient**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

**owner**: [Organization Asokoro District Hospital](Organization-NgOrganization-001.md)

**location**: [Location Asokoro OPD](Location-NgLocation-001.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "NgDevice-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-device"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-device-identifier-vs",
    "value" : "VS-002"
  }],
  "status" : "active",
  "manufacturer" : "Acme Medtech",
  "serialNumber" : "SN-12345",
  "deviceName" : [{
    "name" : "POX-210",
    "type" : "user-friendly-name"
  }],
  "type" : {
    "text" : "Pulse oximeter"
  },
  "patient" : {
    "reference" : "Patient/NgPatient-001"
  },
  "owner" : {
    "reference" : "Organization/NgOrganization-001"
  },
  "location" : {
    "reference" : "Location/NgLocation-001"
  }
}

```
