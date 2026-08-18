# NG Facility Type CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Facility Type CS**

## CodeSystem: NG Facility Type CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgFacilityTypeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.16 | |

 
A standardized classification system used to describe the type or level of health facility within a healthcare delivery system, based on the scope of services provided, staffing, infrastructure, and administrative role. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HealthFacility Type VS](ValueSet-ng-facility-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-facility-type-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-facility-type-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.16"
  }],
  "version" : "0.0.0",
  "name" : "NgFacilityTypeCS",
  "title" : "NG Facility Type CS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T06:18:50+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "A standardized classification system used to describe the type or level of health facility within a healthcare delivery system, based on the scope of services provided, staffing, infrastructure, and administrative role.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "outreach",
    "display" : "Outreach Post",
    "definition" : "A temporary or mobile health service site established to deliver essential healthcare to underserved or remote populations."
  },
  {
    "code" : "phc-center-l1",
    "display" : "PHC Center Level 1",
    "definition" : "A basic primary healthcare facility providing preventive and promotive services, often staffed by community health workers."
  },
  {
    "code" : "phc-center-l2",
    "display" : "PHC Center Level 2",
    "definition" : "A primary healthcare facility with limited diagnostic and treatment services, typically staffed by nurses, CHEWs, or junior medical personnel."
  },
  {
    "code" : "phc-center-l3",
    "display" : "PHC Center Level 3",
    "definition" : "An advanced primary healthcare facility offering comprehensive outpatient care, minor/light procedures, and referral support, often with a resident medical officer."
  },
  {
    "code" : "hospital",
    "display" : "Secondary Hospital",
    "definition" : "A referral facility providing specialized care, inpatient services, and emergency response, staffed by medical officers and specialists."
  },
  {
    "code" : "tertiary",
    "display" : "Tertiary Facility",
    "definition" : "A highly specialized hospital offering advanced diagnostic, therapeutic, and surgical care, often affiliated with teaching or research institutions."
  }]
}

```
