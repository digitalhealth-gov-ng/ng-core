# Eligibility Response - Chika Coverage Confirmed - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Eligibility Response - Chika Coverage Confirmed**

## Example CoverageEligibilityResponse: Eligibility Response - Chika Coverage Confirmed

Profile: [NG Claim Coverage Eligibility Response](StructureDefinition-ng-coverage-eligibility-response.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-eligibility-request-id-cs`/ELAPPROVE01

**status**: Active

**purpose**: Coverage benefits

**patient**: [Chika Okafor](Patient-Patient-Chika-Okafor.md)

**created**: 2025-11-06 23:47:03+0100

**requestor**: [Port Harcourt Emergency Hospital](Organization-Organization-PortHarcourt-Hospital.md)

**request**: [CoverageEligibilityRequest: identifier = https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-eligibility-request-id-cs#ELAPPROVE01; status = active; purpose = validation; created = 2025-11-06 23:47:00+0100](CoverageEligibilityRequest-NgCoverageEligibilityRequest-ChikaEmergency.md)

**outcome**: Processing Complete

**insurer**: [Truth HMO](Organization-Organization-Truth-HMO.md)



## Resource Content

```json
{
  "resourceType" : "CoverageEligibilityResponse",
  "id" : "NgCoverageEligibilityResponse-ChikaEmergency",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-coverage-eligibility-response"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-eligibility-request-id-cs",
    "value" : "ELAPPROVE01"
  }],
  "status" : "active",
  "purpose" : ["benefits"],
  "patient" : {
    "reference" : "Patient/Patient-Chika-Okafor",
    "display" : "Chika Okafor"
  },
  "created" : "2025-11-06T23:47:03+01:00",
  "requestor" : {
    "reference" : "Organization/Organization-PortHarcourt-Hospital",
    "display" : "Port Harcourt Emergency Hospital"
  },
  "request" : {
    "reference" : "CoverageEligibilityRequest/NgCoverageEligibilityRequest-ChikaEmergency"
  },
  "outcome" : "complete",
  "insurer" : {
    "reference" : "Organization/Organization-Truth-HMO",
    "display" : "Truth HMO"
  }
}

```
