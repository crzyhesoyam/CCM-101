# Mission 6 Reflection

## 1. Compose vs. manual commands

A Compose file lets me describe the whole application in one place and launch it with a single command. Instead of typing a long `docker run` command for each container and remembering every flag, port, and network setting, I wrote the configuration once and could repeat it exactly. This reduces human error, makes deployments consistent, and lets the file be stored in GitHub, reviewed, and shared like any other code.

## 2. Indentation errors in YAML

YAML uses indentation to define structure, and it does not allow tabs for indentation. A tab or misaligned line causes a parsing error, so Docker Compose refuses to run, or it may read the structure incorrectly and place settings under the wrong service. Careful spacing is therefore essential.

## 3. Why environment variables?

Environment variables let us configure containers without changing the image itself. The database uses them to create its user, password, and database name, while the Nextcloud container uses the same values to connect. This keeps configuration separate from the application and makes the setup reusable. In a real project, secrets would be kept out of the file, for example in a `.env` file.

## 4. Deploying Nextcloud in minutes

It felt impressive and a bit surprising. Software that normally needs careful installation and database setup was running in minutes, and seeing the Nextcloud setup page appear after one command showed me how powerful containers and Infrastructure as Code are.

## 5. How my understanding has evolved

In Mission 1, I saw cloud computing mostly as remote servers and storage. Since then I have learned about cloud-native tools, containers, data storage, and now multi-tier deployments. I now understand that cloud computing is about automation, repeatability, and treating infrastructure as code rather than managing servers by hand.
