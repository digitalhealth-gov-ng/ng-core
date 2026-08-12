# NG Organization - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Organization**

## Resource Profile: NG Organization 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization | *Version*:0.0.0 |
| Draft as of 2026-08-12 | *Computable Name*:NgOrganization |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.58 | |

 
An organization profile representing healthcare facilities responsible for health services or other types of organizations. 

**Usages:**

* Derived from this Profile: [NG Insurer Organization](StructureDefinition-ng-insurer-organization.md), [NG Pharmacy Organization](StructureDefinition-ng-pharmacy-organization.md) and [NG Provider Organization](StructureDefinition-ng-provider-organization.md)
* Use this Profile: [4-NG AEFI Report Bundle](StructureDefinition-ng-aefi-report-bundle.md), [4-NG Immunization SMART Scheduler Bundle](StructureDefinition-ng-imm-smart-scheduler-bundle.md) and [Bundle (IPS)](StructureDefinition-ng-ips-bundle.md)
* Refer to this Profile: [NG HIV National ART Register](StructureDefinition-NgHivArtRegister.md), [NG HIV Enhanced Adherence Counselling Monitoring Register](StructureDefinition-NgHivEacRegister.md), [NG HIV Integrated Laboratory Monitoring Register](StructureDefinition-NgHivIntLabMonitoringRegister.md), [NG HIV Pharmacy Daily Worksheet](StructureDefinition-NgHivPharmacyDailyWorksheet.md)... Show 24 more, [NG HIV Tracking Register](StructureDefinition-NgHivTrackingRegister.md), [NG ClaimResponse](StructureDefinition-ng-claim-response.md), [NG Claim](StructureDefinition-ng-claim.md), [NG Communication](StructureDefinition-ng-communication.md), [NG Claim Coverage](StructureDefinition-ng-coverage.md), [NG DeviceRequest](StructureDefinition-ng-device-request.md), [NG Device](StructureDefinition-ng-device.md), [DiagnosticReport (IPS)](StructureDefinition-ng-diagnostic-report.md), [Nigeria Document Reference](StructureDefinition-ng-documents.md), [NG Encounter](StructureDefinition-ng-encounter.md), [Nigeria Alert Flag](StructureDefinition-ng-flag.md), [NG HealthcareService](StructureDefinition-ng-healthcare-service.md), [NG Immunization](StructureDefinition-ng-immunization.md), [NG Invoice](StructureDefinition-ng-invoice.md), [NG Location](StructureDefinition-ng-location.md), [Nigeria Medication Statement](StructureDefinition-ng-medication-statement.md), [Nigeria Core Laboratory or Pathology Result Observation](StructureDefinition-ng-observation-results-laboratory-pathology.md), [NG Organization](StructureDefinition-ng-organization.md), [NG PractitionerRole](StructureDefinition-ng-practitioner-role.md), [NG Practitioner](StructureDefinition-ng-practitioner.md), [NG Procedure](StructureDefinition-ng-procedure.md), [NG Lightweight Provenance](StructureDefinition-ng-provenance.md), [NG ServiceRequest](StructureDefinition-ng-service-request.md) and [NG Task](StructureDefinition-ng-task.md)
* Examples for this Profile: [Asokoro District Hospital](Organization-NgOrganization-001.md), [Kano Central Hospital Pharmacy](Organization-NgOrganization-002.md) and [Gwagwalada Model PHC](Organization-NgOrganization-003.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core General Hospital Registry Service Capability](CapabilityStatement-NgGeneralHospitalRegistryCapability.md), [Nigeria Core General Hospital Requestor Capability](CapabilityStatement-NgGeneralHospitalRequestorCapability.md), [Nigeria Core General Hospital Responder Capability](CapabilityStatement-NgGeneralHospitalResponderCapability.md)... Show 6 more, [Nigeria Core PHC Registry Service Capability](CapabilityStatement-NgPHCRegistryCapability.md), [Nigeria Core PHC Requestor Capability](CapabilityStatement-NgPHCRequestorCapability.md), [Nigeria Core PHC Responder Capability](CapabilityStatement-NgPHCResponderCapability.md), [Nigeria Core Tertiary Referral Registry Service Capability](CapabilityStatement-NgTertiaryRegistryCapability.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-organization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-organization.csv), [Excel](StructureDefinition-ng-organization.xlsx), [Schematron](StructureDefinition-ng-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-organization",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.58"
  }],
  "version" : "0.0.0",
  "name" : "NgOrganization",
  "title" : "NG Organization",
  "status" : "draft",
  "date" : "2026-08-12T13:22:49+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    },
    {
      "system" : "email",
      "value" : "emeka2015@gmail.com"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "lekeojewale@gmail.com",
      "use" : "work"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "emeka2015@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "An organization profile representing healthcare facilities responsible for health services or other types of organizations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization.extension",
      "path" : "Organization.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Organization.extension:NgOrganizationOwner",
      "path" : "Organization.extension",
      "sliceName" : "NgOrganizationOwner",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization-owner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier.system",
      "path" : "Organization.identifier.system",
      "short" : "The facility type regulator or identifity provider if not health facility (E.g. HERFAMA in Lagos State)",
      "min" : 1
    },
    {
      "id" : "Organization.identifier.value",
      "path" : "Organization.identifier.value",
      "short" : "The facility or organization uniqe identifier",
      "min" : 1
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "short" : "Boolean to indicate if institution is active or inactive",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "short" : "The type of the organization or health facility",
      "mustSupport" : true
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "The name of the organization or health facility",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom.system",
      "path" : "Organization.telecom.system",
      "short" : "The organization type of contact detail"
    },
    {
      "id" : "Organization.telecom.value",
      "path" : "Organization.telecom.value",
      "short" : "The organization contact detail"
    },
    {
      "id" : "Organization.telecom.use",
      "path" : "Organization.telecom.use",
      "max" : "0"
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address.line",
      "path" : "Organization.address.line",
      "short" : "The organization contact address line"
    },
    {
      "id" : "Organization.address.city",
      "path" : "Organization.address.city",
      "short" : "The organization contact address city, town or settlement"
    },
    {
      "id" : "Organization.address.district",
      "path" : "Organization.address.district",
      "short" : "The organization contact address LGA",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
      }
    },
    {
      "id" : "Organization.address.state",
      "path" : "Organization.address.state",
      "short" : "The organization contact address state",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
      }
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "short" : "The Organization which this organization forms a part",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    }]
  }
}

```
