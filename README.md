# PDX-Steam-Workshop-Publisher-Action

Automatically upload your Hearts of Iron IV (support for more Paradox games to come) mod to Steam Workshop.

*Readme will be extended soon.*

## Configuration

### steamLogin (required)
The login for Steam account.

### steamPassword (required)
The password for Steam account. Make sure to use a secret.

### PDXLogin (required)
The email for Paradox account.

### PDXPassword (required)
The password for Paradox account. Make sure to use a secret.

### googleAPICredentials (required)
Google API credentials. Check [Yard1/docker-steamcmd-gmail](https://github.com/Yard1/docker-steamcmd-gmail) for information on how to obtain this. Make sure to use a secret.

### googleClientSecret (required)
Google API client secret. Check [Yard1/docker-steamcmd-gmail](https://github.com/Yard1/docker-steamcmd-gmail) for information on how to obtain this. Make sure to use a secret.

### modPath (required)
The path in `$GITHUB_WORKSPACE` to the mod directory.

### steamSentryFileName (optional)
The name of the Steam Sentry file (ssfn*). If provided alongside *steamSentryFileHex*, Steam will attempt to use it instead of requiring Steam Guard authentication again. Make sure to use a secret.

### steamSentryFileHex (optional)
The Steam Sentry file in plain hex form, following the same format `xxd -p` uses. If provided alongside *steamSentryFileName*, Steam will attempt to use it instead of requiring Steam Guard authentication again. Make sure to use a secret.

### descriptionPath (optional)
The path in `$GITHUB_WORKSPACE` to a text file containing mod description.

### debugImagePath (optional)
The path in `$GITHUB_WORKSPACE` to a folder where debug images will be saved (eg. to upload them as artifacts for review in case of failure).

## Credits

Created by Antoni Baum ([Yard1](https://github.com/Yard1)).

Paradox Launcher by Paradox Interactive.