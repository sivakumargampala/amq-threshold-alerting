%dw 2.0
output application/json
---
{
	"username": p('secure::mule.api.username'),
	"password": p('secure::mule.api.password')
}