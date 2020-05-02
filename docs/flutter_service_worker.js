'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "c0445e25b8d7e34636f6904cb29c7ce8",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"index.html": "8beddb02f4b4be779de168eca5ea642d",
"/": "8beddb02f4b4be779de168eca5ea642d",
"manifest.json": "df7828c3e7986976ce48391482d83718",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "7a4ca57cb90c7e6595c77dcdae7521c9",
"assets/assets/images/chat_logo.png": "481da98d85453b0ab594caa0f39ccf3b",
"assets/AssetManifest.json": "64434f1167cf75ce7e52b2e769645c3c"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
