# Nigeria Immunization Alert Flag Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Immunization Alert Flag Example**

## Example Flag: Nigeria Immunization Alert Flag Example

Profile: [NG Alert Flag](StructureDefinition-ng-flag.md)

**status**: Active

**category**: Immunization alert

**code**: Pentavalent vaccine dose 3 is overdue

**subject**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**period**: 2026-08-03 08:30:00+0100 --> (ongoing)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-11-04 12:15:00+0000 --> 2025-11-04 12:25:00+0000](Encounter-NgEncounter-002.md)

**author**: [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md)



## Resource Content

```json
{
  "resourceType" : "Flag",
  "id" : "NgFlag-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-flag"]
  },
  "status" : "active",
  "category" : [{
    "text" : "Immunization alert"
  }],
  "code" : {
    "text" : "Pentavalent vaccine dose 3 is overdue"
  },
  "subject" : {
    "reference" : "Patient/NgPatient-002"
  },
  "period" : {
    "start" : "2026-08-03T08:30:00+01:00"
  },
  "encounter" : {
    "reference" : "Encounter/NgEncounter-002"
  },
  "author" : {
    "reference" : "Practitioner/NgPractitioner-002"
  }
}

```
