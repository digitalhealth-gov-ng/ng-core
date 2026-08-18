# NG Immunization - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Immunization**

## Resource Profile: NG Immunization 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgImmunization |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.35 | |

 
Nigerian Profile for Immunization resource. 

**Usages:**

* Use this Profile: [Bundle NG AEFI Report](StructureDefinition-ng-aefi-report-bundle.md) and [Bundle NG (IPS)](StructureDefinition-ng-ips-bundle.md)
* Refer to this Profile: [Bundle NG IPS Composition](StructureDefinition-ng-ips-composition.md)
* Examples for this Profile: [Immunization/NgImmunization-001](Immunization-NgImmunization-001.md), [Immunization/NgImmunization-002](Immunization-NgImmunization-002.md) and [Immunization/NgImmunization-003](Immunization-NgImmunization-003.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-immunization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-immunization.csv), [Excel](StructureDefinition-ng-immunization.xlsx), [Schematron](StructureDefinition-ng-immunization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-immunization",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.35"
  }],
  "version" : "0.0.0",
  "name" : "NgImmunization",
  "title" : "NG Immunization",
  "status" : "draft",
  "date" : "2026-08-18T06:18:50+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Nigerian Profile for Immunization resource.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Immunization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Immunization.extension",
      "path" : "Immunization.extension",
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
      "id" : "Immunization.extension:NgVaccineContraindications",
      "path" : "Immunization.extension",
      "sliceName" : "NgVaccineContraindications",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-vaccine-contraindications"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.extension:NgContraindicated",
      "path" : "Immunization.extension",
      "sliceName" : "NgContraindicated",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-contraindicated"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.extension:NgNextDoseDate",
      "path" : "Immunization.extension",
      "sliceName" : "NgNextDoseDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-next-dose-date"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.identifier",
      "path" : "Immunization.identifier",
      "max" : "1"
    },
    {
      "id" : "Immunization.status",
      "path" : "Immunization.status",
      "short" : "Status of Immunization e.g. completed| entered-in-error | not-done",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/immunization-status"
      }
    },
    {
      "id" : "Immunization.statusReason",
      "path" : "Immunization.statusReason",
      "short" : "Reason immunization was not done (or was missed)",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/immunization-status-reason"
      }
    },
    {
      "id" : "Immunization.vaccineCode",
      "path" : "Immunization.vaccineCode",
      "short" : "Vaccine Product Administered",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-vaccine-local-vs"
      }
    },
    {
      "id" : "Immunization.patient",
      "path" : "Immunization.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.occurrence[x]",
      "path" : "Immunization.occurrence[x]",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.location",
      "path" : "Immunization.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-location"]
      }]
    },
    {
      "id" : "Immunization.manufacturer",
      "path" : "Immunization.manufacturer",
      "short" : "Manufacturer description and identity",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "Immunization.lotNumber",
      "path" : "Immunization.lotNumber",
      "short" : "Vaccine batch number",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.expirationDate",
      "path" : "Immunization.expirationDate",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.site",
      "path" : "Immunization.site",
      "short" : "Body site vaccine was administered",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/immunization-site"
      }
    },
    {
      "id" : "Immunization.route",
      "path" : "Immunization.route",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/immunization-route"
      }
    },
    {
      "id" : "Immunization.doseQuantity",
      "path" : "Immunization.doseQuantity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Immunization.performer",
      "path" : "Immunization.performer",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.performer.function",
      "path" : "Immunization.performer.function",
      "short" : "Designation of reporting officer",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/immunization-function"
      }
    },
    {
      "id" : "Immunization.performer.actor",
      "path" : "Immunization.performer.actor",
      "short" : "Information of reporting officer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner"]
      }]
    },
    {
      "id" : "Immunization.reaction",
      "path" : "Immunization.reaction",
      "max" : "5",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.reaction.detail",
      "path" : "Immunization.reaction.detail",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation"]
      }]
    },
    {
      "id" : "Immunization.protocolApplied",
      "path" : "Immunization.protocolApplied",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.protocolApplied.targetDisease",
      "path" : "Immunization.protocolApplied.targetDisease",
      "short" : "Vaccine preventable disease being targeted",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/immunization-target-disease"
      }
    }]
  }
}

```
