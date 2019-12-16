%dw 2.0
output application/json
var creditScore = payload.creditScore
var loanAmount = payload.loanAmount
---
(
	if(creditScore as Number > 800) true else 
		if(creditScore as Number > 700 and loanAmount as Number < 200000) true else 
			if(creditScore as Number > 650 and loanAmount as Number < 100000) true else false
)