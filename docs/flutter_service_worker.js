'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "3533032f457823652c15d52a594c8823",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"index.html": "8beddb02f4b4be779de168eca5ea642d",
"/": "8beddb02f4b4be779de168eca5ea642d",
"manifest.json": "df7828c3e7986976ce48391482d83718",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/FontManifest.json": "580ff1a5d08679ded8fcf5c6848cece7",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "0c894bfde685ca75ebac24612fa5eea7",
"assets/assets/images/chat_logo.png": "481da98d85453b0ab594caa0f39ccf3b",
"assets/AssetManifest.json": "92239c557d89d4c1802ed7c20e91e067"
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
