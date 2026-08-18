# NG Location - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Location**

## Resource Profile: NG Location 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-location | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgLocation |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.40 | |

 
A profile for immunization service locations, including health facilities, outreach sites, and mobile vaccination units. 

**Usages:**

* Use this Profile: [Bundle NG AEFI Report](StructureDefinition-ng-aefi-report-bundle.md) and [Bundle NG Immunization SMART Scheduler](StructureDefinition-ng-imm-smart-scheduler-bundle.md)
* Refer to this Profile: [NG Device](StructureDefinition-ng-device.md), [NG Encounter](StructureDefinition-ng-encounter.md), [NG HealthcareService](StructureDefinition-ng-healthcare-service.md), [NG Immunization](StructureDefinition-ng-immunization.md)... Show 3 more, [NG Location](StructureDefinition-ng-location.md), [NG PractitionerRole](StructureDefinition-ng-practitioner-role.md) and [NG Procedure](StructureDefinition-ng-procedure.md)
* Examples for this Profile: [Asokoro OPD](Location-NgLocation-001.md), [Pharmacy Counter](Location-NgLocation-002.md), [Immunization Room](Location-NgLocation-003.md) and [Gurdi Outreach Site](Location-NgLocation-004.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core General Hospital Registry Service Capability](CapabilityStatement-NgGeneralHospitalRegistryCapability.md), [Nigeria Core General Hospital Requestor Capability](CapabilityStatement-NgGeneralHospitalRequestorCapability.md), [Nigeria Core General Hospital Responder Capability](CapabilityStatement-NgGeneralHospitalResponderCapability.md)... Show 6 more, [Nigeria Core PHC Registry Service Capability](CapabilityStatement-NgPHCRegistryCapability.md), [Nigeria Core PHC Requestor Capability](CapabilityStatement-NgPHCRequestorCapability.md), [Nigeria Core PHC Responder Capability](CapabilityStatement-NgPHCResponderCapability.md), [Nigeria Core Tertiary Referral Registry Service Capability](CapabilityStatement-NgTertiaryRegistryCapability.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-location.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-location.csv), [Excel](StructureDefinition-ng-location.xlsx), [Schematron](StructureDefinition-ng-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-location",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-location",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.40"
  }],
  "version" : "0.0.0",
  "name" : "NgLocation",
  "title" : "NG Location",
  "status" : "active",
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "A profile for immunization service locations, including health facilities, outreach sites, and mobile vaccination units.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location.type",
      "path" : "Location.type",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-facility-type-vs"
      }
    },
    {
      "id" : "Location.telecom",
      "path" : "Location.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Location.address",
      "path" : "Location.address",
      "mustSupport" : true
    },
    {
      "id" : "Location.address.extension:administrativeWard",
      "path" : "Location.address.extension",
      "sliceName" : "administrativeWard",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-administrative-ward"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.address.line",
      "path" : "Location.address.line",
      "short" : "The line address of the health Location",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Location.address.city",
      "path" : "Location.address.city",
      "short" : "The city, town or settlement where the health location"
    },
    {
      "id" : "Location.address.district",
      "path" : "Location.address.district",
      "short" : "The LGA where the health location",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
      }
    },
    {
      "id" : "Location.address.state",
      "path" : "Location.address.state",
      "short" : "The State in Nigeria where the location",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
      }
    },
    {
      "id" : "Location.address.country",
      "path" : "Location.address.country",
      "fixedString" : "NG"
    },
    {
      "id" : "Location.position.longitude",
      "path" : "Location.position.longitude",
      "mustSupport" : true
    },
    {
      "id" : "Location.position.latitude",
      "path" : "Location.position.latitude",
      "mustSupport" : true
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "short" : "Organization responsible for provisioning and upkeep of the location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "Location.partOf",
      "path" : "Location.partOf",
      "short" : "Another location this organization is physically part of",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-location"]
      }]
    }]
  }
}

```
