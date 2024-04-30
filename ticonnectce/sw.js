const FILES_TO_CACHE = [
    "/",
    "index.html",
    "manifest.json",
    "pwa.webmanifest",
    "cars/src/css/main.css",
    "cars/src/js/obfuscatedcars.js",
    "cars/src/js/utilities/array-extension.js",
    "cars/src/js/utilities/common-utils.js",
    "cars/src/js/utilities/string-extension.js",
    "cars/src/js/utilities/ti-logger.js",
    "css/animations.css",
    "css/app.css",
    "css/commtest.css",
    "css/device-explorer.css",
    "css/dialog-about.css",
    "css/dialog-calc-info.css",
    "css/dialog-custom-filename.css",
    "css/dialog-duplicates.css",
    "css/dialog-send-files.css",
    "css/loading-mask.css",
    "css/ngDialog-theme.css",
    "css/no-device.css",
    "css/screen-captures.css",
    "css/toolbar.css",
    "images/animation_arrow.svg",
    "images/animation_calculator.svg",
    "images/animation_capture.svg",
    "images/animation_delete.svg",
    "images/animation_fail.svg",
    "images/animation_files.svg",
    "images/animation_os.svg",
    "images/animation_sync.svg",
    "images/dialog_warning.svg",
    "images/filetype_app.svg",
    "images/filetype_certificate.svg",
    "images/filetype_equation.svg",
    "images/filetype_graphdb.svg",
    "images/filetype_group.svg",
    "images/filetype_image.svg",
    "images/filetype_list.svg",
    "images/filetype_matrix.svg",
    "images/filetype_os.svg",
    "images/filetype_program.svg",
    "images/filetype_range.svg",
    "images/filetype_real.svg",
    "images/filetype_string.svg",
    "images/file_list_background.png",
    "images/icon128.png",
    "images/icon16.png",
    "images/icon48.png",
    "images/icon_checkmark.svg",
    "images/icon_checkmark_green.svg",
    "images/icon_checkmark_green_hover.svg",
    "images/icon_close.svg",
    "images/icon_select.svg",
    "images/lock.svg",
    "images/menu.svg",
    "images/no hh connected 2.svg",
    "images/no hh connected.svg",
    "images/ScreenCapture.png",
    "images/splitter_chevron.svg",
    "images/TI logo @2x.png",
    "images/TI-83 Plus fr @2x.png",
    "images/TI-83 Premium CE @2x.png",
    "images/TI-84 Plus @2x.png",
    "images/TI-84 Plus C Silver Edition @2x.png",
    "images/TI-84 Plus CE @2x.png",
    "images/TI-84 Plus Silver Edition @2x.png",
    "images/ticonnect-icon-128.png",
    "images/ticonnect-icon-16.png",
    "images/ticonnect-icon-48.png",
    "images/ToolbarLogo.svg",
    "images/toolbar_add_from_comp.svg",
    "images/toolbar_border.svg",
    "images/toolbar_calc.svg",
    "images/toolbar_capture.svg",
    "images/toolbar_copy.svg",
    "images/toolbar_delete.svg",
    "images/toolbar_missing.svg",
    "images/toolbar_refresh.svg",
    "images/toolbar_save.svg",
    "images/toolbar_send_to_comp.svg",
    "images/toolbar_send_to_hh.svg",
    "images/toolbar_settings.svg",
    "images/toolbar_slide_show.svg",
    "images/toolbar_styles.svg",
    "js/app-utilities.js",
    "js/app.js",
    "js/background.js",
    "js/commtest.js",
    "js/developer-options.js",
    "js/device-views-developer-options.js",
    "js/device-views-screencapture-slideshow.js",
    "js/device-views-screencapture.js",
    "js/device-views.js",
    "js/image-utilities.js",
    "js/screencapture.js",
    "js/toolbar-app.js",
    "lib/analytics/google-analytics-bundle.js",
    "lib/angular/angular-animate.js",
    "lib/angular/angular-csp.css",
    "lib/angular/angular-sanitize.js",
    "lib/angular/angular-touch.js",
    "lib/angular/angular.js",
    "lib/jquery/jquery-1.11.3.js",
    "lib/jsZip/jszip.js",
    "lib/ngDialog/css/ngDialog-theme-default.css",
    "lib/ngDialog/css/ngDialog.css",
    "lib/ngDialog/js/ngDialog.js",
    "templates/animations.html",
    "templates/commtest.html",
    "templates/device-explorer.html",
    "templates/dialog-about.html",
    "templates/dialog-calc-info.html",
    "templates/dialog-commtest-config.html",
    "templates/dialog-commtest.html",
    "templates/dialog-custom-filename.html",
    "templates/dialog-delete-files.html",
    "templates/dialog-developer-options.html",
    "templates/dialog-duplicate-filenames.html",
    "templates/dialog-local-storage.html",
    "templates/dialog-long-message.html",
    "templates/dialog-message.html",
    "templates/dialog-send-files.html",
    "templates/dialog-send-os.html",
    "templates/loading-mask.html",
    "templates/no-device.html",
    "templates/screen-captures-slideshow.html",
    "templates/screen-captures.html",
    "templates/toolbar-app.html",
    "templates/toolbar-device-explorer.html",
    "templates/toolbar-screen-capture.html",
    "_metadata/verified_contents.json",
];

self.addEventListener('activate', event => {
  event.waitUntil(
    caches.keys().then(cacheNames => {
      return Promise.all(
        cacheNames.map(cacheName => caches.delete(cacheName))
      );
    })
  );
})

self.addEventListener('install', event => {
  event.waitUntil(
    caches.open('v1')
      .then(cache => cache.addAll(FILES_TO_CACHE))
  );
});

self.addEventListener("fetch", event => {
  event.respondWith(
    caches.match(event.request).then(async response => {
      let response2;
      if(navigator.onLine) {
        response2 = fetch(event.request).then(response => {
          caches.open('v1').then(cache => {
            cache.put(event.request, response.clone());
          });
          return response.clone();
        });
      }
      if(response) {
        return response;
      } else {
        return await response2;
      }
    })
  );
});

