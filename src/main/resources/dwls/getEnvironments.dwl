%dw 2.0
output application/json
---
vars.envs.data filter ((itm, ndx) -> itm.name != 'Design') map() -> {
    id: $.id,
    name: lower($.name),
    isProd: $.isProduction,
    apiPrefix: if ($.name == "Development") "dev-" else if ($.name == "QA") "qa-" else ""
}