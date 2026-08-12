# Nigeria Referral Task Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Referral Task Example**

## Example Task: Nigeria Referral Task Example

Profile: [NG Task](StructureDefinition-ng-task.md)

**status**: Requested

**intent**: order

**priority**: Urgent

**code**: Process antenatal referral

**focus**: [ServiceRequest ](ServiceRequest-NgServiceRequest-001.md)

**for**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**authoredOn**: 2026-08-03 09:35:00+0100

**lastModified**: 2026-08-03 09:40:00+0100

**requester**: [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md)

**owner**: [Organization Akure Central Hospital](Organization-NgProviderOrganization-001.md)

**reasonCode**: Urgent specialist assessment requested for elevated blood pressure

**note**: 

> 

Review the referral request, confirm acceptance, and arrange specialist obstetric assessment for the patient.


### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Referral document | [DocumentReference: status = current; docStatus = final; type = Appends; category = ; date = 2026-08-03 07:30:00+0100](DocumentReference-NgDocuments-001.md) |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "NgTask-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-task"]
  },
  "status" : "requested",
  "intent" : "order",
  "priority" : "urgent",
  "code" : {
    "text" : "Process antenatal referral"
  },
  "focus" : {
    "reference" : "ServiceRequest/NgServiceRequest-001"
  },
  "for" : {
    "reference" : "Patient/NgPatient-002"
  },
  "authoredOn" : "2026-08-03T09:35:00+01:00",
  "lastModified" : "2026-08-03T09:40:00+01:00",
  "requester" : {
    "reference" : "Practitioner/NgPractitioner-002"
  },
  "owner" : {
    "reference" : "Organization/NgProviderOrganization-001"
  },
  "reasonCode" : {
    "text" : "Urgent specialist assessment requested for elevated blood pressure"
  },
  "note" : [{
    "text" : "Review the referral request, confirm acceptance, and arrange specialist\nobstetric assessment for the patient."
  }],
  "input" : [{
    "type" : {
      "text" : "Referral document"
    },
    "valueReference" : {
      "reference" : "DocumentReference/NgDocuments-001"
    }
  }]
}

```
