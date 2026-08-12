# Example NG HealthcareService - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example NG HealthcareService**

## Example HealthcareService: Example NG HealthcareService

Profile: [NG HealthcareService](StructureDefinition-ng-healthcare-service.md)

**active**: true

**providedBy**: [Organization Asokoro District Hospital](Organization-NgOrganization-001.md)

**category**: Maternal health

**type**: Antenatal care

**location**: [Location Asokoro OPD](Location-NgLocation-001.md)

**name**: Asokoro District Hospital ANC Clinic

**telecom**: [+234-800-123-4567](tel:+234-800-123-4567)

**appointmentRequired**: true

> **availableTime****daysOfWeek**: Monday, Wednesday**availableStartTime**: 08:00:00**availableEndTime**: 16:00:00



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "NgHealthcareService-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-healthcare-service"]
  },
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/NgOrganization-001"
  },
  "category" : [{
    "text" : "Maternal health"
  }],
  "type" : [{
    "text" : "Antenatal care"
  }],
  "location" : [{
    "reference" : "Location/NgLocation-001"
  }],
  "name" : "Asokoro District Hospital ANC Clinic",
  "telecom" : [{
    "system" : "phone",
    "value" : "+234-800-123-4567"
  }],
  "appointmentRequired" : true,
  "availableTime" : [{
    "daysOfWeek" : ["mon", "wed"],
    "availableStartTime" : "08:00:00",
    "availableEndTime" : "16:00:00"
  }]
}

```
