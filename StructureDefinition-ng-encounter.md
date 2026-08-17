# NG Encounter - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Encounter**

## Resource Profile: NG Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-encounter | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgEncounter |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.26 | |

 
A profile for encounters in the Nigerian used to health visits and related healthcare interactions. 

**Usages:**

* Use this Profile: [Bundle NG AEFI Report](StructureDefinition-ng-aefi-report-bundle.md)
* Refer to this Profile: [NG Condition](StructureDefinition-ng-condition.md), [Nigeria Document Reference](StructureDefinition-ng-documents.md), [NG Encounter](StructureDefinition-ng-encounter.md), [Nigeria Medication Statement](StructureDefinition-ng-medication-statement.md) and [NG Procedure](StructureDefinition-ng-procedure.md)
* Examples for this Profile: [Encounter/NgEncounter-001](Encounter-NgEncounter-001.md), [Encounter/NgEncounter-002](Encounter-NgEncounter-002.md) and [Encounter/NgEncounter-003](Encounter-NgEncounter-003.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core General Hospital Requestor Capability](CapabilityStatement-NgGeneralHospitalRequestorCapability.md), [Nigeria Core General Hospital Responder Capability](CapabilityStatement-NgGeneralHospitalResponderCapability.md), [Nigeria Core PHC Requestor Capability](CapabilityStatement-NgPHCRequestorCapability.md)... Show 3 more, [Nigeria Core PHC Responder Capability](CapabilityStatement-NgPHCResponderCapability.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-encounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-encounter.csv), [Excel](StructureDefinition-ng-encounter.xlsx), [Schematron](StructureDefinition-ng-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-encounter",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-encounter",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.26"
  }],
  "version" : "0.0.0",
  "name" : "NgEncounter",
  "title" : "NG Encounter",
  "status" : "active",
  "date" : "2026-08-17T13:27:53+01:00",
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
  "description" : "A profile for encounters in the Nigerian used to health visits and related healthcare interactions.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter.modifierExtension",
      "path" : "Encounter.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "short" : "A unique Identifier by which the encounter is",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "short" : "Status of the encounter :- planned | arrived | triaged | in-progress | onleave | finished | cancelled +",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/encounter-status"
      }
    },
    {
      "id" : "Encounter.statusHistory",
      "path" : "Encounter.statusHistory",
      "max" : "0"
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "short" : "Classification of Patient encounter :- AMB | EMER | FLD | IMP | ACUTE | NONAC | OBSENC | PRENC | SS | VR See here for details - https://hl7.org/fhir/R4/v3/ActEncounterCode/vs.html",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"
      }
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "max" : "0"
    },
    {
      "id" : "Encounter.serviceType",
      "path" : "Encounter.serviceType",
      "max" : "0"
    },
    {
      "id" : "Encounter.priority",
      "path" : "Encounter.priority",
      "max" : "0"
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant.modifierExtension",
      "path" : "Encounter.participant.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Encounter.participant.individual",
      "path" : "Encounter.participant.individual",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner"]
      }]
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location.modifierExtension",
      "path" : "Encounter.location.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Encounter.location.location",
      "path" : "Encounter.location.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-location"]
      }]
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "short" : "The facility (Organization) responsible for this encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.partOf",
      "path" : "Encounter.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-encounter"]
      }],
      "mustSupport" : true
    }]
  }
}

```
