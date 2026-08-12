# Example Ng Coverage (NHIA Self Coverage) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Coverage (NHIA Self Coverage)**

## Example Coverage: Example Ng Coverage (NHIA Self Coverage)

Profile: [NG Claim Coverage](StructureDefinition-ng-coverage.md)

**status**: Active

**subscriber**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**beneficiary**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**period**: 2025-01-01 --> 2025-12-31

**payor**: [Organization Asokoro District Hospital](Organization-NgOrganization-001.md)



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "NgCoverage-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-coverage"]
  },
  "status" : "active",
  "subscriber" : {
    "reference" : "Patient/NgPatient-002"
  },
  "beneficiary" : {
    "reference" : "Patient/NgPatient-002"
  },
  "period" : {
    "start" : "2025-01-01",
    "end" : "2025-12-31"
  },
  "payor" : [{
    "reference" : "Organization/NgOrganization-001"
  }]
}

```
