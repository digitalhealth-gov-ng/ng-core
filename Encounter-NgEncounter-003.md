# Example Ng Encounter (Immunization Visit) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Encounter (Immunization Visit)**

## Example Encounter: Example Ng Encounter (Immunization Visit)

Profile: [NG Encounter](StructureDefinition-ng-encounter.md)

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**subject**: [Suleiman Bala Male, DoB: 2019-09-05 ( birthcert)](Patient-NgPatient-003.md)

### Participants

| | |
| :--- | :--- |
| - | **Individual** |
| * | [Practitioner Hauwa Garba ](Practitioner-NgPractitioner-003.md) |

**period**: 2025-11-04 10:05:00+0000 --> 2025-11-04 10:20:00+0000

### Locations

| | |
| :--- | :--- |
| - | **Location** |
| * | [Location Pharmacy Counter](Location-NgLocation-002.md) |

**serviceProvider**: [Organization Asokoro District Hospital](Organization-NgOrganization-001.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "NgEncounter-003",
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
    "reference" : "Patient/NgPatient-003"
  },
  "participant" : [{
    "individual" : {
      "reference" : "Practitioner/NgPractitioner-003"
    }
  }],
  "period" : {
    "start" : "2025-11-04T10:05:00Z",
    "end" : "2025-11-04T10:20:00Z"
  },
  "location" : [{
    "location" : {
      "reference" : "Location/NgLocation-002"
    }
  }],
  "serviceProvider" : {
    "reference" : "Organization/NgOrganization-001"
  }
}

```
