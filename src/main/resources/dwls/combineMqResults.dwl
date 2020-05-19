%dw 2.0
output application/json
---
vars.fullResults ++ [
	{
    		queueId: payload.,
    		policies: payload.policies.template.assetId
	}
]