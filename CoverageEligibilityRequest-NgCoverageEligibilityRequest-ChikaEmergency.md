# Eligibility Request - Chika Emergency Ankle Injury - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Eligibility Request - Chika Emergency Ankle Injury**

## Example CoverageEligibilityRequest: Eligibility Request - Chika Emergency Ankle Injury

Profile: [NG Claim Coverage Eligibility Request](StructureDefinition-ng-coverage-eligibility-request.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-eligibility-request-id-cs`/ELAPPROVE01

**status**: Active

**purpose**: Coverage Validation

**patient**: [Chika Okafor](Patient-Patient-Chika-Okafor.md)

**created**: 2025-11-06 23:47:00+0100

**provider**: [Port Harcourt Emergency Hospital](Organization-Organization-PortHarcourt-Hospital.md)

**insurer**: [Truth HMO](Organization-Organization-Truth-HMO.md)



## Resource Content

```json
{
  "resourceType" : "CoverageEligibilityRequest",
  "id" : "NgCoverageEligibilityRequest-ChikaEmergency",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-coverage-eligibility-request"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-eligibility-request-id-cs",
    "value" : "ELAPPROVE01"
  }],
  "status" : "active",
  "purpose" : ["validation"],
  "patient" : {
    "reference" : "Patient/Patient-Chika-Okafor",
    "display" : "Chika Okafor"
  },
  "created" : "2025-11-06T23:47:00+01:00",
  "provider" : {
    "reference" : "Organization/Organization-PortHarcourt-Hospital",
    "display" : "Port Harcourt Emergency Hospital"
  },
  "insurer" : {
    "reference" : "Organization/Organization-Truth-HMO",
    "display" : "Truth HMO"
  }
}

```
