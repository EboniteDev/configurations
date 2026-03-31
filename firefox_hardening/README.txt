		+--------------------------+
		|ENABLE THE PREFERENCES .JS|
		+--------------------------+
The user.js is the arkenfox user.js from github (February 20 2026).

To save the preferences copy the user*.js files inside your profile root.
The location should be something like this: /home/USER/.mozilla/firefox/123abcd4.default-release-1

The user-overrides.js is a collection of preferences overrides that modify separately the arkenfox user.js
To override them without installing any script or updater simply run this command:
				user-overrides.js >> user.js # it concatenates to the end of the user.js the overrides
