# Booked Appointment – Immunization Slot - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Booked Appointment – Immunization Slot**

## Example Appointment: Booked Appointment – Immunization Slot

Profile: [NG Appointment](StructureDefinition-ng-appointment.md)

**status**: Proposed

**description**: Child immunization visit (MCV1)

> **participant****actor**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)**status**: Accepted

> **participant****actor**: [Practitioner Kehinde Adebayo ](Practitioner-NgPractitioner-001.md)**status**: Accepted



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "NgAppointment-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-appointment"]
  },
  "status" : "proposed",
  "description" : "Child immunization visit (MCV1)",
  "participant" : [{
    "actor" : {
      "reference" : "Patient/NgPatient-001"
    },
    "status" : "accepted"
  },
  {
    "actor" : {
      "reference" : "Practitioner/NgPractitioner-001"
    },
    "status" : "accepted"
  }]
}

```
