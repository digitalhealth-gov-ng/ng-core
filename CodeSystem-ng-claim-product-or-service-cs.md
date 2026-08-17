# NG Claim Product/Service Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Claim Product/Service Codes**

## CodeSystem: NG Claim Product/Service Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-claim-product-or-service-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgClaimProductOrServiceCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.9 | |

 
Nigeria-specific productOrService codes. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-claim-product-or-service-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-claim-product-or-service-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.9"
  }],
  "version" : "0.0.0",
  "name" : "NgClaimProductOrServiceCS",
  "title" : "NG Claim Product/Service Codes",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Nigeria-specific productOrService codes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 49,
  "concept" : [{
    "code" : "SRV-GP-INIT",
    "display" : "General outpatient consultation (initial)",
    "definition" : "First GP/Family Medicine visit."
  },
  {
    "code" : "SRV-GP-REVIEW",
    "display" : "General outpatient consultation (review)",
    "definition" : "Follow-up GP visit."
  },
  {
    "code" : "SRV-SPEC-INIT",
    "display" : "Specialist consultation (initial)",
    "definition" : "First specialist visit."
  },
  {
    "code" : "SRV-SPEC-REVIEW",
    "display" : "Specialist consultation (review)",
    "definition" : "Follow-up specialist visit."
  },
  {
    "code" : "SRV-EMER",
    "display" : "Emergency room consultation",
    "definition" : "Triage and emergency physician consult."
  },
  {
    "code" : "SRV-TELE",
    "display" : "Teleconsultation",
    "definition" : "Synchronous telemedicine visit."
  },
  {
    "code" : "PROC-MINOR",
    "display" : "Minor procedure (OPD)",
    "definition" : "E.g., suturing, incision & drainage."
  },
  {
    "code" : "PROC-MAJOR",
    "display" : "Major procedure (theatre)",
    "definition" : "Operating theatre case (non-obstetric)."
  },
  {
    "code" : "PROC-ANAES",
    "display" : "Anaesthesia fee",
    "definition" : "Anaesthetist professional fee."
  },
  {
    "code" : "PROC-THEATRE",
    "display" : "Theatre fee",
    "definition" : "Use of operating theatre facilities."
  },
  {
    "code" : "PROC-DRESS",
    "display" : "Wound dressing / change",
    "definition" : "Clinic or ward-based dressing."
  },
  {
    "code" : "MAT-ANC-PACK",
    "display" : "Antenatal care package (per visit)",
    "definition" : "ANC consultation & routine checks."
  },
  {
    "code" : "MAT-NVD",
    "display" : "Normal vaginal delivery (NVD) package",
    "definition" : "Uncomplicated delivery."
  },
  {
    "code" : "MAT-CS",
    "display" : "Caesarean section (C-section) package",
    "definition" : "Surgical delivery."
  },
  {
    "code" : "MAT-PNC",
    "display" : "Postnatal care visit",
    "definition" : "Post-delivery follow-up visit."
  },
  {
    "code" : "MAT-NB-SCREEN",
    "display" : "Newborn screening panel",
    "definition" : "Standard neonatal screening bundle."
  },
  {
    "code" : "BED-GEN",
    "display" : "General ward bed-day",
    "definition" : "24-hour inpatient stay (general ward)."
  },
  {
    "code" : "BED-ICU",
    "display" : "ICU bed-day",
    "definition" : "Critical care day."
  },
  {
    "code" : "BED-SCU",
    "display" : "Special care baby unit day",
    "definition" : "SCBU/NICU level care."
  },
  {
    "code" : "BED-ISOL",
    "display" : "Isolation bed-day",
    "definition" : "Isolation ward day."
  },
  {
    "code" : "LAB-FBC",
    "display" : "Full blood count (FBC)",
    "definition" : "Haematology panel."
  },
  {
    "code" : "LAB-CHEM-PAN",
    "display" : "Chemistry panel (basic)",
    "definition" : "Basic metabolic or chemistry set."
  },
  {
    "code" : "LAB-LFT",
    "display" : "Liver function tests (LFT)",
    "definition" : "Liver enzyme panel."
  },
  {
    "code" : "LAB-RFT",
    "display" : "Renal function tests (RFT)",
    "definition" : "Kidney function panel."
  },
  {
    "code" : "LAB-CRP",
    "display" : "C-reactive protein (CRP)",
    "definition" : "Inflammatory marker."
  },
  {
    "code" : "LAB-HBA1C",
    "display" : "HbA1c",
    "definition" : "Glycated haemoglobin test."
  },
  {
    "code" : "LAB-MAL-RDT",
    "display" : "Malaria rapid test (RDT)",
    "definition" : "Point-of-care malaria test."
  },
  {
    "code" : "LAB-URINE-ROUT",
    "display" : "Urinalysis (routine)",
    "definition" : "POCT or lab urinalysis."
  },
  {
    "code" : "LAB-PREG",
    "display" : "Pregnancy test (hCG)",
    "definition" : "Qualitative hCG."
  },
  {
    "code" : "IMG-XR",
    "display" : "X-ray (XR) single view",
    "definition" : "One anatomical region, single view."
  },
  {
    "code" : "IMG-US",
    "display" : "Ultrasound (US) single study",
    "definition" : "Abdominal/obstetric or other US."
  },
  {
    "code" : "IMG-CT",
    "display" : "CT scan (region)",
    "definition" : "CT of a specified region."
  },
  {
    "code" : "IMG-MRI",
    "display" : "MRI scan (region)",
    "definition" : "MRI of a specified region."
  },
  {
    "code" : "IMG-ECHO",
    "display" : "Echocardiography",
    "definition" : "Cardiac ultrasound."
  },
  {
    "code" : "IMG-ECG",
    "display" : "ECG (12-lead)",
    "definition" : "Standard electrocardiogram."
  },
  {
    "code" : "DRG-OPD",
    "display" : "Dispensed medicines (OPD)",
    "definition" : "Retail/outpatient drug line items."
  },
  {
    "code" : "DRG-INP",
    "display" : "Dispensed medicines (inpatient)",
    "definition" : "Ward pharmacy drug line items."
  },
  {
    "code" : "VAC-ADMIN",
    "display" : "Vaccine administration fee",
    "definition" : "Service fee for immunization."
  },
  {
    "code" : "VAC-PROD",
    "display" : "Vaccine product",
    "definition" : "Vaccine dose product cost."
  },
  {
    "code" : "CONS-GEN",
    "display" : "General consumables",
    "definition" : "Syringes, gloves, dressings, cannulas."
  },
  {
    "code" : "OXY-HR",
    "display" : "Oxygen therapy (per hour)",
    "definition" : "Medical oxygen use."
  },
  {
    "code" : "DEV-RENT",
    "display" : "Device rental (short-term)",
    "definition" : "E.g., nebulizer, suction machine."
  },
  {
    "code" : "HM-CARE",
    "display" : "Home care visit",
    "definition" : "Home nursing/home-based care."
  },
  {
    "code" : "REH-PHYSIO",
    "display" : "Physiotherapy session",
    "definition" : "Single physio visit."
  },
  {
    "code" : "REH-OT",
    "display" : "Occupational therapy session",
    "definition" : "Single OT visit."
  },
  {
    "code" : "REH-SPEECH",
    "display" : "Speech therapy session",
    "definition" : "Single speech therapy visit."
  },
  {
    "code" : "AMB-TRNS",
    "display" : "Ambulance transport (one-way)",
    "definition" : "Facility-to-facility or scene-to-facility."
  },
  {
    "code" : "ADM-CLAIM",
    "display" : "Administrative/claim handling fee",
    "definition" : "Processing/admin fee per policy."
  },
  {
    "code" : "ADM-CO-PAY",
    "display" : "Co-payment",
    "definition" : "Member co-pay amount line."
  }]
}

```
