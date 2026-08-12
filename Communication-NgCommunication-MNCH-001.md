# MNCH Referral Update Message - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MNCH Referral Update Message**

## Example Communication: MNCH Referral Update Message

Profile: [NG Communication](StructureDefinition-ng-communication.md)

**status**: Completed

**subject**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

**sent**: 2025-11-12 09:05:00+0100

**recipient**: 

* [Organization Asokoro District Hospital](Organization-NgOrganization-001.md)
* [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md)

**sender**: [Practitioner Kehinde Adebayo ](Practitioner-NgPractitioner-001.md)

### Payloads

| | |
| :--- | :--- |
| - | **Content[x]** |
| * | Patient is stable; EDD ~ 4 weeks. Please prepare ANC slot this morning. |



## Resource Content

```json
{
  "resourceType" : "Communication",
  "id" : "NgCommunication-MNCH-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-communication"]
  },
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/NgPatient-001"
  },
  "sent" : "2025-11-12T09:05:00+01:00",
  "recipient" : [{
    "reference" : "Organization/NgOrganization-001"
  },
  {
    "reference" : "Practitioner/NgPractitioner-002"
  }],
  "sender" : {
    "reference" : "Practitioner/NgPractitioner-001"
  },
  "payload" : [{
    "contentString" : "Patient is stable; EDD ~ 4 weeks. Please prepare ANC slot this morning."
  }]
}

```
