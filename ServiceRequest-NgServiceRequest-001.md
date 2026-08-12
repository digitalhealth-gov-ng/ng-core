# Nigeria ANC Referral Service Request Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria ANC Referral Service Request Example**

## Example ServiceRequest: Nigeria ANC Referral Service Request Example

Profile: [NG ServiceRequest](StructureDefinition-ng-service-request.md)

**status**: Active

**intent**: Order

**category**: Maternal health referral

**priority**: Urgent

**code**: Specialist obstetric assessment

**subject**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-11-04 12:15:00+0000 --> 2025-11-04 12:25:00+0000](Encounter-NgEncounter-002.md)

**occurrence**: 2026-08-03 12:00:00+0100

**authoredOn**: 2026-08-03 09:30:00+0100

**requester**: [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md)

**performerType**: Obstetric care provider

**performer**: [Organization Akure Central Hospital](Organization-NgProviderOrganization-001.md)

**reasonCode**: Elevated blood pressure detected during antenatal care

**reasonReference**: [Observation Client registration observation summary](Observation-NgObservation-001.md)

**supportingInfo**: [DocumentReference: status = current; docStatus = final; type = Appends; category = ; date = 2026-08-03 07:30:00+0100](DocumentReference-NgDocuments-001.md)

**note**: 

> 

Please assess the patient for a possible hypertensive disorder of pregnancy and provide appropriate specialist management.




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "NgServiceRequest-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-service-request"]
  },
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "text" : "Maternal health referral"
  }],
  "priority" : "urgent",
  "code" : {
    "text" : "Specialist obstetric assessment"
  },
  "subject" : {
    "reference" : "Patient/NgPatient-002"
  },
  "encounter" : {
    "reference" : "Encounter/NgEncounter-002"
  },
  "occurrenceDateTime" : "2026-08-03T12:00:00+01:00",
  "authoredOn" : "2026-08-03T09:30:00+01:00",
  "requester" : {
    "reference" : "Practitioner/NgPractitioner-002"
  },
  "performerType" : {
    "text" : "Obstetric care provider"
  },
  "performer" : [{
    "reference" : "Organization/NgProviderOrganization-001"
  }],
  "reasonCode" : [{
    "text" : "Elevated blood pressure detected during antenatal care"
  }],
  "reasonReference" : [{
    "reference" : "Observation/NgObservation-001"
  }],
  "supportingInfo" : [{
    "reference" : "DocumentReference/NgDocuments-001"
  }],
  "note" : [{
    "text" : "Please assess the patient for a possible hypertensive disorder of pregnancy\nand provide appropriate specialist management."
  }]
}

```
