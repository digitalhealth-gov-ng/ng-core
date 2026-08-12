# Example Ng EOB (Approved) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng EOB (Approved)**

## Example ExplanationOfBenefit: Example Ng EOB (Approved)

Profile: [NG ExplanationOfBenefit](StructureDefinition-ng-explanation-of-benefit.md)

**status**: Active

**type**: Pharmacy

**use**: Claim

**patient**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**created**: 2025-11-04 12:46:00+0000

**insurer**: [Organization Truth Health Maintenance Organization](Organization-Organization-Truth-HMO.md)

**provider**: [Organization Port Harcourt Emergency Hospital](Organization-Organization-PortHarcourt-Hospital.md)

**claim**: [Claim: identifier = https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-identifier-cs#CLM-2025-0001; status = active; type = Pharmacy; use = claim; created = 2025-11-04 12:30:00+0000; priority = Normal](Claim-NgClaim-001.md)

**claimResponse**: [ClaimResponse: status = active; type = Pharmacy; use = claim; created = 2025-11-04 12:45:00+0000; outcome = complete; disposition = Approved in full.; preAuthRef = 1234](ClaimResponse-NgClaimResponse-001.md)

**outcome**: Processing Complete

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Focal** | **Coverage** | **PreAuthRef** |
| * | true | [Coverage: status = active; type = extended healthcare; subscriberId = TRUTH-HMO-CHIKA-2025; dependent = 00; relationship = Self; period = 2025-01-01 --> 2025-12-31; order = 1](Coverage-Coverage-Chika-TruthHMO.md) | PA-2025-8847 |

**benefitPeriod**: 2025-01-01 --> 2025-12-31



## Resource Content

```json
{
  "resourceType" : "ExplanationOfBenefit",
  "id" : "NgExplanationOfBenefit-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-explanation-of-benefit"]
  },
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
  "created" : "2025-11-04T12:46:00Z",
  "insurer" : {
    "reference" : "Organization/Organization-Truth-HMO"
  },
  "provider" : {
    "reference" : "Organization/Organization-PortHarcourt-Hospital"
  },
  "claim" : {
    "reference" : "Claim/NgClaim-001"
  },
  "claimResponse" : {
    "reference" : "ClaimResponse/NgClaimResponse-001"
  },
  "outcome" : "complete",
  "insurance" : [{
    "focal" : true,
    "coverage" : {
      "reference" : "Coverage/Coverage-Chika-TruthHMO"
    },
    "preAuthRef" : ["PA-2025-8847"]
  }],
  "benefitPeriod" : {
    "start" : "2025-01-01",
    "end" : "2025-12-31"
  }
}

```
