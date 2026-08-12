# Example Ng PractitionerRole (ePharmacy & Claims) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng PractitionerRole (ePharmacy & Claims)**

## Example PractitionerRole: Example Ng PractitionerRole (ePharmacy & Claims)

Profile: [NG PractitionerRole](StructureDefinition-ng-practitioner-role.md)

**period**: 2022-06-01 --> (ongoing)

**practitioner**: [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md)

**organization**: [Organization Asokoro District Hospital](Organization-NgOrganization-001.md)

**code**: Pharmacist, Claims Submission Officer



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "NgPractitionerRole-002",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role"]
  },
  "period" : {
    "start" : "2022-06-01"
  },
  "practitioner" : {
    "reference" : "Practitioner/NgPractitioner-002"
  },
  "organization" : {
    "reference" : "Organization/NgOrganization-001"
  },
  "code" : [{
    "text" : "Pharmacist"
  },
  {
    "text" : "Claims Submission Officer"
  }]
}

```
