# NG TB Facility Contact Management Register - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Facility Contact Management Register**

## Logical Model: NG TB Facility Contact Management Register 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBFacilityContactManagementRegister | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgTBFacilityContactManagementRegister |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.77 | |

 
Logical model for the Nigeria National Tuberculosis and Leprosy Control Programme NTBLCP/TB 09 Facility Tuberculosis Contact Management Register. One model instance represents a facility contact-management register and contains repeatable index TB cases, each with one or more contacts followed through contact screening, TB investigation, diagnosis and treatment, eligibility for TB preventive therapy, TPT initiation, monthly drug collection and final preventive-therapy outcome. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-NgTBFacilityContactManagementRegister.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NgTBFacilityContactManagementRegister.csv), [Excel](StructureDefinition-NgTBFacilityContactManagementRegister.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NgTBFacilityContactManagementRegister",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBFacilityContactManagementRegister",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.77"
  }],
  "version" : "0.0.0",
  "name" : "NgTBFacilityContactManagementRegister",
  "title" : "NG TB Facility Contact Management Register",
  "status" : "draft",
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Logical model for the Nigeria National Tuberculosis and Leprosy Control\nProgramme NTBLCP/TB 09 Facility Tuberculosis Contact Management Register.\nOne model instance represents a facility contact-management register and\ncontains repeatable index TB cases, each with one or more contacts followed\nthrough contact screening, TB investigation, diagnosis and treatment,\neligibility for TB preventive therapy, TPT initiation, monthly drug\ncollection and final preventive-therapy outcome.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ng-tb-facility-contact-management-register-columns",
    "uri" : "urn:ng:ntblcp:tb09:facility-contact-management-register",
    "name" : "NG TB Facility Contact Management Register Column Mapping",
    "comment" : "Maps NgTBFacilityContactManagementRegister logical-model elements to the\nprinted NTBLCP/TB 09 Facility Tuberculosis Contact Management Register."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBFacilityContactManagementRegister",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "NgTBFacilityContactManagementRegister",
      "path" : "NgTBFacilityContactManagementRegister",
      "short" : "NG TB Facility Contact Management Register",
      "definition" : "Logical model for the Nigeria National Tuberculosis and Leprosy Control\nProgramme NTBLCP/TB 09 Facility Tuberculosis Contact Management Register.\nOne model instance represents a facility contact-management register and\ncontains repeatable index TB cases, each with one or more contacts followed\nthrough contact screening, TB investigation, diagnosis and treatment,\neligibility for TB preventive therapy, TPT initiation, monthly drug\ncollection and final preventive-therapy outcome."
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.identifier",
      "path" : "NgTBFacilityContactManagementRegister.identifier",
      "short" : "Register identifier",
      "definition" : "Identifier assigned to the TB Facility Contact Management Register or its electronic equivalent.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase",
      "path" : "NgTBFacilityContactManagementRegister.indexCase",
      "short" : "Index TB patient",
      "definition" : "One index TB patient and the contacts investigated in relation to that patient's TB episode.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.serialNumber",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.serialNumber",
      "short" : "Serial number",
      "definition" : "Sequential number assigned to the index TB patient within the register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "S/N"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contactTracingDate",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contactTracingDate",
      "short" : "Date contact tracing conducted",
      "definition" : "Date contact tracing was conducted for the index TB patient.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Date contact tracing was conducted"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.subject",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.subject",
      "short" : "Index patient reference",
      "definition" : "Reference to the corresponding Nigeria Core Patient resource for the index TB patient, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.patientName",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.patientName",
      "short" : "Name of index TB patient",
      "definition" : "Full name of the index TB patient.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Name of Index TB Patient / LGATB Reg. No."
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.lgaTbRegistrationNumber",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.lgaTbRegistrationNumber",
      "short" : "LGA TB registration number",
      "definition" : "LGA TB registration number of the index TB patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Name of Index TB Patient / LGATB Reg. No."
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.tbType",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.tbType",
      "short" : "Type of TB",
      "definition" : "Type of TB of the index patient.\n\nSource categories are:\nDS-TB;\nDR-TB.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Type of TB: DS-TB / DR-TB"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact",
      "short" : "Contact of index TB patient",
      "definition" : "One contact identified and managed in relation to the index TB patient.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.subject",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.subject",
      "short" : "Contact patient reference",
      "definition" : "Reference to the corresponding Nigeria Core Patient resource for the contact, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.contactName",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.contactName",
      "short" : "Name of contact",
      "definition" : "Name of the contact of the index TB patient.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Name of Contacts of Index TB Patients"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.age",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.age",
      "short" : "Age",
      "definition" : "Age of the contact.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Age"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.sex",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.sex",
      "short" : "Sex",
      "definition" : "Sex of the contact.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-gender-vs"
      },
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Sex"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.investigation",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.investigation",
      "short" : "Contact investigation",
      "definition" : "Screening, diagnostic investigation and actions undertaken for the contact.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.investigation.screened",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.investigation.screened",
      "short" : "Contact screened",
      "definition" : "Indicates whether the contact was screened for TB.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Outcome of contact investigation: Contact screened? Yes/No"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.investigation.testedForTb",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.investigation.testedForTb",
      "short" : "Contact tested for TB",
      "definition" : "Indicates whether the contact underwent diagnostic testing for TB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Outcome of contact investigation: Contacts tested for TB? Yes/No"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.investigation.presumptiveTbIdentified",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.investigation.presumptiveTbIdentified",
      "short" : "Presumptive TB identified",
      "definition" : "Indicates whether the contact was identified as a presumptive TB case.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Outcome of contact investigation: Presumptive TB identified? Yes/No"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.investigation.tbDiagnosis",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.investigation.tbDiagnosis",
      "short" : "TB diagnosis",
      "definition" : "TB diagnosis established through contact investigation.\n\nSource categories are:\nDS-TB;\nDR-TB.\n\nAbsence of a value indicates that TB was not recorded as diagnosed.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Outcome of contact investigation: TB Diagnosed - DS-TB / DR-TB"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.investigation.startedTbTreatment",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.investigation.startedTbTreatment",
      "short" : "TB treatment",
      "definition" : "Indicates whether the contact diagnosed with TB started TB treatment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Outcome of contact investigation: TB treatment? Yes/No"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt",
      "short" : "TB preventive therapy",
      "definition" : "TB preventive therapy eligibility, initiation, drug collection and outcome.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.eligible",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.eligible",
      "short" : "TPT eligible",
      "definition" : "Indicates whether the contact was eligible for TB preventive therapy.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Outcome of contact investigation: TPT Eligible? Yes/No"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.commenced",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.commenced",
      "short" : "Commenced on TPT",
      "definition" : "Indicates whether the eligible contact commenced TB preventive therapy.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Commenced on TPT: Yes/No"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.regimenType",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.regimenType",
      "short" : "TPT regimen type",
      "definition" : "Type of TB preventive therapy used.\n\nSource-form regimen types include:\nINH = Isoniazid;\n3HP = Rifapentine and Isoniazid;\nCTX/INH/B6 FDC = Cotrimoxazole/Isoniazid/Pyridoxine fixed-dose combination.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Commenced on TPT: If yes, Type"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.drugCollection",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.drugCollection",
      "short" : "TPT drug collection",
      "definition" : "Monthly TB preventive therapy drug-collection record.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.drugCollection.month",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.drugCollection.month",
      "short" : "TPT treatment month",
      "definition" : "Treatment month represented in the source register. Expected values are 1 through 6.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Months of Treatment: 1 / 2 / 3 / 4 / 5 / 6"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.drugCollection.collectionDate",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.drugCollection.collectionDate",
      "short" : "Drug collection date",
      "definition" : "Date TPT medication was collected during the specified treatment month.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Months of Treatment: Write date of drug collection"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.outcome",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.outcome",
      "short" : "TPT outcome",
      "definition" : "Final outcome for a contact started on TB preventive therapy.\n\nSource categories are:\nTreatment completed;\nLoss to follow-up;\nDied;\nDeveloped active TB;\nNot evaluated.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "TPT outcome: Treatment completed / Loss to follow-up / Died / Developed active TB / Not evaluated"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.outcomeDate",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.tpt.outcomeDate",
      "short" : "TPT outcome date",
      "definition" : "Date the final TB preventive therapy outcome was assigned.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "TPT outcome: date"
      }]
    },
    {
      "id" : "NgTBFacilityContactManagementRegister.indexCase.contact.remarks",
      "path" : "NgTBFacilityContactManagementRegister.indexCase.contact.remarks",
      "short" : "Remarks",
      "definition" : "Additional remarks regarding contact investigation, diagnosis, TB treatment, preventive therapy or follow-up.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-facility-contact-management-register-columns",
        "map" : "Remarks"
      }]
    }]
  }
}

```
