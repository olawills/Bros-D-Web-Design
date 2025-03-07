'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "1a288e5e7fc1a2502e3398adaa3203cd",
"version.json": "c82f5ffc06f305af3ad8bf6f70b30de1",
"index.html": "2fcc5c666712bc38a7034248b67fa393",
"/": "2fcc5c666712bc38a7034248b67fa393",
"main.dart.js": "e021f89bc15575bca6ed976db533ee13",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "89f81b95750a030777d73e9ed23f934b",
"assets/AssetManifest.json": "23de7d9003f455d6a1f1df0f25ca3c56",
"assets/NOTICES": "a28ab95abd85334b3b9aeb986759f678",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/AssetManifest.bin.json": "3ea29eab041e10b9f80d5a3030d84613",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "20846c3257ac040014d3773709aecad0",
"assets/fonts/MaterialIcons-Regular.otf": "8e236aa085e49ecf59c12f0f5b216f90",
"assets/assets/images/logistic.png": "27f004ec0a91f564bd1ea7682f354cdf",
"assets/assets/images/event.png": "4308bd2666d6ddbb2ee99b2b0e1fb5f3",
"assets/assets/images/8.png": "d8421c4c113de1a2e56a068327724c79",
"assets/assets/images/mechanic.png": "f1cfbe10999c9c74a0c897185b8d9ac4",
"assets/assets/images/9.png": "e0bbaffd79237e4aea3880a2e21e9858",
"assets/assets/images/14.png": "4dd58c4972292ea2e79cfcf6cf5ae37c",
"assets/assets/images/15.png": "bb39d40e571c332bd38fbe06117df6be",
"assets/assets/images/map.png": "b27d04c4f79928a9779ef67ac9dda657",
"assets/assets/images/17.png": "c47872d7254dba9484b9369807781162",
"assets/assets/images/16.png": "94def7d010908a43e70da0bda2a72ac9",
"assets/assets/images/electrical.png": "4dd58c4972292ea2e79cfcf6cf5ae37c",
"assets/assets/images/12.png": "92d164bb167c7248d02aa44423ab2fbb",
"assets/assets/images/craft.png": "2404019566578d5a43d4fc492fad27f6",
"assets/assets/images/13.png": "27f004ec0a91f564bd1ea7682f354cdf",
"assets/assets/images/11.png": "64d328f9cdd1841cac898799d0f28232",
"assets/assets/images/bros-d.png": "fe3210bc1adb7c5b7fff57a6ebe224af",
"assets/assets/images/socials.png": "6f439701d711b3f968e17f9c027eb6c3",
"assets/assets/images/10.png": "449a431a3c8465e9a8555a67c28d214d",
"assets/assets/images/electronics.png": "bb39d40e571c332bd38fbe06117df6be",
"assets/assets/images/unskilled.png": "387ebbb372d6329cf33c2270711be750",
"assets/assets/images/enginerring.png": "92d164bb167c7248d02aa44423ab2fbb",
"assets/assets/images/creative.png": "64d328f9cdd1841cac898799d0f28232",
"assets/assets/images/homeservice.png": "076b3b5d7393d67c31c041c6bc27832a",
"assets/assets/images/4.png": "63a68adaa03a36be534c4bec07fdc20b",
"assets/assets/images/playstore.png": "98e18607895790655716b88012d55f17",
"assets/assets/images/5.png": "c9128c025495cfb8091340aac0a668e6",
"assets/assets/images/construction.png": "de6403f769339c260c7d12b4251d04f2",
"assets/assets/images/domestic.png": "a3c405fcf674c1667706a1f4b8a884f5",
"assets/assets/images/7.png": "6b59ab0ebf2a98706c630b4a74fef99c",
"assets/assets/images/6.png": "0c5ed9a36d26c94ddae5da9f867c68f3",
"assets/assets/images/phone1.png": "4ee669369af067fb7bfbc6f95dd2e636",
"assets/assets/images/2.png": "ea871f13b5c908a4c23ddb513fdf5df0",
"assets/assets/images/3.png": "f9a8d94ff4341973bebf480cc7729f8c",
"assets/assets/images/phone2.png": "8fbf03ae30ac24ed3c5acabc0bae2124",
"assets/assets/images/1.png": "faca7b491f1f8bb6ec26912b49c9749a",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
