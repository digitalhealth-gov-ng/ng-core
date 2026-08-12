# Coverage - Chika - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Coverage - Chika**

## Example Coverage: Coverage - Chika

Profile: [NG Claim Coverage](StructureDefinition-ng-coverage.md)

**status**: Active

**type**: extended healthcare

**policyHolder**: [Chika Okafor](Patient-Patient-Chika-Okafor.md)

**subscriber**: [Chika Okafor](Patient-Patient-Chika-Okafor.md)

**subscriberId**: TRUTH-HMO-CHIKA-2025

**beneficiary**: [Chika Okafor](Patient-Patient-Chika-Okafor.md)

**dependent**: 00

**relationship**: Self

**period**: 2025-01-01 --> 2025-12-31

**payor**: [Truth HMO](Organization-Organization-Truth-HMO.md)

### Classes

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Value** | **Name** |
| * | Plan | Standard Corporate Plan | Truth HMO Corporate Coverage - Employer Sponsored |

**order**: 1



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "Coverage-Chika-TruthHMO",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-coverage"]
  },
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "EHCPOL",
      "display" : "extended healthcare"
    }]
  },
  "policyHolder" : {
    "reference" : "Patient/Patient-Chika-Okafor",
    "display" : "Chika Okafor"
  },
  "subscriber" : {
    "reference" : "Patient/Patient-Chika-Okafor",
    "display" : "Chika Okafor"
  },
  "subscriberId" : "TRUTH-HMO-CHIKA-2025",
  "beneficiary" : {
    "reference" : "Patient/Patient-Chika-Okafor",
    "display" : "Chika Okafor"
  },
  "dependent" : "00",
  "relationship" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
      "code" : "self",
      "display" : "Self"
    }]
  },
  "period" : {
    "start" : "2025-01-01",
    "end" : "2025-12-31"
  },
  "payor" : [{
    "reference" : "Organization/Organization-Truth-HMO",
    "display" : "Truth HMO"
  }],
  "class" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
        "code" : "plan",
        "display" : "Plan"
      }]
    },
    "value" : "Standard Corporate Plan",
    "name" : "Truth HMO Corporate Coverage - Employer Sponsored"
  }],
  "order" : 1
}

```
