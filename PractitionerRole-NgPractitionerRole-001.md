# Example Ng PractitionerRole (MNCH Referral) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng PractitionerRole (MNCH Referral)**

## Example PractitionerRole: Example Ng PractitionerRole (MNCH Referral)

Profile: [NG PractitionerRole](StructureDefinition-ng-practitioner-role.md)

**period**: 2024-01-01 --> (ongoing)

**practitioner**: [Practitioner Kehinde Adebayo ](Practitioner-NgPractitioner-001.md)

**organization**: [Organization Asokoro District Hospital](Organization-NgOrganization-001.md)

**code**: Obstetrician / ANC Clinician



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "NgPractitionerRole-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role"]
  },
  "period" : {
    "start" : "2024-01-01"
  },
  "practitioner" : {
    "reference" : "Practitioner/NgPractitioner-001"
  },
  "organization" : {
    "reference" : "Organization/NgOrganization-001"
  },
  "code" : [{
    "text" : "Obstetrician / ANC Clinician"
  }]
}

```
