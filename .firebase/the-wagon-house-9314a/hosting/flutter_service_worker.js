'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"build/web/flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"build/web/index.html": "ae29923e1b76c3a8d16d2c449149f576",
"/": "a1328afb076ac16091cf1221aa3ffbff",
"build/web/canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"build/web/canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"build/web/canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"build/web/canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"build/web/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"build/web/assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"build/web/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"build/web/assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"build/web/assets/NOTICES": "259068529bed6e57beac74e9760f7147",
"build/web/assets/AssetManifest.json": "2efbb41d7877d10aac9d091f58ccd7b9",
"build/web/manifest.json": "39917157b3a71cdf6169bcb599f6688c",
"build/web/version.json": "653f8d699cae753e57f364f438426215",
"build/web/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"build/web/icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"build/web/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"build/web/icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"build/web/main.dart.js": "939338bf718df780320d9dc48198afa1",
"index.html": "cea35ec598cf151f51d65ea7c76029e0",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"test/widget_test.dart": "42098e92aaafd82a7ea3c62aefc2cb08",
".idea/workspace.xml": "cc5f609be0f96835c87839f62217d14b",
".idea/modules.xml": "e72da55f06a86681f7e2c05ffedac3fa",
".idea/runConfigurations/main_dart.xml": "2b82ac5d547e7256de51268edfd10dc3",
".idea/libraries/KotlinJavaRuntime.xml": "4b0df607078b06360237b0a81046129d",
".idea/libraries/Dart_SDK.xml": "f7eff86613e517088466c3ce219b4ef1",
"pubspec.yaml": "23ffe169031bfad9e4ea698809772ae2",
".dart_tool/package_config_subset": "5e268481598a35bd9a6329eac26a3095",
".dart_tool/package_config.json": "599c5aaf53a0ebfe426a1757f57458f0",
".dart_tool/dartpad/web_plugin_registrant.dart": "7ed35bc85b7658d113371ffc24d07117",
".dart_tool/version": "f7a307d5d6b1748af3468afbea376c25",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/web_release_bundle.stamp": "30780010fa4fbda718d0ed2062478d39",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/web_entrypoint.stamp": "3df61d87f6f7c54c7df5d91bad3425a4",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/flutter_assets.d": "0ca6aa2f0d742e72b5040fd59fda57c8",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/app.dill.deps": "6e8980241ad4ec348794cb71a8df7bd3",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/app.dill": "9772044a15aa7dbff2cb04c7d5b6f4b9",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/main.dart.js.deps": "3581b1df514f69bb81aebdeab5a55a2c",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/gen_localizations.stamp": "436d2f2faeb7041740ee3f49a985d62a",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/main.dart": "bddd924757252b9e7999fe335473eccd",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/web_plugin_registrant.dart": "7ed35bc85b7658d113371ffc24d07117",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/web_service_worker.stamp": "21e6359ef0766f78b28cc19274644067",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/web_resources.d": "5d2dacb9f3dfb8ba9a925ed0ff5b7df0",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/outputs.json": "07176554d245728645dec3052a8d18f0",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/main.dart.js": "939338bf718df780320d9dc48198afa1",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/dart2js.stamp": "ac732846d743bc6b255234bb292d0bd8",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/web_static_assets.stamp": "436d2f2faeb7041740ee3f49a985d62a",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/dart2js.d": "46ee4dc58eacafd2b6d776f8de9b5c74",
".dart_tool/flutter_build/18dac84980d7fb92b153d21a8ca111e5/service_worker.d": "0c00baa63f5a34d8e993f4dfe5c37f8e",
"favicon.png": "6b644b8dbed9e587ef6c6ad44fae06e1",
"web/index.html": "a1328afb076ac16091cf1221aa3ffbff",
"web/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"web/manifest.json": "39917157b3a71cdf6169bcb599f6688c",
"web/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"web/icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"web/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"web/icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"README.md": "59c1627159aa563e9bcc21d6bce1fbe6",
"lib/main.dart": "c394d0f5456ce3bf6b7e861623ccd8e0",
"firebase-messaging-sw.js": "c1131c387c4610833086641f1f032dbf",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/privicypolicy.html": "afe2d52785e41d690c5e1553299ed3e9",
"assets/assets/dada.png": "6b644b8dbed9e587ef6c6ad44fae06e1",
"assets/assets/profile.png": "ad66a178e46ad661d25a4da705bc1326",
"assets/assets/bg1.jpg": "c2f166a115c065b5a4e1dc95fa527245",
"assets/assets/ring.png": "4e9a02d9751eb80d2df2f81ad20cd623",
"assets/assets/fuel.svg": "d2daa2040e84fbd22fef5dea7f5fd6d5",
"assets/assets/suv.png": "5d884177e37859db241ade15d22f6396",
"assets/assets/addcar.png": "8b69ee7d255d8a684e5db1d395672319",
"assets/assets/Bg.jpg": "009ce99e2bf6c8be2943ad32642a18a2",
"assets/assets/star.svg": "5dd2b1f5ef0fb826d3859332d79e4370",
"assets/assets/bell.png": "99da48ff7b6e9ddceb3c79471c2a9ab2",
"assets/assets/milage.svg": "41e66da32a57eeb690ab4b386338e25d",
"assets/assets/engine.svg": "0c3e2d16f1f2a5a43abc85144a958d06",
"assets/NOTICES": "9e732e4a449141bfeb980a1f8b326de8",
"assets/AssetManifest.json": "68c3225a1d145d1d70af3e4550ec4491",
"manifest.json": "6abda15d61f5b08ba04c739fa1447349",
"version.json": "deeb1ead2a0cf510bd63e89e8708336e",
"analysis_options.yaml": "90ca05185a2de012cebf6fb9f85f3598",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"main.dart.js": "43ec611bea978129b0944fa31b74a462",
"the_wagon_house_9314a.iml": "731a1a3080009db8d4572ef3fb1679c3",
"pubspec.lock": "064b716989365649dbe6401c3b824594",
"favicon1.png": "5dcef449791fa27946b3d35ad8803796"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
