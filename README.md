# PDX-Steam-Workshop-Publisher-Action

Automatically upload your Hearts of Iron IV (support for more Paradox games to come) mod to Steam Workshop.

Only email Steam Guard is supported. You need to configure a POP3 server on your email account so that the script can obtain Steam Guard codes. Passing a Steam Sentry File no longer works reliably.

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

### modPath (required)
The path in `$GITHUB_WORKSPACE` to the mod directory.

### POP3Address (required)
Address to POP3 email server to obtain Steam Guard codes from. Make sure to use a secret.

### POP3User (required)
User of POP3 email server to obtain Steam Guard codes from. Make sure to use a secret.

### POP3Password (required)
Password of POP3 email server to obtain Steam Guard codes from. Make sure to use a secret.

### POP3Port (optional)
Port of POP3 email server to obtain Steam Guard codes from. Defaults to `995`.

### POP3NoSSL (optional)
Set to `true` if the POP3 email server doesn't support SSL. Defaults to `false`.

### descriptionPath (optional)
The path in `$GITHUB_WORKSPACE` to a text file containing mod description.

### debugImagePath (optional)
The path in `$GITHUB_WORKSPACE` to a folder where debug images will be saved (eg. to upload them as artifacts for review in case of failure).

## Credits

Created by Antoni Baum ([Yard1](https://github.com/Yard1)).

Paradox Launcher by Paradox Interactive.