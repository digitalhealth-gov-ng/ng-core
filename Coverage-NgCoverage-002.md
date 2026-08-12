# Example Ng Coverage (NHIA Dependent Coverage) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Coverage (NHIA Dependent Coverage)**

## Example Coverage: Example Ng Coverage (NHIA Dependent Coverage)

Profile: [NG Claim Coverage](StructureDefinition-ng-coverage.md)

**status**: Active

**subscriber**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**beneficiary**: [Suleiman Bala Male, DoB: 2019-09-05 ( birthcert)](Patient-NgPatient-003.md)

**period**: 2025-01-01 --> 2025-12-31

**payor**: [Organization Kano Central Hospital Pharmacy](Organization-NgOrganization-002.md)



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "NgCoverage-002",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-coverage"]
  },
  "status" : "active",
  "subscriber" : {
    "reference" : "Patient/NgPatient-002"
  },
  "beneficiary" : {
    "reference" : "Patient/NgPatient-003"
  },
  "period" : {
    "start" : "2025-01-01",
    "end" : "2025-12-31"
  },
  "payor" : [{
    "reference" : "Organization/NgOrganization-002"
  }]
}

```
