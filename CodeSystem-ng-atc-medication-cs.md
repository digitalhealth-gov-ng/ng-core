# NG Local ATC Medication Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Local ATC Medication Codes**

## CodeSystem: NG Local ATC Medication Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-atc-medication-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgATCLocalMedicationCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.4 | |

 
Local ATC. Codes are placeholders aligned to common maternal, newborn, and child health needs, plus EPI vaccines. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Local ATC — All Medications](ValueSet-ng-atc-all-medications-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-atc-medication-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-atc-medication-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.4"
  }],
  "version" : "0.0.0",
  "name" : "NgATCLocalMedicationCS",
  "title" : "NG Local ATC Medication Codes",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Local ATC. Codes are placeholders aligned to common maternal, newborn, and child health needs, plus EPI vaccines.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 49,
  "concept" : [{
    "code" : "A11-IFA",
    "display" : "Iron–Folic Acid tablets (30/0.4 mg)",
    "definition" : "Daily antenatal iron–folate for anemia prevention."
  },
  {
    "code" : "A11-FA-5",
    "display" : "Folic acid 5 mg tablet",
    "definition" : "High-dose folate per protocol."
  },
  {
    "code" : "A12-CALC",
    "display" : "Calcium carbonate 500 mg tablet",
    "definition" : "Calcium supplementation to reduce pre-eclampsia risk."
  },
  {
    "code" : "B03-FE-SULF",
    "display" : "Ferrous sulfate 200 mg (65 mg elemental) tablet",
    "definition" : "Treatment of iron-deficiency anemia."
  },
  {
    "code" : "A11-MV-PREN",
    "display" : "Prenatal multivitamin",
    "definition" : "Combined antenatal vitamin/mineral tablet."
  },
  {
    "code" : "A11-VITA-100",
    "display" : "Vitamin A 100,000 IU capsule",
    "definition" : "For post-partum/child dosing per guideline."
  },
  {
    "code" : "A11-VITA-200",
    "display" : "Vitamin A 200,000 IU capsule",
    "definition" : "For post-partum/child dosing per guideline."
  },
  {
    "code" : "G02-OXY",
    "display" : "Oxytocin 10 IU/mL injection",
    "definition" : "Active management of third stage, PPH prevention/treatment."
  },
  {
    "code" : "G02-MISO",
    "display" : "Misoprostol 200 mcg tablet",
    "definition" : "PPH prevention/treatment where oxytocin unavailable."
  },
  {
    "code" : "A12-MGSO4",
    "display" : "Magnesium sulfate injection",
    "definition" : "Severe pre-eclampsia/eclampsia management (loading/maintenance)."
  },
  {
    "code" : "C02-METHYLDOPA",
    "display" : "Methyldopa 250 mg tablet",
    "definition" : "Antihypertensive in pregnancy per protocol."
  },
  {
    "code" : "C08-NIFEDIPINE",
    "display" : "Nifedipine 10 mg capsule",
    "definition" : "Acute BP control in severe hypertension (per protocol)."
  },
  {
    "code" : "J01-AMX-DT",
    "display" : "Amoxicillin 250 mg dispersible tablet",
    "definition" : "Child pneumonia/OTIT treatment; community case mgmt."
  },
  {
    "code" : "J01-AMOX-CAP",
    "display" : "Amoxicillin 500 mg capsule",
    "definition" : "Adult/maternal infections per protocol."
  },
  {
    "code" : "J01-AMP",
    "display" : "Ampicillin injection",
    "definition" : "Neonatal sepsis first-line (with gentamicin)."
  },
  {
    "code" : "J01-GENTA",
    "display" : "Gentamicin injection",
    "definition" : "Neonatal sepsis first-line (with ampicillin)."
  },
  {
    "code" : "J01-CEFTRI",
    "display" : "Ceftriaxone injection",
    "definition" : "Severe infections; inpatient use per protocol."
  },
  {
    "code" : "J01-CLX",
    "display" : "Cloxacillin 500 mg capsule",
    "definition" : "Skin/soft tissue and mastitis per protocol."
  },
  {
    "code" : "J01-METRO",
    "display" : "Metronidazole 400 mg tablet",
    "definition" : "Anaerobic/obstetric infections per protocol."
  },
  {
    "code" : "J06-ANTI-D-IG",
    "display" : "Anti-D immunoglobulin",
    "definition" : "Rh-D negative prophylaxis for sensitizing events."
  },
  {
    "code" : "J01-ERYTHRO",
    "display" : "Erythromycin 250 mg tablet",
    "definition" : "Alternative macrolide; PPROM/GBS contexts per protocol."
  },
  {
    "code" : "A07-ORS",
    "display" : "Oral rehydration salts (sachet)",
    "definition" : "Acute diarrhea rehydration."
  },
  {
    "code" : "A07-ZINC20",
    "display" : "Zinc sulfate 20 mg tablet",
    "definition" : "Adjunct for pediatric diarrhea (10–14 days)."
  },
  {
    "code" : "N02-PARA-SYR",
    "display" : "Paracetamol 125 mg/5 mL syrup",
    "definition" : "Fever/pain management in children."
  },
  {
    "code" : "R03-SALB-INH",
    "display" : "Salbutamol 100 mcg inhaler",
    "definition" : "Wheeze/asthma relief in MNCH contexts."
  },
  {
    "code" : "P01-ACT-AL",
    "display" : "ACT: Artemether–Lumefantrine",
    "definition" : "First-line uncomplicated malaria (weight-based)."
  },
  {
    "code" : "P01-ACT-DHA-PPQ",
    "display" : "ACT: Dihydroartemisinin–Piperaquine",
    "definition" : "Alternative ACT per national guideline."
  },
  {
    "code" : "P01-SP",
    "display" : "Sulfadoxine–Pyrimethamine (SP)",
    "definition" : "IPTp in pregnancy per schedule."
  },
  {
    "code" : "P02-ALB",
    "display" : "Albendazole 400 mg tablet",
    "definition" : "Antenatal deworming per protocol."
  },
  {
    "code" : "G03-LNG-EC",
    "display" : "Levonorgestrel 1.5 mg (EC)",
    "definition" : "Emergency contraception (single dose)."
  },
  {
    "code" : "G03-DMPA-IM",
    "display" : "DMPA 150 mg/mL IM injection",
    "definition" : "3-monthly injectable contraceptive."
  },
  {
    "code" : "G03-DMPA-SC",
    "display" : "DMPA 104 mg/0.65 mL SC",
    "definition" : "3-monthly SC contraceptive (sayana-type)."
  },
  {
    "code" : "G03-ETON-IMP",
    "display" : "Etonogestrel implant",
    "definition" : "Long-acting reversible contraception."
  },
  {
    "code" : "G03-COC",
    "display" : "Combined oral contraceptive (LNG/EE)",
    "definition" : "Daily combined pill per protocol."
  },
  {
    "code" : "D08-CHX-7",
    "display" : "Chlorhexidine 7.1% digluconate gel",
    "definition" : "Umbilical cord care (4% free CHX equivalent)."
  },
  {
    "code" : "J07-BCG",
    "display" : "BCG vaccine",
    "definition" : "At birth — TB prevention."
  },
  {
    "code" : "J07-OPV",
    "display" : "OPV vaccine",
    "definition" : "Oral polio per schedule."
  },
  {
    "code" : "J07-IPV",
    "display" : "IPV vaccine",
    "definition" : "Inactivated polio per schedule."
  },
  {
    "code" : "J07-PENTA",
    "display" : "Pentavalent DTP-HepB-Hib vaccine",
    "definition" : "Primary series per schedule."
  },
  {
    "code" : "J07-PCV",
    "display" : "Pneumococcal conjugate vaccine",
    "definition" : "PCV10/13 per national schedule."
  },
  {
    "code" : "J07-ROTA",
    "display" : "Rotavirus vaccine",
    "definition" : "Rotavirus per schedule."
  },
  {
    "code" : "J07-MR",
    "display" : "Measles-Rubella vaccine",
    "definition" : "MR at 9/15 months per schedule."
  },
  {
    "code" : "J07-YF",
    "display" : "Yellow fever vaccine",
    "definition" : "Yellow fever per schedule."
  },
  {
    "code" : "J07-HPV",
    "display" : "HPV vaccine",
    "definition" : "Girls/boys per national program."
  },
  {
    "code" : "J07-TD",
    "display" : "Tetanus-diphtheria (Td) vaccine",
    "definition" : "Adolescent/maternal protection."
  },
  {
    "code" : "R01-ORS-ZINC-KIT",
    "display" : "ORS + Zinc kit",
    "definition" : "Community diarrhea pack for claims/prescription."
  },
  {
    "code" : "J01-AMP-GEN-COMB",
    "display" : "Ampicillin + Gentamicin regimen (neonatal)",
    "definition" : "Combined line item for neonatal sepsis claims."
  },
  {
    "code" : "A10-INSULIN-NPH",
    "display" : "Insulin NPH",
    "definition" : "Gestational diabetes—basal insulin per protocol."
  },
  {
    "code" : "A10-METFORMIN",
    "display" : "Metformin 500 mg tablet",
    "definition" : "GDM/T2DM per national guideline and obstetric advice."
  }]
}

```
