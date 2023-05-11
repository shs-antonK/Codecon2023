// General file with definitions of examples

// ----------------------
Instance: Patient-1234-1
InstanceOf: shs-codecon-patient

* id = "Patient-1234-1" 
* name
  * family = "Jan"
  * given = "Zdravotny"
* gender = #male
* birthDate = "1955-12-21"
* deceasedBoolean = false

Instance: Patient-1234-2
InstanceOf: shs-codecon-patient

* id = "Patient-1234-2" 
* name
  * family = "Veronika"
  * given = "Nemocna"
* gender = #female
* birthDate = "1960-12-21"
* deceasedDateTime = "2016-01-01"


// ----------------------
// PSA base 
Instance: PSA-1
InstanceOf: shs-codecon-prostate-specific-antigen-psa

* id = "PSA-observation-example"
* subject = Reference(Patient/Patient-1234-1)
* status = #final  
* effectiveDateTime = "2015-03-01"
* code.coding[commonCode] = $SCT#102687007
* valueQuantity.value = 10.33
* valueQuantity.code = #ng/mL
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "ng/mL"