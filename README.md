ToggleNotifications
===

> Simple Toggle switch to enable/disable push notifications in your app.

The sample application demonstrate how you can enable or disable push notification in your app.

The code makes use of a toggle switch.
The status of the switch determines whether the application shall receive notification or not.

######Two function calls are defined in AppDelegate for registering/unregistering your app to receive notifications.

- `registerAppForNotifications`
	This enables app to receive notifications.
- `unregisterAppForNotifications` 	This disables notifications in the app.


#### AppDelegate
- On `didFinishLaunchingWithOptions`, the `shouldRecieveNotifications` call determines whether the app has registered for notification based on a preset value.
if the preset is not present, the app registers itself for notifications and set the preset.


#### ViewController
- On `viewDidLoad`, the `setNotificationSwitch` determines the switch status depending upon the preset value.
- Toggling the switch will `enable(ON)`/`disable(OFF)` the reception of push notification.




	