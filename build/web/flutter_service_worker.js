'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "06a62c44f93a55f3085b1a66e9508992",
"assets/AssetManifest.bin.json": "b27aff394037d144e3e8602ec69be1fb",
"assets/AssetManifest.json": "292872eb858551e3ea1a4a1f67b31f6a",
"assets/assets/background/background.jpg": "2ef64a8b0c6038bb9093bfcf7360c327",
"assets/assets/fonts/SquarePeg-Regular.ttf": "724233d9c78eb65caf39dac7d26a3a9e",
"assets/assets/fonts/Ubuntu-Medium.ttf": "d3c3b35e6d478ed149f02fad880dd359",
"assets/assets/fonts/VarelaRound-Regular.ttf": "3c3c18c24b0bd85a303bc3f2581d53fc",
"assets/assets/icons/About.png": "e01a276d959e45e83b0a1792980d2fef",
"assets/assets/icons/call.png": "d9c37add5429e032a11267cb285bc1f2",
"assets/assets/icons/Education.png": "1c09d582c8f0b5f03f5697411dd4e199",
"assets/assets/icons/email.png": "cc268493639212a97de196385e7085e3",
"assets/assets/icons/github.png": "c3f0b745f2e445f791d4ba8cf773e76e",
"assets/assets/icons/Home.png": "91eb4cff26c1fe5c755a6b879c2a2b36",
"assets/assets/icons/linkedin.png": "32f0a9fc240622ed9d80e86dc9c6791a",
"assets/assets/icons/location.png": "428f7f156e15135c7d8d17e937ff2e05",
"assets/assets/icons/Projects.png": "2ffcbdd4c326284b08eee43b244141a3",
"assets/assets/icons/Skills.png": "04a4bb532b6d4d97c000659fdaae98e1",
"assets/assets/icons/twitter.png": "98ba9ef1bab201ea22381b8caf7b19f0",
"assets/assets/icons/whatsapp.png": "0d8e3c8649881a9499369990c6bbd79d",
"assets/assets/images/coding.gif": "136b27f4fec1f3a417749f951152ac46",
"assets/assets/images/image%25201.jpg": "563286c77fb597f3d6e8128558b65876",
"assets/assets/images/image%25202.jpg": "4ceb41aeb1d54628b5e5717fa20ac7b0",
"assets/assets/images/image%25203.jpg": "2ebe64988b0193e1415a8ad183c1573f",
"assets/assets/images/profile.png": "b0990315d0144d9de72ad63e7c2474ac",
"assets/assets/images/skills.gif": "8fc0a4935bba30edbb7197ef6cc763c6",
"assets/assets/json/hi.json": "a45511bbe4baa0cf49b177353962ebb3",
"assets/assets/json/welcome.json": "8c6a66f217ac0a359298c9f26cbca549",
"assets/assets/projects/gst.png": "a704a2ccdea1ab9c92ccdd74680dbd17",
"assets/assets/projects/gst_Cal.png": "c8095522dde8c12efdd3bf48535f6d16",
"assets/assets/projects/quickadd.png": "ff63f3dd3a80d943425a128e88100c71",
"assets/assets/projects/student_percentage.png": "e8fd680faa26af04ba77e3db05f9ff09",
"assets/assets/projects/weather.png": "ca49a949207ff08591a725ee89bbc96c",
"assets/FontManifest.json": "7cfcf1dcde38ff0c706ef1b69326f1ba",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "7ad643a6e33196d3d05d450b02923341",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.ico": "efa9b6a02f654dfb79025cd8f83b1ad8",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "10b051e9c2b23c965081f9398b0ae344",
"icons/Icon-512.png": "46a5c8b6e57aa3da608a2050cfa8d276",
"icons/Icon-maskable-192.png": "10b051e9c2b23c965081f9398b0ae344",
"icons/Icon-maskable-512.png": "46a5c8b6e57aa3da608a2050cfa8d276",
"index.html": "64e8e2d84806c327bec99a01aa26fe76",
"/": "64e8e2d84806c327bec99a01aa26fe76",
"main.dart.js": "fbaacc6c035994ed9ca8db7f1cad79c7",
"manifest.json": "137ffbb6c5630759eec503b383d6e673",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
