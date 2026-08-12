# Bundle (IPS) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle (IPS)**

## Resource Profile: Bundle (IPS) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-ips-bundle | *Version*:0.0.0 |
| Draft as of 2024-06-19 | *Computable Name*:NgIPSBundle |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.38 | |

 
This profile represents the constraints applied to the Bundle resource by the International Patient Summary (IPS) FHIR Implementation Guide. 

 
An IPS bundle is an electronic health record extract containing essential healthcare information about a subject of care, comprising at least the required elements of the IPS dataset. The IPS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant. As specified in ISO 27269, it is designed for supporting the use case scenario for ‘unplanned, cross border care’, but it is not limited to it. It is intended to be international, i.e., to provide generic solutions for global application beyond a particular region or country. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-ips-bundle.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-ips-bundle.csv), [Excel](StructureDefinition-ng-ips-bundle.xlsx), [Schematron](StructureDefinition-ng-ips-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-ips-bundle",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-ips-bundle",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.38"
  }],
  "version" : "0.0.0",
  "name" : "NgIPSBundle",
  "title" : "Bundle (IPS)",
  "status" : "draft",
  "date" : "2024-06-19T10:50:07-05:00",
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
  "description" : "This profile represents the constraints applied to the Bundle resource by the International Patient Summary (IPS) FHIR Implementation Guide.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "purpose" : "An IPS bundle is an electronic health record extract containing essential healthcare information about a subject of care, comprising at least the required elements of the IPS dataset. The IPS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant. As specified in ISO 27269, it is designed for supporting the use case scenario for ‘unplanned, cross border care’, but it is not limited to it. It is intended to be international, i.e., to provide generic solutions for global application beyond a particular region or country.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle",
      "short" : "International Patient Summary Bundle",
      "definition" : "International Patient Summary Bundle. \r\nA container for a collection of resources in the patient summary document."
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "fixedCode" : "document"
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        },
        {
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "open"
      },
      "short" : "Entry resource in the patient summary bundle",
      "definition" : "An entry resource included in the patient summary document bundle resource.",
      "comment" : "Must contain the IPS Composition as the first entry (only a single Composition resource instance may be included) and a Patient resource.  Additional constraints are specified in the IPS Composition profile.",
      "min" : 2
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry.search",
      "path" : "Bundle.entry.search",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:composition",
      "path" : "Bundle.entry",
      "sliceName" : "composition",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:composition.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Composition",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-ips-composition"]
      }]
    },
    {
      "id" : "Bundle.entry:patient",
      "path" : "Bundle.entry",
      "sliceName" : "patient",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:allergyintolerance",
      "path" : "Bundle.entry",
      "sliceName" : "allergyintolerance",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:allergyintolerance.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "AllergyIntolerance"
      }]
    },
    {
      "id" : "Bundle.entry:careplan",
      "path" : "Bundle.entry",
      "sliceName" : "careplan",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:careplan.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "CarePlan"
      }]
    },
    {
      "id" : "Bundle.entry:clinicalimpression",
      "path" : "Bundle.entry",
      "sliceName" : "clinicalimpression",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:clinicalimpression.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "ClinicalImpression"
      }]
    },
    {
      "id" : "Bundle.entry:condition",
      "path" : "Bundle.entry",
      "sliceName" : "condition",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:condition.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Condition",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-condition"]
      }]
    },
    {
      "id" : "Bundle.entry:consent",
      "path" : "Bundle.entry",
      "sliceName" : "consent",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:consent.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Consent"
      }]
    },
    {
      "id" : "Bundle.entry:device",
      "path" : "Bundle.entry",
      "sliceName" : "device",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:device.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Device"
      }]
    },
    {
      "id" : "Bundle.entry:deviceusestatement",
      "path" : "Bundle.entry",
      "sliceName" : "deviceusestatement",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:deviceusestatement.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "DeviceUseStatement"
      }]
    },
    {
      "id" : "Bundle.entry:diagnosticreport",
      "path" : "Bundle.entry",
      "sliceName" : "diagnosticreport",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:diagnosticreport.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "DiagnosticReport"
      }]
    },
    {
      "id" : "Bundle.entry:documentreference",
      "path" : "Bundle.entry",
      "sliceName" : "documentreference",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:documentreference.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "DocumentReference"
      }]
    },
    {
      "id" : "Bundle.entry:flag",
      "path" : "Bundle.entry",
      "sliceName" : "flag",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:flag.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Flag"
      }]
    },
    {
      "id" : "Bundle.entry:imagingstudy",
      "path" : "Bundle.entry",
      "sliceName" : "imagingstudy",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:imagingstudy.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "ImagingStudy"
      }]
    },
    {
      "id" : "Bundle.entry:immunization",
      "path" : "Bundle.entry",
      "sliceName" : "immunization",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:immunization.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Immunization",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization"]
      }]
    },
    {
      "id" : "Bundle.entry:immunizationrecommendation",
      "path" : "Bundle.entry",
      "sliceName" : "immunizationrecommendation",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:immunizationrecommendation.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "ImmunizationRecommendation"
      }]
    },
    {
      "id" : "Bundle.entry:medication",
      "path" : "Bundle.entry",
      "sliceName" : "medication",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:medication.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Medication",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication"]
      }]
    },
    {
      "id" : "Bundle.entry:medicationrequest",
      "path" : "Bundle.entry",
      "sliceName" : "medicationrequest",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:medicationrequest.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationRequest",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication-request"]
      }]
    },
    {
      "id" : "Bundle.entry:medicationstatement",
      "path" : "Bundle.entry",
      "sliceName" : "medicationstatement",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:medicationstatement.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationStatement"
      }]
    },
    {
      "id" : "Bundle.entry:practitioner",
      "path" : "Bundle.entry",
      "sliceName" : "practitioner",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:practitioner.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner"]
      }]
    },
    {
      "id" : "Bundle.entry:practitionerrole",
      "path" : "Bundle.entry",
      "sliceName" : "practitionerrole",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:practitionerrole.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role"]
      }]
    },
    {
      "id" : "Bundle.entry:procedure",
      "path" : "Bundle.entry",
      "sliceName" : "procedure",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:procedure.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Procedure"
      }]
    },
    {
      "id" : "Bundle.entry:observation-pregnancy-edd",
      "path" : "Bundle.entry",
      "sliceName" : "observation-pregnancy-edd",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:observation-pregnancy-edd.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-pregnancy-edd"]
      }]
    },
    {
      "id" : "Bundle.entry:observation-pregnancy-outcome",
      "path" : "Bundle.entry",
      "sliceName" : "observation-pregnancy-outcome",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:observation-pregnancy-outcome.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-pregnancy-outcome"]
      }]
    },
    {
      "id" : "Bundle.entry:observation-pregnancy-status",
      "path" : "Bundle.entry",
      "sliceName" : "observation-pregnancy-status",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:observation-pregnancy-status.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-pregnancy-status"]
      }]
    },
    {
      "id" : "Bundle.entry:observation-alcohol-use",
      "path" : "Bundle.entry",
      "sliceName" : "observation-alcohol-use",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:observation-alcohol-use.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-alcohol-use"]
      }]
    },
    {
      "id" : "Bundle.entry:observation-tobacco-use",
      "path" : "Bundle.entry",
      "sliceName" : "observation-tobacco-use",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:observation-tobacco-use.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-tobacco-use"]
      }]
    },
    {
      "id" : "Bundle.entry:observation-results-laboratory-pathology",
      "path" : "Bundle.entry",
      "sliceName" : "observation-results-laboratory-pathology",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:observation-results-laboratory-pathology.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-results-laboratory-pathology"]
      }]
    },
    {
      "id" : "Bundle.entry:observation-results-radiology",
      "path" : "Bundle.entry",
      "sliceName" : "observation-results-radiology",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:observation-results-radiology.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-results-radiology"]
      }]
    },
    {
      "id" : "Bundle.entry:observation-vital-signs",
      "path" : "Bundle.entry",
      "sliceName" : "observation-vital-signs",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:observation-vital-signs.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/vitalsigns"]
      }]
    },
    {
      "id" : "Bundle.entry:organization",
      "path" : "Bundle.entry",
      "sliceName" : "organization",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:organization.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Organization",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "Bundle.entry:specimen",
      "path" : "Bundle.entry",
      "sliceName" : "specimen",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:specimen.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Specimen",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-specimen"]
      }]
    }]
  }
}

```
