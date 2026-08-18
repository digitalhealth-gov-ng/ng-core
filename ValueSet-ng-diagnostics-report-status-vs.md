# Diagnostics Report Status Codes - IPS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diagnostics Report Status Codes - IPS**

## ValueSet: Diagnostics Report Status Codes - IPS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-diagnostics-report-status-vs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgDiagnosticReportStatusVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.18 | |
| **Copyright/Legal**: Produced by HL7 under the terms of HL7® Governance and Operations Manual relating to Intellectual Property (Section 16), specifically its copyright, trademark and patent provisions. | |

 
IPS Diagnostic Report status codes allowable for diagnostics reports. This value set includes all status codes except "entered-in-error" from http://hl7.org/fhir/diagnostic-report-status. 

 **References** 

* [DiagnosticReport (IPS)](StructureDefinition-ng-diagnostic-report.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ng-diagnostics-report-status-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-diagnostics-report-status-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.18"
  }],
  "version" : "0.0.0",
  "name" : "NgDiagnosticReportStatusVS",
  "title" : "Diagnostics Report Status Codes - IPS",
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
  "description" : "IPS Diagnostic Report status codes allowable for diagnostics reports.  This value set includes all status codes except \\\"entered-in-error\\\" from http://hl7.org/fhir/diagnostic-report-status.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "immutable" : false,
  "copyright" : "Produced by HL7 under the terms of HL7® Governance and Operations Manual relating to Intellectual Property (Section 16), specifically its copyright, trademark and patent provisions.",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/diagnostic-report-status",
      "version" : "4.0.1"
    }],
    "exclude" : [{
      "system" : "http://hl7.org/fhir/diagnostic-report-status",
      "version" : "4.0.1",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "entered-in-error"
      }]
    }]
  }
}

```
