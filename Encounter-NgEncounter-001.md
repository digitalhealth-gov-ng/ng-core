# Example Ng Encounter (MNCH ANC) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Encounter (MNCH ANC)**

## Example Encounter: Example Ng Encounter (MNCH ANC)

Profile: [NG Encounter](StructureDefinition-ng-encounter.md)

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**subject**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

### Participants

| | |
| :--- | :--- |
| - | **Individual** |
| * | [Practitioner Kehinde Adebayo ](Practitioner-NgPractitioner-001.md) |

**period**: 2025-11-04 09:00:00+0000 --> 2025-11-04 09:35:00+0000

### Locations

| | |
| :--- | :--- |
| - | **Location** |
| * | [Location Pharmacy Counter](Location-NgLocation-002.md) |

**serviceProvider**: [Organization Gwagwalada Model PHC](Organization-NgOrganization-003.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "NgEncounter-001",
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
    "reference" : "Patient/NgPatient-001"
  },
  "participant" : [{
    "individual" : {
      "reference" : "Practitioner/NgPractitioner-001"
    }
  }],
  "period" : {
    "start" : "2025-11-04T09:00:00Z",
    "end" : "2025-11-04T09:35:00Z"
  },
  "location" : [{
    "location" : {
      "reference" : "Location/NgLocation-002"
    }
  }],
  "serviceProvider" : {
    "reference" : "Organization/NgOrganization-003"
  }
}

```
