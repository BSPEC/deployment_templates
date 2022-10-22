# Know how to style a MD document properly
[https://www.markdownguide.org/basic-syntax/](https://www.markdownguide.org/basic-syntax/)

## React Native

> For native mobile apps we are using react native, specifically we are using [expo](https://expo.io/) a framework and a platform for universal React applications. It is a set of tools and services built around React Native and native platforms that help you develop, build, deploy, and quickly iterate on iOS, Android, and web apps from the same JavaScript/TypeScript codebase.

> Advantages include faster build and testing workflows/processes, remote testing while developing with Over The Air (OTA) updates with changes visible on save during development.

> However there are some disadvantages and [Limitations](https://docs.expo.io/introduction/why-not-expo/) Expo is aware of these and describes them quite well. we suggest reviewing these limitations before using our pre-built method.

> Build one project that runs natively on all your users' devices.

## Install Expo
* Open a browser and install node.js:
    * Go to: [https://nodejs.org/en/download/](https://nodejs.org/en/download/)
    * Follow the installation instructions and then continue to the next steps

### Windows
* Open new terminal
    * "Windows-Key + R" will show you the 'RUN' box
    * Type "cmd" to open the terminal
```shell
cd <Path To>/<project_slug>

npm install -g expo-cli

npm install

```

### Linux / Mac
* Open new terminal
    * "Control + Option + Shift + T" to open the terminal
```shell
cd <Path To>/<project_slug>

npm install -g expo-cli

npm install

```

### Sign up for Expo Developer (for push notifications)
* If you have not registered for ngrok before:
    * Open a browser and register for ngrok:
        * Go to: [https://expo.dev/signup](https://expo.dev/signup)
            *Or Go to: [https://expo.dev/login](https://expo.dev/login) (if you are already signed up)
        * Follow the installation instructions and then continue to the next steps


### Changing the App URL

> From the template you will be prompted for: `server_base_url` otherwise navigate to the `app.json`


#### run local instance on Public URL with ngrok

> If you are still in development and/or have not chosen a service provider for hosting yet, you could use: [Ngrok](https://ngrok.com/) to create a temporary public development URL that tunnels to your local environment. Ngrok exposes local servers behind NATs and firewalls to the public internet over secure tunnels. This allows you to demo websites on a public URL and test mobile apps connected to your locally running backend, without deploying.

* Start the local development server by following the [Local Environment](#local-environment) instructions

* If you have not registered for ngrok before:
    * Open a browser and register for ngrok:
        * Go to: [https://dashboard.ngrok.com/signup](https://dashboard.ngrok.com/signup)
        * Follow the installation instructions and then continue to the next steps
* If you have already registerd but do not have it installed:
    * Open a browser and register for ngrok:
        * Go to: [https://dashboard.ngrok.com/get-started/setup](https://dashboard.ngrok.com/get-started/setup)
        * download the correct version for your OS and run the application.
* Once the ngrok terminal is open, create a tunnel from your local server to ngrok
    * create the tunnel to ngrok from the:
        * If you have changed the port number from the default `5000`, then replace ths number after `http` to allow for the correct tunnel to be created.
    
```shell
ngrok http 5000

```

* This should return a randomly generated URL that you can now use for testing eg:
```shell
ngrok by @inconshreveable
(Ctrl+C to quit) 
Session Status                online
Session Expires               1 hour, 59 minutes
Version                       2.3.40
Region                        United States (us)
Web Interface                 http://127.0.0.1:4040
Forwarding                    http://573d4ec93267.ngrok.io -> http://localhost:5000
Forwarding                    https://573d4ec93267.ngrok.io -> http://localhost:5000

Connections
ttl     opn     rt1     rt5     p50     p90
0       0       0.00    0.00    0.00    0.00

```

> **Note:** the free version only keeps this server alive for 2 hours, so you may need to follow this process in the future and if you push this URL to your "Repo", it may not work for the next person.


### Run App
* Install the `expo` App on your own mobile phone by searching for "expo" on the Apple or Google Play Store:
    * `iOS` Go to: [https://apps.apple.com/app/apple-store/id982107779](https://apps.apple.com/app/apple-store/id982107779)
    * `Android` Go to: [https://play.google.com/store/apps/details?id=host.exp.exponent](https://play.google.com/store/apps/details?id=host.exp.exponent)

> Once you have the app installed on your phone you can start a development server on your local machine.

### Windows
* Open new terminal
    * "Windows-Key + R" will show you the 'RUN' box
    * Type "cmd" to open the terminal
```shell
cd <Path To>/<project_slug>

expo start

```

### Linux / Mac
* Open new terminal
    * "Control + Option + Shift + T" to open the terminal
```shell
cd <Path To>/<project_slug>

expo start

```

> This will open a webpage with a QR code on it. This will allow you to use the Expo app if you are on Android or use the camera if you are on iOS to scan the code and open your app directly from the development server.

> **Note:** if you wish for people not on your network to be able to scan and test the App remotely; press the `tunnel` tab button above the QR code.

### Deploying to stores
* Open browser and review expo's recommendations to ensure you are ready to deploy:
    * Go to:https://docs.expo.io/distribution/app-stores/
* Open browser and review expo's recommendations on building for the different platforms:
    * Go to:https://docs.expo.io/distribution/building-standalone-apps/

> Part of the recommendations are to ensure that images are optimized. To do this expo has recommended the [expo-optimize package](https://github.com/expo/expo-cli/tree/master/packages/expo-optimize#-welcome-to-expo-optimize) which can assist with optimizing images. Optimizing images can noticeable improve your native app TTI (or time-to-interaction) which means less time on splash screens and quicker delivery over poor network connections

### Windows
* Open new terminal
    * "Windows-Key + R" will show you the 'RUN' box
    * Type "cmd" to open the terminal
```shell
cd <Path To>/<project_slug>

npm install -g sharp-cli

npx expo-optimize --quality 0.9

```

### Linux / Mac
* Open new terminal
    * "Control + Option + Shift + T" to open the terminal
```shell
cd <Path To>/<project_slug>

npm install -g sharp-cli

npx expo-optimize --quality 0.9

```

# License

## Expo Framework

View license information for the Expo Framework and other legal agreements (https://github.com/expo/expo/blob/master/LICENSE).

It is the user's responsibility to ensure that adhere to the Acceptable Use Policy (https://app.serverless.com/legal/aup)
