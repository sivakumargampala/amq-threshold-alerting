# mq-threshold-alert

Alerting capabilities for Anypoint MQ queues are not available at this point in Anypoint Platform.    This API has been built containing a scheduled job that will run on a regular configurable interval that gets the current queue depth of all queues within an environment.    The queue depths are compared against configured thresholds, and will generate a custom notification if any of the queues exceed the threshold.    This custom notifcation is then pulled in from the Runtime Manager alerts, and emails are sent to the teams responsible for troubleshooting.

## Properties
- **mq.alert.interval** - Batch schedule used to run the depth check.   This is measured in minutes.
- **mq.alert.default.warning**- The default queue depth needed to trigger a warning alert.
- **mq.alert.default.critical** - The default queue depth needed to trigger a critical alert.
- **mq.individual.threshold** - A commad delimited list of queues with corresponding warning and critical thresholds separated by ":".   This fields should be used when customized thresholds are needed at the queue level.       Example ("dev-test-queue:50:100, dev-orders-queue:25:50").
```
Format: [queue name]:[warning threshold]:[critical threshold],[queue name]:[warning threshold]:[critical threshold]
```

## Configuring Alerts

The alerts must be configured for the application that is running the scheduled job.   The scheduled job uses a custom application notification to trigger the alert.
