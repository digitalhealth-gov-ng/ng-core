# Eligibility Response - X-ray Pre-Auth Approved - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Eligibility Response - X-ray Pre-Auth Approved**

## Example CoverageEligibilityResponse: Eligibility Response - X-ray Pre-Auth Approved

Profile: [NG Claim Coverage Eligibility Response](StructureDefinition-ng-coverage-eligibility-response.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-eligibility-request-id-cs`/ELAPPROVE02

**status**: Active

**purpose**: Coverage Validation

**patient**: [Chika Okafor](Patient-Patient-Chika-Okafor.md)

**created**: 2025-11-07 00:09:00+0100

**requestor**: [Port Harcourt Emergency Hospital](Organization-Organization-PortHarcourt-Hospital.md)

**request**: [CoverageEligibilityRequest: identifier = https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-eligibility-request-id-cs#ELAPPROVE01; status = active; purpose = validation; created = 2025-11-06 23:47:00+0100](CoverageEligibilityRequest-NgCoverageEligibilityRequest-ChikaEmergency.md)

**outcome**: Processing Complete

**disposition**: Pre-authorization APPROVED. Approved amount: ₦15,000. Patient copay: ₦1,500. Authorization code: PA-2025-8847. Valid until: 10-Nov-2025.

**insurer**: [Truth HMO](Organization-Organization-Truth-HMO.md)

> **insurance****coverage**: [Truth HMO Policy - Chika Okafor](Coverage-Coverage-Chika-TruthHMO.md)**inforce**: true
> **item****productOrService**: Ankle X-ray - Right ankle sprain (ICD-10: S93.4)**description**: Pre-authorization approved for emergency ankle X-ray. Valid until 10-Nov-2025.
> **benefit****type**: Benefit**allowed**: NGN15,000.00 (NGN)**used**: NGN0.00 (NGN)

> **benefit****type**: Copayment per service**allowed**: NGN1,500.00 (NGN)

> **benefit****type**: HMO Coverage Amount**allowed**: NGN13,500.00 (NGN)
**authorizationRequired**: true**authorizationSupporting**: Emergency presentation with suspected fracture

**preAuthRef**: PA-2025-8847



## Resource Content

```json
{
  "resourceType" : "CoverageEligibilityResponse",
  "id" : "NgCoverageEligibilityResponse-ChikaXrayApproved",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-coverage-eligibility-response"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-eligibility-request-id-cs",
    "value" : "ELAPPROVE02"
  }],
  "status" : "active",
  "purpose" : ["validation"],
  "patient" : {
    "reference" : "Patient/Patient-Chika-Okafor",
    "display" : "Chika Okafor"
  },
  "created" : "2025-11-07T00:09:00+01:00",
  "requestor" : {
    "reference" : "Organization/Organization-PortHarcourt-Hospital",
    "display" : "Port Harcourt Emergency Hospital"
  },
  "request" : {
    "reference" : "CoverageEligibilityRequest/NgCoverageEligibilityRequest-ChikaEmergency"
  },
  "outcome" : "complete",
  "disposition" : "Pre-authorization APPROVED. Approved amount: ₦15,000. Patient copay: ₦1,500. Authorization code: PA-2025-8847. Valid until: 10-Nov-2025.",
  "insurer" : {
    "reference" : "Organization/Organization-Truth-HMO",
    "display" : "Truth HMO"
  },
  "insurance" : [{
    "coverage" : {
      "reference" : "Coverage/Coverage-Chika-TruthHMO",
      "display" : "Truth HMO Policy - Chika Okafor"
    },
    "inforce" : true,
    "item" : [{
      "productOrService" : {
        "coding" : [{
          "system" : "http://www.ama-assn.org/go/cpt",
          "code" : "73610",
          "display" : "Radiologic examination, ankle; complete, minimum of 3 views"
        }],
        "text" : "Ankle X-ray - Right ankle sprain (ICD-10: S93.4)"
      },
      "description" : "Pre-authorization approved for emergency ankle X-ray. Valid until 10-Nov-2025.",
      "benefit" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/benefit-type",
            "code" : "benefit",
            "display" : "Benefit"
          }]
        },
        "allowedMoney" : {
          "value" : 15000,
          "currency" : "NGN"
        },
        "usedMoney" : {
          "value" : 0,
          "currency" : "NGN"
        }
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/benefit-type",
            "code" : "copay",
            "display" : "Copayment per service"
          }]
        },
        "allowedMoney" : {
          "value" : 1500,
          "currency" : "NGN"
        }
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/benefit-type",
            "code" : "room",
            "display" : "Room"
          }],
          "text" : "HMO Coverage Amount"
        },
        "allowedMoney" : {
          "value" : 13500,
          "currency" : "NGN"
        }
      }],
      "authorizationRequired" : true,
      "authorizationSupporting" : [{
        "text" : "Emergency presentation with suspected fracture"
      }]
    }]
  }],
  "preAuthRef" : "PA-2025-8847"
}

```
