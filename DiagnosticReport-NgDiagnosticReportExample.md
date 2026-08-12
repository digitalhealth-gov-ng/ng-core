# Nigeria Diagnostic Report Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Diagnostic Report Example**

## Example DiagnosticReport: Nigeria Diagnostic Report Example

Profile: [DiagnosticReport (IPS)](StructureDefinition-ng-diagnostic-report.md)

## Full blood count 

| | |
| :--- | :--- |
| Subject | Kemi Adebayo Female, DoB: 1995-02-14 ( nin) |
| Relevant Time | 2026-08-02 09:30:00+0100 |
| Reported | 2026-08-02 11:00:00+0100 |
| Performer | [Organization Kano Central Hospital Pharmacy](Organization-NgOrganization-002.md) |

**Report Details**

* **Code**: [XR Chest 2 Views](Observation-NgObservationResultsRadiologyExample.md)
  * **Value**: No focal pulmonary opacity, pleural effusion, or pneumothorax is seen.
  * **Flags**: Final
  * **Relevant Time**: 2026-08-02 11:15:00+0100



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "NgDiagnosticReportExample",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-diagnostic-report"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "58410-2"
    }],
    "text" : "Full blood count"
  },
  "subject" : {
    "reference" : "Patient/NgPatient-001"
  },
  "effectiveDateTime" : "2026-08-02T09:30:00+01:00",
  "issued" : "2026-08-02T11:00:00+01:00",
  "performer" : [{
    "reference" : "Organization/NgOrganization-002"
  }],
  "result" : [{
    "reference" : "Observation/NgObservationResultsRadiologyExample"
  }]
}

```
