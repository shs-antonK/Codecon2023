// ------------------------------------------------------------------
/* PROFILE - Procedure */
// ------------------------------------------------------------------

Profile: CodeconProcedure
Parent: Procedure
Id: shs-codecon-procedure
Title: "SHS - Codecon - Procedure"
Description: "An action that is or was performed on or for a patient. This can be a physical intervention like an operation, or less invasive like long term services, counseling, or hypnotherapy."
* ^name = "SHS_Codecon_Procedure"
* ^status = #draft
* subject 1..1
* subject only Reference(shs-codecon-patient)
* subject.identifier ..0
* subject.display ..0
* subject.display ^extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable"
* subject.display ^extension.valueBoolean = true
* encounter 0..1
* performedPeriod 1..1
* performedPeriod only Period
* performedPeriod ^sliceName = "performedPeriod"
* performedPeriod.start 1..1
* performedPeriod.end 0..1
* report.identifier ..0
* report.display ..0
* report.display ^extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable"
* report.display ^extension.valueBoolean = true