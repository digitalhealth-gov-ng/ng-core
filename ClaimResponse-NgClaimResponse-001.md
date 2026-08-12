# Example Ng ClaimResponse (Approved) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng ClaimResponse (Approved)**

## Example ClaimResponse: Example Ng ClaimResponse (Approved)

Profile: [NG ClaimResponse](StructureDefinition-ng-claim-response.md)

**status**: Active

**type**: Pharmacy

**use**: Claim

**patient**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**created**: 2025-11-04 12:45:00+0000

**insurer**: [Organization Truth Health Maintenance Organization](Organization-Organization-Truth-HMO.md)

**request**: [Claim: identifier = https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-identifier-cs#CLM-2025-0001; status = active; type = Pharmacy; use = claim; created = 2025-11-04 12:30:00+0000; priority = Normal](Claim-NgClaim-001.md)

**outcome**: Processing Complete

**disposition**: Approved in full.

**preAuthRef**: 1234



## Resource Content

```json
{
  "resourceType" : "ClaimResponse",
  "id" : "NgClaimResponse-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-claim-response"]
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
  "created" : "2025-11-04T12:45:00Z",
  "insurer" : {
    "reference" : "Organization/Organization-Truth-HMO"
  },
  "request" : {
    "reference" : "Claim/NgClaim-001"
  },
  "outcome" : "complete",
  "disposition" : "Approved in full.",
  "preAuthRef" : "1234"
}

```
