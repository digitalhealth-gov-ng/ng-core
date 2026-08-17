# NG PractitionerRole - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG PractitionerRole**

## Resource Profile: NG PractitionerRole 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgPractitionerRole |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.61 | |

 
Defines the role(s) of a Nigerian healthcare practitioner context. Links a Practitioner to an Organization, specifies their role. 

**Usages:**

* Use this Profile: [Bundle NG (IPS)](StructureDefinition-ng-ips-bundle.md)
* Refer to this Profile: [Ng Appointment](StructureDefinition-ng-appointment.md), [NG Condition](StructureDefinition-ng-condition.md), [NG DeviceRequest](StructureDefinition-ng-device-request.md), [DiagnosticReport (IPS)](StructureDefinition-ng-diagnostic-report.md)... Show 8 more, [Nigeria Document Reference](StructureDefinition-ng-documents.md), [NG Alert Flag](StructureDefinition-ng-flag.md), [NG MedicationDispense](StructureDefinition-ng-medication-dispense.md), [Nigeria Medication Statement](StructureDefinition-ng-medication-statement.md), [NG Laboratory or Pathology Result Observation](StructureDefinition-ng-observation-results-laboratory-pathology.md), [NG Procedure](StructureDefinition-ng-procedure.md), [NG Lightweight Provenance](StructureDefinition-ng-provenance.md) and [NG Task](StructureDefinition-ng-task.md)
* Examples for this Profile: [PractitionerRole/NgPractitionerRole-001](PractitionerRole-NgPractitionerRole-001.md), [PractitionerRole/NgPractitionerRole-002](PractitionerRole-NgPractitionerRole-002.md) and [PractitionerRole/NgPractitionerRole-003](PractitionerRole-NgPractitionerRole-003.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core General Hospital Registry Service Capability](CapabilityStatement-NgGeneralHospitalRegistryCapability.md), [Nigeria Core General Hospital Requestor Capability](CapabilityStatement-NgGeneralHospitalRequestorCapability.md), [Nigeria Core General Hospital Responder Capability](CapabilityStatement-NgGeneralHospitalResponderCapability.md)... Show 5 more, [Nigeria Core PHC Requestor Capability](CapabilityStatement-NgPHCRequestorCapability.md), [Nigeria Core PHC Responder Capability](CapabilityStatement-NgPHCResponderCapability.md), [Nigeria Core Tertiary Referral Registry Service Capability](CapabilityStatement-NgTertiaryRegistryCapability.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-practitioner-role.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-practitioner-role.csv), [Excel](StructureDefinition-ng-practitioner-role.xlsx), [Schematron](StructureDefinition-ng-practitioner-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-practitioner-role",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.61"
  }],
  "version" : "0.0.0",
  "name" : "NgPractitionerRole",
  "title" : "NG PractitionerRole",
  "status" : "draft",
  "date" : "2026-08-17T07:55:48+01:00",
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
  "description" : "Defines the role(s) of a Nigerian healthcare practitioner context.\nLinks a Practitioner to an Organization, specifies their role.",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole.period",
      "path" : "PractitionerRole.period",
      "short" : "Period during which the practitioner is performing this role",
      "definition" : "The time interval this practitioner has or had this role.",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "short" : "Practitioner linked to this role",
      "definition" : "Reference to the Nigerian healthcare practitioner holding this role.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "short" : "Organization the practitioner is associated with",
      "definition" : "The health facility, agency, or organization in which the practitioner works.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "Roles of the practitioner",
      "definition" : "Describes the functional roles (e.g., Routine Immunization Officer, AEFI Surveillance Officer).",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code.text",
      "path" : "PractitionerRole.code.text",
      "short" : "Plain text description of role",
      "definition" : "The common-language label for the role.",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.location",
      "path" : "PractitionerRole.location",
      "short" : "Locations where the practitioner role is performed",
      "definition" : "Physical or service delivery locations where this role is carried out.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-location"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.healthcareService",
      "path" : "PractitionerRole.healthcareService",
      "short" : "Services provided",
      "definition" : "Types of related health services delivered in this role.",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.availableTime",
      "path" : "PractitionerRole.availableTime",
      "max" : "0"
    },
    {
      "id" : "PractitionerRole.notAvailable",
      "path" : "PractitionerRole.notAvailable",
      "max" : "0"
    }]
  }
}

```
