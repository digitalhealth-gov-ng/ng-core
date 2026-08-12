# Example NG DeviceRequest - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example NG DeviceRequest**

## Example DeviceRequest: Example NG DeviceRequest

Profile: [NG DeviceRequest](StructureDefinition-ng-device-request.md)

**status**: Active

**intent**: Order

**code**: [Device: identifier = https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-device-identifier-vs#VS-002; status = active; manufacturer = Acme Medtech; serialNumber = SN-12345; type = ](Device-NgDevice-001.md)

**subject**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

**occurrence**: 2025-11-12 09:00:00+0000

**requester**: [Practitioner Kehinde Adebayo ](Practitioner-NgPractitioner-001.md)

**performer**: [Organization Asokoro District Hospital](Organization-NgOrganization-001.md)

**reasonCode**: Inspired oxygen concentration

**insurance**: [Coverage: status = active; period = 2025-01-01 --> 2025-12-31](Coverage-NgCoverage-001.md)

**note**: 

> 

Provide patient education on device use.




## Resource Content

```json
{
  "resourceType" : "DeviceRequest",
  "id" : "NgDeviceRequest-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-device-request"]
  },
  "status" : "active",
  "intent" : "order",
  "codeReference" : {
    "reference" : "Device/NgDevice-001"
  },
  "subject" : {
    "reference" : "Patient/NgPatient-001"
  },
  "occurrenceDateTime" : "2025-11-12T09:00:00Z",
  "requester" : {
    "reference" : "Practitioner/NgPractitioner-001"
  },
  "performer" : {
    "reference" : "Organization/NgOrganization-001"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "250774007",
      "display" : "Inspired oxygen concentration"
    }]
  }],
  "insurance" : [{
    "reference" : "Coverage/NgCoverage-001"
  }],
  "note" : [{
    "text" : "Provide patient education on device use."
  }]
}

```
