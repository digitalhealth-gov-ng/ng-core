# Example Ng Encounter (ePharmacy Dispense) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Encounter (ePharmacy Dispense)**

## Example Encounter: Example Ng Encounter (ePharmacy Dispense)

Profile: [NG Encounter](StructureDefinition-ng-encounter.md)

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**subject**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

### Participants

| | |
| :--- | :--- |
| - | **Individual** |
| * | [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md) |

**period**: 2025-11-04 12:15:00+0000 --> 2025-11-04 12:25:00+0000

### Locations

| | |
| :--- | :--- |
| - | **Location** |
| * | [Location Immunization Room](Location-NgLocation-003.md) |

**serviceProvider**: [Organization Kano Central Hospital Pharmacy](Organization-NgOrganization-002.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "NgEncounter-002",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-encounter"]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "subject" : {
    "reference" : "Patient/NgPatient-002"
  },
  "participant" : [{
    "individual" : {
      "reference" : "Practitioner/NgPractitioner-002"
    }
  }],
  "period" : {
    "start" : "2025-11-04T12:15:00Z",
    "end" : "2025-11-04T12:25:00Z"
  },
  "location" : [{
    "location" : {
      "reference" : "Location/NgLocation-003"
    }
  }],
  "serviceProvider" : {
    "reference" : "Organization/NgOrganization-002"
  }
}

```
