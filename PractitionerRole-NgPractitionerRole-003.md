# Example Ng PractitionerRole (Medical Devices) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng PractitionerRole (Medical Devices)**

## Example PractitionerRole: Example Ng PractitionerRole (Medical Devices)

Profile: [NG PractitionerRole](StructureDefinition-ng-practitioner-role.md)

**period**: 2023-03-15 --> (ongoing)

**practitioner**: [Practitioner Hauwa Garba ](Practitioner-NgPractitioner-003.md)

**organization**: [Organization Asokoro District Hospital](Organization-NgOrganization-001.md)

**code**: Device Operator (CHEW), Community Health Extension Worker



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "NgPractitionerRole-003",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role"]
  },
  "period" : {
    "start" : "2023-03-15"
  },
  "practitioner" : {
    "reference" : "Practitioner/NgPractitioner-003"
  },
  "organization" : {
    "reference" : "Organization/NgOrganization-001"
  },
  "code" : [{
    "text" : "Device Operator (CHEW)"
  },
  {
    "text" : "Community Health Extension Worker"
  }]
}

```
