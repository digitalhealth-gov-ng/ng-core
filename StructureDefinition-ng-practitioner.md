# NG Practitioner - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Practitioner**

## Resource Profile: NG Practitioner 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgPractitioner |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.62 | |

 
Profile for a Nigerian Practitioner 

**Usages:**

* Use this Profile: [Bundle NG AEFI Report](StructureDefinition-ng-aefi-report-bundle.md) and [Bundle NG (IPS)](StructureDefinition-ng-ips-bundle.md)
* Refer to this Profile: [NG Allergy Intolerance](StructureDefinition-ng-allergy-intolerance.md), [Ng Appointment](StructureDefinition-ng-appointment.md), [NG Communication](StructureDefinition-ng-communication.md), [NG Condition](StructureDefinition-ng-condition.md)... Show 22 more, [NG DeviceRequest](StructureDefinition-ng-device-request.md), [DiagnosticReport (IPS)](StructureDefinition-ng-diagnostic-report.md), [Nigeria Document Reference](StructureDefinition-ng-documents.md), [NG Encounter](StructureDefinition-ng-encounter.md), [NG Alert Flag](StructureDefinition-ng-flag.md), [NG Immunization](StructureDefinition-ng-immunization.md), [NG Invoice](StructureDefinition-ng-invoice.md), [NG MedicationDispense](StructureDefinition-ng-medication-dispense.md), [Nigeria Medication Statement](StructureDefinition-ng-medication-statement.md), [NG Alcohol Use Observation](StructureDefinition-ng-observation-alcohol-use.md), [NG Pregnancy EDD Observation](StructureDefinition-ng-observation-pregnancy-edd.md), [NG Pregnancy Outcome Observation](StructureDefinition-ng-observation-pregnancy-outcome.md), [NG Pregnancy Status Observation](StructureDefinition-ng-observation-pregnancy-status.md), [NG Laboratory or Pathology Result Observation](StructureDefinition-ng-observation-results-laboratory-pathology.md), [NG Radiology Result Observation](StructureDefinition-ng-observation-results-radiology.md), [NG Tobacco Smoking Status Observation](StructureDefinition-ng-observation-tobacco-use.md), [NG Composite Observation](StructureDefinition-ng-observation.md), [NG PractitionerRole](StructureDefinition-ng-practitioner-role.md), [NG Procedure](StructureDefinition-ng-procedure.md), [NG Lightweight Provenance](StructureDefinition-ng-provenance.md), [NG ServiceRequest](StructureDefinition-ng-service-request.md) and [NG Task](StructureDefinition-ng-task.md)
* Examples for this Profile: [Practitioner/NgPractitioner-001-Pseudo](Practitioner-NgPractitioner-001-Pseudo.md), [Practitioner/NgPractitioner-001](Practitioner-NgPractitioner-001.md), [Practitioner/NgPractitioner-002](Practitioner-NgPractitioner-002.md), [Practitioner/NgPractitioner-003](Practitioner-NgPractitioner-003.md)... Show 2 more, [Practitioner/NgPractitioner-005-nurse](Practitioner-NgPractitioner-005-nurse.md) and [Practitioner/NgPractitioner-006-Doctor](Practitioner-NgPractitioner-006-Doctor.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core General Hospital Registry Service Capability](CapabilityStatement-NgGeneralHospitalRegistryCapability.md), [Nigeria Core General Hospital Requestor Capability](CapabilityStatement-NgGeneralHospitalRequestorCapability.md), [Nigeria Core General Hospital Responder Capability](CapabilityStatement-NgGeneralHospitalResponderCapability.md)... Show 5 more, [Nigeria Core PHC Requestor Capability](CapabilityStatement-NgPHCRequestorCapability.md), [Nigeria Core PHC Responder Capability](CapabilityStatement-NgPHCResponderCapability.md), [Nigeria Core Tertiary Referral Registry Service Capability](CapabilityStatement-NgTertiaryRegistryCapability.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-practitioner.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-practitioner.csv), [Excel](StructureDefinition-ng-practitioner.xlsx), [Schematron](StructureDefinition-ng-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-practitioner",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.62"
  }],
  "version" : "0.0.0",
  "name" : "NgPractitioner",
  "title" : "NG Practitioner",
  "status" : "draft",
  "date" : "2026-08-17T16:10:29+01:00",
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
  "description" : "Profile for a Nigerian Practitioner",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier.system",
      "path" : "Practitioner.identifier.system",
      "short" : "The namespace for the identifier value e.g a MDCN URL",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier.value",
      "path" : "Practitioner.identifier.value",
      "short" : "The value that is unique from the identity provider",
      "min" : 1
    },
    {
      "id" : "Practitioner.active",
      "path" : "Practitioner.active",
      "short" : "A boolean indicating that this practitioner is active"
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.use",
      "path" : "Practitioner.name.use",
      "max" : "0"
    },
    {
      "id" : "Practitioner.name.family",
      "path" : "Practitioner.name.family",
      "min" : 1
    },
    {
      "id" : "Practitioner.name.given",
      "path" : "Practitioner.name.given",
      "short" : "The surname of the practitioner e.g. of the Routine Immunization officer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom.system",
      "path" : "Practitioner.telecom.system",
      "short" : "The contact communication information e.g. nkiru@test.com | 08092299999",
      "min" : 1
    },
    {
      "id" : "Practitioner.telecom.value",
      "path" : "Practitioner.telecom.value",
      "min" : 1
    },
    {
      "id" : "Practitioner.birthDate",
      "path" : "Practitioner.birthDate",
      "short" : "The date of birth of the healthcare professional",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification.code.text",
      "path" : "Practitioner.qualification.code.text",
      "short" : "The public certificate number"
    },
    {
      "id" : "Practitioner.qualification.period",
      "path" : "Practitioner.qualification.period",
      "short" : "The time duration this qualification is valid"
    },
    {
      "id" : "Practitioner.qualification.issuer",
      "path" : "Practitioner.qualification.issuer",
      "short" : "The regulating organization that issue the qualification",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    }]
  }
}

```
