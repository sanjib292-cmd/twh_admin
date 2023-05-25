importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js");
const firebaseConfig = {
    apiKey: "AIzaSyAvJ7Ff9ikVZLqdcseDYNpprTAYH-lvKls",
    authDomain: "twsassam.firebaseapp.com",
    projectId: "twsassam",
    storageBucket: "twsassam.appspot.com",
    messagingSenderId: "355531562824",
    appId: "1:355531562824:web:14ff12686e933f95e59d7d"
};
firebase.initializeApp(firebaseConfig);

const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
    console.log("onBackgroundMessage", message);
});