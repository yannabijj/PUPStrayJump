'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "d397c5d37caf41a756b1fbc78faa7d0f",
"assets/AssetManifest.bin.json": "c0f765210ed754c4bc47dc2f06ef0900",
"assets/AssetManifest.json": "418f4429ed5c63f10558b1a4e4f6b773",
"assets/assets/audio/bg.mp3": "6c1389c34fd3b639449cad10e8a50d3b",
"assets/assets/cats/cat1_fall.png": "75cfb0a7a957e1b3006810ed89e223f0",
"assets/assets/cats/cat1_jump.png": "75cfb0a7a957e1b3006810ed89e223f0",
"assets/assets/fonts/DaveysDoodleface.ttf": "944a2b6f684512b360f91e72d8812cbc",
"assets/assets/fonts/pixelsix00.ttf": "2964c8aa368bd3d475436e914233944b",
"assets/assets/images/atlasMap.atlas": "e9c709bb525b6644cb388dddc2457c47",
"assets/assets/images/atlasMap.png": "d6ff0ef788356dca6d827e003a54cc59",
"assets/assets/images/background.png": "e8e14fc564f56d0957824cc0a27708b0",
"assets/assets/images/blackProfile.png": "c919ea95a78b9a21ee37a10d9ec3cc6c",
"assets/assets/images/loki_fall.png": "1f0469eb803b1f27e3a84722333e3ef6",
"assets/assets/images/loki_jump.png": "977e1f3306c5d220e9e447d89f45741a",
"assets/assets/images/mila_fall.png": "36503e66b43b3e300334334e1621a824",
"assets/assets/images/mila_jump.png": "87a62978b89d73c7e665287c63012ff1",
"assets/assets/images/milo_fall.png": "5c15f13c0c3394f2d638c734a35704fa",
"assets/assets/images/milo_jump.png": "5935a4f8c8898902ed7a5adf34754279",
"assets/assets/images/po_fall.png": "8db47ea3305306f97581b0e7eeef3621",
"assets/assets/images/po_jump.png": "16143cbab07df24a4b22e713861271db",
"assets/assets/images/toffee_fall.png": "8dc56d773233e372fb757e21f052ae15",
"assets/assets/images/toffee_jump.png": "ccfbd1068a736f7852495f0ea1857305",
"assets/assets/ui/background.png": "e8e14fc564f56d0957824cc0a27708b0",
"assets/assets/ui/background2.png": "ce1bf0ac2eab69b30aa0330bacef8872",
"assets/assets/ui/BrokenLandPiece_Beige.png": "edc0dd4503fbc477f0da51000a7c1636",
"assets/assets/ui/Characterselectionbg.png": "9b81c0ced1af60f47f779566e74fa6e0",
"assets/assets/ui/csBG1.png": "be91817c09c76b41a60cfc9423719165",
"assets/assets/ui/csBG2.png": "f85c1251ed685f9fa452429585619de8",
"assets/assets/ui/csHeader.png": "4d7d89421b71182687962ec1d2e9fad0",
"assets/assets/ui/HappyCloud.png": "69b407ff9a2c6be64de3819b886154d3",
"assets/assets/ui/heroJump.png": "bd46d9332cf9ee465682a27e271ecae9",
"assets/assets/ui/hsTitle.png": "bd8f5d06e73031e065bafd0cac166305",
"assets/assets/ui/hsTitle1.png": "1f4460b9d7186a0e6fa33d47cf257f1c",
"assets/assets/ui/hsTitle2.png": "f0644265302df48101d0b3f7fea5c357",
"assets/assets/ui/LandPiece_DarkBlue.png": "7a7075d676bf4f9f12e5548342e195d1",
"assets/assets/ui/LandPiece_DarkMulticolored.png": "6f425798897edf3d411cdc6b6949275c",
"assets/assets/ui/r.png": "cc2983799c654fc76803f78f795eaa9a",
"assets/assets/ui/title.png": "3ae279b9d81bbd836d0b6768e78b1962",
"assets/assets/ui/y.png": "50fda197f53a94a079b7062a06dcd825",
"assets/FontManifest.json": "7216a7ee81db425e1acda28c32a2e3a2",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "e4358a547d77f44dd647795a2fab2224",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "a45f4cf09597d2f273cea818f53a3d0b",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "03c43344e9ea788813d511f3fe275f85",
"/": "03c43344e9ea788813d511f3fe275f85",
"main.dart.js": "2e9b14f6d3caa975545fdbf18d4577ed",
"manifest.json": "4f84e38845c82a8bb4e4d327110a8fd0",
"version.json": "b24a07baa1c3472ece09ff7a5b2c7974"};
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
