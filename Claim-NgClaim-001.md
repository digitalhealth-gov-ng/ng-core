# Example NG Claim (ePharmacy) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example NG Claim (ePharmacy)**

## Example Claim: Example NG Claim (ePharmacy)

Profile: [NG Claim](StructureDefinition-ng-claim.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-identifier-cs`/CLM-2025-0001

**status**: Active

**type**: Pharmacy

**use**: Claim

**patient**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**created**: 2025-11-04 12:30:00+0000

**provider**: [Organization Asokoro District Hospital](Organization-NgOrganization-001.md)

**priority**: Normal

### Payees

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Party** |
| * | Provider | [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md) |

### Insurances

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Identifier** | **Coverage** | **BusinessArrangement** | **PreAuthRef** |
| * | 654 | true | `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-identifier-cs`/NHIA-0011223344 | [Coverage: status = active; period = 2025-01-01 --> 2025-12-31](Coverage-NgCoverage-001.md) | NHIA-PlanA-2025 | PA-2025-ABC123 |

> **item****sequence**: 1**diagnosisSequence**: 1**productOrService**: Exam, comp, primary**quantity**: 30

### UnitPrices

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 500 | Nigerian naira |

### Nets

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 15000 | Nigerian naira |


### Totals

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 15000 | Nigerian naira |



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "NgClaim-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-claim"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-identifier-cs",
    "value" : "CLM-2025-0001"
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
      "code" : "pharmacy"
    }]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/NgPatient-002"
  },
  "created" : "2025-11-04T12:30:00Z",
  "provider" : {
    "reference" : "Organization/NgOrganization-001"
  },
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
      "code" : "normal"
    }]
  },
  "payee" : {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/payeetype",
        "code" : "provider"
      }]
    },
    "party" : {
      "reference" : "Practitioner/NgPractitioner-002"
    }
  },
  "insurance" : [{
    "sequence" : 654,
    "focal" : true,
    "identifier" : {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-identifier-cs",
      "value" : "NHIA-0011223344"
    },
    "coverage" : {
      "reference" : "Coverage/NgCoverage-001"
    },
    "businessArrangement" : "NHIA-PlanA-2025",
    "preAuthRef" : ["PA-2025-ABC123"]
  }],
  "item" : [{
    "sequence" : 1,
    "diagnosisSequence" : [1],
    "productOrService" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/ex-USCLS",
        "code" : "1101"
      }]
    },
    "quantity" : {
      "value" : 30
    },
    "unitPrice" : {
      "value" : 500,
      "currency" : "NGN"
    },
    "net" : {
      "value" : 15000,
      "currency" : "NGN"
    }
  }],
  "total" : {
    "value" : 15000,
    "currency" : "NGN"
  }
}

```
