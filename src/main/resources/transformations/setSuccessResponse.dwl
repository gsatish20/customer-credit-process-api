%dw 2.0
output application/json
---
{
	"customerDetails" : {
		"firstName" : payload.firstName,
		"lastName" : payload.lastName,
		"middleName" : payload.middleName,
		"SSN" : payload.ssn,
		"creditScore" : payload.creditScore,
		"decission" : if(vars.decision) "approved" else "not approved"
	}
}