# Results Radiology Component - IPS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Results Radiology Component - IPS**

## ValueSet: Results Radiology Component - IPS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-results-radiology-component-vs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgResultsRadiologyComponentVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.182 | |
| **Copyright/Legal**:* This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.
* This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc
 | |

 
Value set including SNOMED CT, LOINC and DICOM concepts for textual reports, measurements, and other radiology components 

 **References** 

* [NG Radiology Result Observation](StructureDefinition-ng-observation-results-radiology.md)

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
  "id" : "ng-results-radiology-component-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-results-radiology-component-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.182"
  }],
  "version" : "0.0.0",
  "name" : "NgResultsRadiologyComponentVS",
  "title" : "Results Radiology Component - IPS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Value set including SNOMED CT, LOINC and DICOM concepts for textual reports, measurements, and other radiology components",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "immutable" : false,
  "copyright" : "\n- This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.\n- This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc",
  "compose" : {
    "include" : [{
      "system" : "http://dicom.nema.org/resources/ontology/DCM",
      "concept" : [{
        "code" : "121065",
        "display" : "Procedure Description"
      },
      {
        "code" : "121069",
        "display" : "Previous Finding"
      },
      {
        "code" : "121071",
        "display" : "Finding"
      },
      {
        "code" : "121073",
        "display" : "Impression"
      },
      {
        "code" : "121075",
        "display" : "Recommendation"
      },
      {
        "code" : "121077",
        "display" : "Conclusion"
      },
      {
        "code" : "121207",
        "display" : "Height"
      },
      {
        "code" : "121211",
        "display" : "Path length"
      },
      {
        "code" : "121206",
        "display" : "Distance"
      },
      {
        "code" : "121216",
        "display" : "Volume estimated from single 2D region"
      },
      {
        "code" : "121218",
        "display" : "Volume estimated from two non-coplanar 2D regions"
      },
      {
        "code" : "121217",
        "display" : "Volume estimated from three or more non-coplanar 2D regions"
      },
      {
        "code" : "121222",
        "display" : "Volume of sphere"
      },
      {
        "code" : "121221",
        "display" : "Volume of ellipsoid"
      },
      {
        "code" : "121220",
        "display" : "Volume of circumscribed sphere"
      },
      {
        "code" : "121219",
        "display" : "Volume of bounding three dimensional region"
      }]
    },
    {
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "55108-5",
        "display" : "Clinical presentation Document"
      },
      {
        "code" : "55112-7",
        "display" : "Document summary"
      },
      {
        "code" : "11329-0",
        "display" : "History general Narrative - Reported"
      },
      {
        "code" : "55115-0",
        "display" : "Requested imaging studies information Document"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "116224001",
        "display" : "Complication of Procedure"
      },
      {
        "code" : "410668003",
        "display" : "Length"
      },
      {
        "code" : "103355008",
        "display" : "Width"
      },
      {
        "code" : "131197000",
        "display" : "Depth"
      },
      {
        "code" : "81827009",
        "display" : "Diameter"
      },
      {
        "code" : "103339001",
        "display" : "Long Axis"
      },
      {
        "code" : "103340004",
        "display" : "Short Axis"
      },
      {
        "code" : "131187009",
        "display" : "Major Axis"
      },
      {
        "code" : "131188004",
        "display" : "Minor Axis"
      },
      {
        "code" : "131189007",
        "display" : "Perpendicular Axis"
      },
      {
        "code" : "131190003",
        "display" : "Radius"
      },
      {
        "code" : "131191004",
        "display" : "Perimeter"
      },
      {
        "code" : "74551000",
        "display" : "Circumference"
      },
      {
        "code" : "131192006",
        "display" : "Diameter of circumscribed circle"
      },
      {
        "code" : "42798000",
        "display" : "Area"
      },
      {
        "code" : "131184002",
        "display" : "Area of defined region"
      },
      {
        "code" : "118565006",
        "display" : "Volume"
      }]
    }]
  }
}

```
