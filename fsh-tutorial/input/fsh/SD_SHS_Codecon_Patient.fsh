Profile: CodeconPatient
Parent: Patient
Id: shs-codecon-patient
Title: "SHS - Codecon -  Patient"
Description: "Basic descriptive information to identify the patient, like patient name, patient identifier, birthdate / age, sex."
* ^name = "SHS_Codecon_Patient"
* ^meta.versionId = "1"
* ^status = #draft
* id 1..1 MS 
* active 0..1 MS
* name
  * family 0..1 MS
  * given 0..* MS
  * prefix ..0
  * suffix ..0
* gender 0..1
* birthDate 1..1 MS
* birthDate only date
* deceased[x] 0..1 MS
* deceased[x] only boolean or dateTime
