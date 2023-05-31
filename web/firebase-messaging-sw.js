importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js");
const firebaseConfig = {
    apiKey: "AIzaSyCq3sA2gjHmiuxGAIA6ikFD9ILJHsB1NV8",
    authDomain: "the-wagon-house-9314a.firebaseapp.com",
    projectId: "the-wagon-house-9314a",
    storageBucket: "the-wagon-house-9314a.appspot.com",
    messagingSenderId: "482125193930",
    appId: "1:482125193930:web:ef7823520ecacf8d404a33",
    measurementId: "G-JWDKWEHC6L"
};
firebase.initializeApp(firebaseConfig);

const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
    console.log("onBackgroundMessage", message);
});