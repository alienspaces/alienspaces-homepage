'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "favicon.png": "9c3b1c5630f5facb447d4469f93827a0",
"icons/Icon-512.png": "bc3c0bbd163203faf3fc617bc1626144",
"icons/Icon-192.png": "fe2625ef36bb48acca2d30439cd2068c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/assets/images/jenkins-small.png": "a6e9f84bd709e2e261036596c7104a70",
"assets/assets/images/css-small.png": "1dcc1098246a6152ab9048b10a4df362",
"assets/assets/images/redhat-small.png": "8585365713ef06f9dbb7717d9a09e2ee",
"assets/assets/images/spree-small.png": "345128bc5777310f737239a5d8c75dbe",
"assets/assets/images/quasar-small.png": "76b35492dcab33c3b8faf62edbda0a38",
"assets/assets/images/gitlab-small.png": "a6062a1fd6fdc502b7d967a6cdff5c5a",
"assets/assets/images/perl-small.png": "1921812a1b567b399c7b393cfc9e117c",
"assets/assets/images/ror-small.png": "3f3d0780ee11c46b1e36966717c05dfb",
"assets/assets/images/apache-web-server-small.png": "b1f3bddf971924657cca0e6bc4dafc0c",
"assets/assets/images/proc-small.png": "76f3c203ae57e06797a4191c33815238",
"assets/assets/images/postgres-small.png": "49e91ca6717e04be0587ff01b95ba3f5",
"assets/assets/images/sco-small.png": "1c821a267b80935a36998263216798cb",
"assets/assets/images/worldgroup-small.png": "b537c13c59516c28f466a913a95b5285",
"assets/assets/images/ubuntu-small.png": "ce52bf2c6b92b41fd2700a20d98e8c6c",
"assets/assets/images/oracle-small.png": "098c1a6fb987278f09959943f070cdd1",
"assets/assets/images/vuejs-small.png": "8f252cdb2597d874109da3a2bc12c046",
"assets/assets/images/alienspaces-small.png": "709f1e737426cafdcdd046d9f2561c9d",
"assets/assets/images/majormud-small.png": "381bf09aa0d1ad9763d6b3cc371eb86e",
"assets/assets/images/go-small.png": "a8d4a0f60d691053225f0b2a1ca8f92a",
"assets/assets/images/docker-small.png": "1c4f4855f84e1ffc5af725637a58a1e3",
"assets/assets/images/kubernetes-small.png": "1412eb521a85df89c900b5d0fb22f90b",
"assets/assets/images/mysql-small.png": "b1de1d38b34515f7a3b58c69f84a5532",
"assets/assets/images/aws-small.png": "8ed9ae6a262054b5fbb917021408394f",
"assets/assets/images/mod_perl-small.png": "bfab0a70e1cbe7435832cc1a21302206",
"assets/assets/images/javascript-small.png": "a5b95a447015447add4f23624f4a0b90",
"assets/assets/images/c-small.png": "35ebb2e5737a60a3c1d67ffbe648df2d",
"assets/assets/images/flutter-small.png": "564c0cc32df6ac622d73913b118c2195",
"assets/assets/images/servicecloud-small.png": "58fda87782660bca93b53540e5013dea",
"assets/assets/fonts/Lato-Regular.ttf": "2d36b1a925432bae7f3c53a340868c6e",
"assets/assets/fonts/Lato-BlackItalic.ttf": "2e26a9163cb4974dcba1bea5107d4492",
"assets/assets/fonts/Lato-LightItalic.ttf": "4d80ac573c53d192dafd99fdd6aa01e9",
"assets/assets/fonts/Lato-Light.ttf": "2fe27d9d10cdfccb1baef28a45d5ba90",
"assets/assets/fonts/Lato-ThinItalic.ttf": "4ac7208bbe0e3593ce9464f013607751",
"assets/assets/fonts/CustomIcons.ttf": "c308f04d979247f25e6e94a9603347ec",
"assets/assets/fonts/Lato-BoldItalic.ttf": "f98d18040a766b7bc4884b8fcc154550",
"assets/assets/fonts/Lato-Black.ttf": "e631d2735799aa943d93d301abf423d2",
"assets/assets/fonts/Lato-Bold.ttf": "85d339d916479f729938d2911b85bf1f",
"assets/assets/fonts/Lato-Italic.ttf": "7582e823ef0d702969ea0cce9afb326d",
"assets/assets/fonts/Lato-Thin.ttf": "9a77fbaa85fa42b73e3b96399daf49c5",
"assets/AssetManifest.json": "010d47edbb947d88ee7f0b2e052dc232",
"assets/NOTICES": "001074814df1b0eb41232531b76ec316",
"assets/FontManifest.json": "f8ec27312bf02bf4ac4f918c39934293",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"main.dart.js": "b275d3a4a9e0e6bcf044b3f41d871bc5",
"manifest.json": "6b85e65ecb889629c339c4045600c7ee",
"index.html": "e374becec1ddde6474480c5709060b65",
"/": "e374becec1ddde6474480c5709060b65",
"version.json": "cecb292e181a64573f5cf756104f1d7f"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
