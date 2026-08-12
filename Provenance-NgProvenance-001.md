# Nigeria Lightweight Provenance Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Lightweight Provenance Example**

## Example Provenance: Nigeria Lightweight Provenance Example

Profile: [NG Lightweight Provenance](StructureDefinition-ng-provenance.md)

Provenance for [MedicationRequest: status = active; intent = order; category = Outpatient; reported[x] = false; medication[x] = ->Medication ; authoredOn = 2026-08-03 09:00:00+0100; reasonCode = ; note = Review the patient if symptoms persist after five days.](MedicationRequest-NgMedicationRequest-001.md)

Summary

| | |
| :--- | :--- |
| Recorded | 2026-08-03 09:00:00+0100 |
| Activity | create |

**Agents**

* **Type**: Author
  * **who**: [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md)
  * **On Behalf Of**: [Organization Akure Central Hospital](Organization-NgProviderOrganization-001.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "NgProvenance-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-provenance"]
  },
  "target" : [{
    "reference" : "MedicationRequest/NgMedicationRequest-001"
  }],
  "recorded" : "2026-08-03T09:00:00+01:00",
  "reason" : [{
    "text" : "Created during an outpatient clinical encounter"
  }],
  "activity" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-DataOperation",
      "code" : "CREATE",
      "display" : "create"
    }]
  },
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code" : "author",
        "display" : "Author"
      }]
    },
    "who" : {
      "reference" : "Practitioner/NgPractitioner-002"
    },
    "onBehalfOf" : {
      "reference" : "Organization/NgProviderOrganization-001"
    }
  }]
}

```
