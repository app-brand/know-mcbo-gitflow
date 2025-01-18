'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"manifest.json": "1814b11d766ebeccaa39fad94a2f251e",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
<<<<<<< HEAD
"index.html": "2e2740b8547ffdfa00ed1609b0232baf",
"/": "2e2740b8547ffdfa00ed1609b0232baf",
=======
"index.html": "a1627ae6aa3eb4f919694cf17407b5c1",
"/": "a1627ae6aa3eb4f919694cf17407b5c1",
>>>>>>> baaebe3 (09-12-24 Know Maracaibo: Project rebooted - Keys are in .env file)
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
<<<<<<< HEAD
"flutter_bootstrap.js": "b0409e2b4faed7e33954ff12393cf86d",
"main.dart.js": "f24e7c9d519f981f1a630864665fe406",
"version.json": "f6ab49963f90ee6356b4b1aeb4aad18e",
"assets/AssetManifest.bin.json": "a5529831bdcc51bf94b30fb912610c89",
=======
"flutter_bootstrap.js": "a457f98a1eee180bb935f5466d063ecb",
"main.dart.js": "fdf315e4a663cce1df3ff37fad26076f",
"version.json": "f6ab49963f90ee6356b4b1aeb4aad18e",
"assets/AssetManifest.bin.json": "4317af4cb53bb812e06e33d80830ecea",
>>>>>>> baaebe3 (09-12-24 Know Maracaibo: Project rebooted - Keys are in .env file)
"assets/packages/awesome_dialog/assets/rive/info_reverse.riv": "c6e814d66c0e469f1574a2f171a13a76",
"assets/packages/awesome_dialog/assets/rive/success.riv": "73618ab4166b406e130c2042dc595f42",
"assets/packages/awesome_dialog/assets/rive/info.riv": "2a425920b11404228f613bc51b30b2fb",
"assets/packages/awesome_dialog/assets/rive/error.riv": "e74e21f8b53de4b541dd037c667027c1",
"assets/packages/awesome_dialog/assets/rive/warning.riv": "0becf971559a68f9a74c8f0c6e0f8335",
"assets/packages/awesome_dialog/assets/rive/question.riv": "00f02da4d08c2960079d4cd8211c930c",
"assets/packages/awesome_dialog/assets/flare/info2.flr": "21af33cb65751b76639d98e106835cfb",
"assets/packages/awesome_dialog/assets/flare/error.flr": "e3b124665e57682dab45f4ee8a16b3c9",
"assets/packages/awesome_dialog/assets/flare/info.flr": "bc654ba9a96055d7309f0922746fe7a7",
"assets/packages/awesome_dialog/assets/flare/succes_without_loop.flr": "3d8b3b3552370677bf3fb55d0d56a152",
"assets/packages/awesome_dialog/assets/flare/succes.flr": "ebae20460b624d738bb48269fb492edf",
"assets/packages/awesome_dialog/assets/flare/warning_without_loop.flr": "c84f528c7e7afe91a929898988012291",
"assets/packages/awesome_dialog/assets/flare/warning.flr": "68898234dacef62093ae95ff4772509b",
"assets/packages/awesome_dialog/assets/flare/question.flr": "1c31ec57688a19de5899338f898290f0",
"assets/packages/awesome_dialog/assets/flare/info_without_loop.flr": "cf106e19d7dee9846bbc1ac29296a43f",
"assets/packages/quickalert/assets/error.gif": "c307db003cf53e131f1c704bb16fb9bf",
"assets/packages/quickalert/assets/info.gif": "90d7fface6e2d52554f8614a1f5deb6b",
"assets/packages/quickalert/assets/warning.gif": "f45dfa3b5857b812e0c8227211635cc4",
"assets/packages/quickalert/assets/confirm.gif": "bdc3e511c73e97fbc5cfb0c2b5f78e00",
"assets/packages/quickalert/assets/loading.gif": "ac70f280e4a1b90065fe981eafe8ae13",
"assets/packages/quickalert/assets/success.gif": "dcede9f3064fe66b69f7bbe7b6e3849f",
<<<<<<< HEAD
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2f141ffd94f3ef0ed716615fd537e708",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "0ebc4e7ca5e040da671730a59b181135",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "c6ac80bdc5b2896345377c9439f91d54",
"assets/NOTICES": "94d664e69b38485726368f5e9b9cdc3c",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/sol_linea_peque%C3%B1a.png": "8a44fa5154f0ee2363ab1b25082d2901",
"assets/FontManifest.json": "2dea058282ffceb02aac9f0aeea4ea8b",
"assets/imagen_carga_1.jpg": "e8659139cd3629654c7a02243fb4d40e",
"assets/conoce.png": "46f3a68dba556b665a2ed9f2967ebbff",
"assets/conoce_sin_rayas.png": "0045af990075c02e5c8af074abfea86d",
"assets/lib/presentation/core/map_style.json": "ab5738b585c177e5fc78868df0e8dfb4",
"assets/sol_linea_grande.png": "bc8a6f5bfed81d052d89ccf421597dc8",
=======
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "5178af1d278432bec8fc830d50996d6f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "aa1ec80f1b30a51d64c72f669c1326a7",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b37ae0f14cbc958316fac4635383b6e8",
"assets/NOTICES": "bd4d1b552587300ec2e2095c7db2ae98",
"assets/imagen_carga_1copiabyn2.jpg": "af0b8252098d0d8dcc4b039067ec5bec",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/imagen_carga_2copiabyn.jpg": "d0f5e7263f2ce8feff06a0e823b25a43",
"assets/sol_linea_peque%C3%B1a.png": "8a44fa5154f0ee2363ab1b25082d2901",
"assets/FontManifest.json": "2dea058282ffceb02aac9f0aeea4ea8b",
"assets/maracaibo-7copiabyn.jpg": "47a852aaec38b44f1caab02bf7b76b2c",
"assets/imagen_carga_1.jpg": "e8659139cd3629654c7a02243fb4d40e",
"assets/conoce.png": "46f3a68dba556b665a2ed9f2967ebbff",
"assets/imagen_carga_3copiabyn.jpg": "a66644c743fdbf50d1fbc422ec564fce",
"assets/conoce_sin_rayas.png": "0045af990075c02e5c8af074abfea86d",
"assets/lib/presentation/core/map_style.json": "8dabe81d4b1aab6977a05e982ef6b6e7",
"assets/sol_linea_grande.png": "bc8a6f5bfed81d052d89ccf421597dc8",
"assets/logoconoce.png": "fcfbb92248e064d69dd1e7d2f61c2d42",
"assets/conoceanimacion.mp4": "a626439d43dce91870d1cf936f375b2a",
>>>>>>> baaebe3 (09-12-24 Know Maracaibo: Project rebooted - Keys are in .env file)
"assets/fonts/Poppins-BlackItalic.ttf": "e9c5c588e39d0765d30bcd6594734102",
"assets/fonts/Poppins-Italic.ttf": "c1034239929f4651cc17d09ed3a28c69",
"assets/fonts/Poppins-BoldItalic.ttf": "19406f767addf00d2ea82cdc9ab104ce",
"assets/fonts/Poppins-Light.ttf": "fcc40ae9a542d001971e53eaed948410",
"assets/fonts/Poppins-Thin.ttf": "9ec263601ee3fcd71763941207c9ad0d",
"assets/fonts/Poppins-ExtraBold.ttf": "d45bdbc2d4a98c1ecb17821a1dbbd3a4",
"assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/fonts/Poppins-LightItalic.ttf": "0613c488cf7911af70db821bdd05dfc4",
"assets/fonts/Poppins-MediumItalic.ttf": "cf5ba39d9ac24652e25df8c291121506",
"assets/fonts/Poppins-ThinItalic.ttf": "01555d25092b213d2ea3a982123722c9",
"assets/fonts/Poppins-SemiBoldItalic.ttf": "9841f3d906521f7479a5ba70612aa8c8",
"assets/fonts/Poppins-ExtraLight.ttf": "6f8391bbdaeaa540388796c858dfd8ca",
"assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
<<<<<<< HEAD
"assets/fonts/MaterialIcons-Regular.otf": "874366f38ef32934e1ce144a2a41cc84",
=======
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
>>>>>>> baaebe3 (09-12-24 Know Maracaibo: Project rebooted - Keys are in .env file)
"assets/fonts/Poppins-Black.ttf": "14d00dab1f6802e787183ecab5cce85e",
"assets/fonts/Poppins-ExtraBoldItalic.ttf": "8afe4dc13b83b66fec0ea671419954cc",
"assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/fonts/Poppins-ExtraLightItalic.ttf": "a9bed017984a258097841902b696a7a6",
"assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/alcaldia-de-maracaibo.png": "478f52fd9d4ad6678d29065034f34bec",
<<<<<<< HEAD
=======
"assets/assets/images/aboutus/I.jpg": "3558b67119c3d02a73cef8403e01da0a",
"assets/assets/images/aboutus/header_aboutus.jpg": "39c39fcc0f75a9da2d46408778cee9cd",
"assets/assets/images/aboutus/fomutur1.jpeg": "6f7b57120cc9093420a1787b6554b33d",
"assets/assets/images/ejes/mandocas1.webp": "5cfd76b2a7e55990113568ab03b3620c",
"assets/assets/images/ejes/vereda1.png": "b54b6dbd7f33bec49fe05cab24526a6b",
"assets/assets/images/ejes/calle_carabobo1.jpg": "11bd3d07532217dfbcae8a4ae074c117",
"assets/assets/images/ejes/tranvia_maracaibo_imagen1.jpg": "c87cf5684c5c3de447811e179605d0ec",
"assets/assets/images/ejes/vereda2.jpg": "a30cd800b33e9f0eeb29b8ece8e95f5c",
"assets/assets/images/ejes/calle_carabobo.jpeg": "e18d6f181f1136a87bb9c94fea209249",
"assets/assets/images/ejes/gaitas2.jpg": "8d3ac5d8b45d9cf5ac3b925549c0d8c9",
"assets/assets/images/ejes/artesania2.jpg": "1bcb8362dd285712379117cfa054a638",
"assets/assets/images/ejes/tranvia_maracaibo_imagen2.jpg": "09ead3b979630a59086d42e3aaedce42",
"assets/assets/images/ejes/patacones2.jpeg": "b988372407c77666efe8a7632f722b6d",
"assets/assets/images/ejes/artesania1.jpeg": "5156b3a05326fd1462071a82793fb25e",
"assets/assets/images/ejes/tranvia-maracaibo-2.jpeg": "6d330f3a747dbdad6e194f619c677558",
"assets/assets/images/ejes/basilica2.jpg": "85d2d47ad2bc0bd2b9b142355927c9d2",
"assets/assets/images/ejes/bollos_pelones2.jpg": "cfc0a267c752803ca772c1591fe83c2e",
"assets/assets/images/ejes/gaitas_principal.png": "8ebf0edf920b75037e2692c30cc35fa9",
"assets/assets/images/ejes/patacones1.jpeg": "a092ab59c2b9f1b77b3abcdf6e7e7a85",
"assets/assets/images/ejes/bollos_pelones1.webp": "ef4adf28a0e6d3f57e633e076fcf81c5",
"assets/assets/images/ejes/gaitas1.jpg": "e8d9b5c339c1a85e20d48f7c024c231f",
"assets/assets/images/ejes/mandocas2.webp": "d10b6f493284eae2354bb59597f8ae76",
"assets/assets/images/ejes/basilica1.jpg": "c3faa5904e0d24dc49077ab58bad1723",
"assets/assets/images/ejes/calle_carabobo2.jpg": "9cfb1920b9c0223f565809e3adff6624",
"assets/assets/images/markers/8.png": "0f502b2e19971b696643e5a223736d15",
"assets/assets/images/markers/10.png": "73e02a8dc9c08f44151c9e404afef128",
"assets/assets/images/markers/23.png": "89c479595501ea87b5bb6633b96a7fa9",
"assets/assets/images/markers/22.png": "ed8c2c0623d3e307f53c5e407a137506",
"assets/assets/images/markers/17.png": "14a1f7717e20f7831cfc76b198dc596b",
"assets/assets/images/markers/15.png": "e7aebd4806c7e3fd1583220e0597a32d",
"assets/assets/images/markers/21.png": "8483129c6444c3354919bc96635ae6eb",
"assets/assets/images/markers/7.png": "397104147ba6ccc84e561367487e56ac",
"assets/assets/images/markers/24.png": "1bf1f5892fa1aeafa151094c63272b81",
"assets/assets/images/markers/13.png": "f00713e4d0687aaf9be3c8808746417d",
"assets/assets/images/markers/4.png": "5672188b861cd18223dee7c3b574dcbb",
"assets/assets/images/markers/12.png": "e5657f52bdb8e2c2460372159e4d5b95",
"assets/assets/images/markers/11.png": "1d6af47b2b01dc15948e96e9e07e001a",
"assets/assets/images/markers/6.png": "9a76a4b9dfad2403b8848fc2a8e4f923",
"assets/assets/images/markers/9.png": "fbe510383d21042f2efbbac224ffbcc5",
"assets/assets/images/markers/25.png": "c5adc23e5df80199c6a18545a6b2a99e",
"assets/assets/images/markers/1.png": "c1f126725560fc032d427a0d030d8f78",
"assets/assets/images/markers/16.png": "83ec2e26be6fdff429a9fa4d0bcc639e",
"assets/assets/images/markers/3.png": "28e734e0eac47b1eb41adba62e32ced7",
"assets/assets/images/markers/14.png": "89687e19e2fbd71a0d44b7d4122ae971",
"assets/assets/images/markers/18.png": "9c3be29e7fbace9b0e5df6ed1e0f079c",
"assets/assets/images/markers/2.png": "1c5347aeaba02e02617e589e6fbb3c5b",
"assets/assets/images/markers/20.png": "a9aa60a4689ec794b16c51ed1c96b12f",
"assets/assets/images/markers/19.png": "f4432e9297d6f8ae7271bf93783860bf",
"assets/assets/images/markers/26.png": "53113f791ec9f6662afe2801d2bc8f7c",
"assets/assets/images/markers/5.png": "db7777b66e0951dbe0255bb44e572f7c",
"assets/assets/images/banner/LOGOFOMUTURBLANCO.png": "0bb52706ff70c35db3676dcbbc9c5db1",
"assets/assets/images/banner/maracaiboAntano1.jfif": "89873dd574f9408c8605d4749758a5f5",
"assets/assets/images/banner/maracaiboAntanoEnhanced.jpeg": "17cd41ff4dee0b3abdf5d1dcabbfdc17",
"assets/assets/images/banner/maracaibo.jpg": "26975f234e227ff6c894dcc186587dc1",
"assets/assets/images/banner/BOHG9813.jpg": "c8eb3d66c4111e87cd355f4d0be64827",
"assets/assets/images/banner/Rafael_Urdaneta_Bridge_in_Maracaibo.jpg": "f0f5e8755d34251ef1fec064a43bc954",
"assets/assets/images/banner/BOHG9821.jpg": "5bcd7624af62382aaae3feda5d1272cf",
"assets/assets/images/banner/529.jpg": "3ba91be3fb316c4fd4db053dfc7d917f",
"assets/assets/images/banner/puente4k.png": "3f6085b86edccfdfd309744a1b73061f",
"assets/assets/images/banner/BOHG9920.jpg": "9bf049a348f1aed44cd5c2c25e95f9b9",
"assets/assets/images/banner/maracaiboAntano1.jpg": "1c4a4570aef3a434345fdc7bb3be6ff7",
"assets/assets/images/banner/fomutur.svg": "a12afd857458758d6e3b41b8276d8e8f",
"assets/assets/images/banner/carabobocalle.jpg": "a50bbdfe15bb79fa2de1b43ec5290257",
"assets/assets/images/banner/maracaiboAntano.png": "e8f6c7323ff915440b5c14340fbeeb99",
"assets/assets/images/banner/maracaibo-2.jpeg": "cfdeee4f98deb136d6b5f431b546a923",
"assets/assets/images/banner/puente4k2.jpg": "78c30dcce4b2cd928e069ed6920639c9",
"assets/assets/images/banner/callecarabobo.jpg": "895def4738d2057933f029dc86f81bac",
"assets/assets/images/banner/Sol.PNG": "de66f4339ee76feff30067e763613c14",
"assets/assets/images/banner/maracaibo-7.jpeg": "843d8732e390e82dcf131354b1a10953",
"assets/assets/images/banner/logoconoce.png": "fcfbb92248e064d69dd1e7d2f61c2d42",
"assets/assets/images/banner/maracaiboAntano3.jpg": "20074a57f4e25482b1694d4a65fff1ce",
"assets/assets/images/banner/Puente_de_Maracaibo.jpg": "65a9cf95709e8cac396e42f90b76bceb",
"assets/assets/images/banner/tranvia.jpeg": "130eacbe47a0fc9f018810cd99ceddbf",
"assets/assets/images/banner/maracaiboAntano2.jfif": "ecc39b0979b8f29033133274fca81dea",
"assets/assets/images/banner/SolConoce.png": "104769e0d0a231bc7b71c7055e8e6b34",
"assets/assets/images/banner/IMG_5193.JPG": "5988e8d563a7130fe99bd96bf43dd8aa",
"assets/assets/images/banner/IMG_5062.JPG": "ead3a6d276d01f96b091edc5cca9dbbf",
"assets/assets/images/banner/monumentochinita.jpg": "910d4d696c15756ce9911b3f5d3a53f0",
"assets/assets/images/banner/Teatro_Baralt.jpg": "54f14dae0022516523a7e992e924dda2",
"assets/assets/images/banner/maracaiboAntano2.jpg": "988c4f972cb819429f6a9feff592e561",
>>>>>>> baaebe3 (09-12-24 Know Maracaibo: Project rebooted - Keys are in .env file)
"assets/assets/images/main/main_3.jpeg": "3b1f71ee7a3a0073f307c90954ba2573",
"assets/assets/images/main/main_1.jpeg": "33e4c90b5b59aaca1c167981f809eccd",
"assets/assets/images/main/main_2.jpeg": "62f3ce66bdada88dc2a731d6b587f613",
"assets/assets/images/brand/antano.png": "76992dba9ea0c268fa0edafc2ebf95ad",
"assets/assets/images/brand/sun_spriral.png": "35ee883df7b8aed890c7a8fb6b7e8e54",
"assets/assets/images/brand/conoce.png": "63a133cae2e4e173e7554f6f50f2f691",
"assets/assets/images/brand/fomutur.png": "e9bd2f531fd9edc9ac1a02bb3d855167",
"assets/assets/images/brand/fomutur.jpg": "8f42d9682ba61e63fd20044d17ae5104",
"assets/assets/images/vector/conoce.svg": "28d9fc2fb307b51e98e91619dc8e82ce",
"assets/assets/images/vector/fomutur.svg": "a12afd857458758d6e3b41b8276d8e8f",
"assets/assets/images/vector/caminata.svg": "5cff3ace5c165815857d0f1060aade63",
"assets/assets/images/events_png/json_2.png": "8e5350288ed17f2628af02e310d32f28",
"assets/assets/images/events_png/json_3.png": "48cd45d4e296003e22cb25f2ddbca581",
"assets/assets/images/events_png/json_1.png": "6271912344d1dc29ced10021c54d635b",
<<<<<<< HEAD
"assets/assets/images/axis/axi_3.jpeg": "7a339c83372ba42774db271fd9d324ae",
"assets/assets/images/axis/axi_1.jpeg": "76c1462530e09becec1aa5075d8f31e9",
"assets/assets/images/axis/axi_2.jpeg": "65f24177c7679a2fe03ce803cdef6852",
=======
"assets/assets/images/axis/gaita.jpeg": "9a58db15731442e8562b29dda4c81a7c",
"assets/assets/images/axis/axi_3.jpeg": "7a339c83372ba42774db271fd9d324ae",
"assets/assets/images/axis/axi_1.jpeg": "76c1462530e09becec1aa5075d8f31e9",
"assets/assets/images/axis/vereda.png": "1199fda4df286f01fcd7ce43a662e830",
"assets/assets/images/axis/tranvia.jpeg": "130eacbe47a0fc9f018810cd99ceddbf",
"assets/assets/images/axis/basilica.jpg": "009fb9703dba022627e44527e03c50b9",
"assets/assets/images/axis/bollospelones.webp": "3bfffddf6b0a513c156e3298e1b1becb",
"assets/assets/images/axis/axi_2.jpeg": "65f24177c7679a2fe03ce803cdef6852",
"assets/assets/images/axis/patacones.jpeg": "a28a348e16f7aed914f748f948497c6e",
"assets/assets/images/axis/artesania.JPG": "e63f0b8633d7e2e6a8adc6f2cfe97be3",
"assets/assets/images/axis/mandocas.jpg": "3f4eabd856521ad79ff9b1bb5ac98531",
>>>>>>> baaebe3 (09-12-24 Know Maracaibo: Project rebooted - Keys are in .env file)
"assets/assets/tranvia.png": "1ae81ac1b11f4bd1309a497a1ac75914",
"assets/assets/shrek.png": "84612e85cf9c47ca6a2caf3be0c4fc59",
"assets/assets/plaza.png": "5fde0e766892285404578c01627748c3",
"assets/assets/casa.png": "b7bff471993db8168f4beac73e470cf7",
"assets/assets/central.png": "b784205c0e842ddfafb2ff073f42eff5",
<<<<<<< HEAD
"assets/assets/json/rutas.json": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/json/events.json": "d7bc8bf987b6e40612236a6d9e66b600",
"assets/assets/json/axis.json": "256dc959c065895c19ecce349e678358",
"assets/assets/data4iflogo.png": "7bd39d5f85ad940173287bcd40acab0e",
"assets/imagen_carga_2.jpg": "a50bbdfe15bb79fa2de1b43ec5290257",
"assets/AssetManifest.bin": "08192f82d1faff41783ca7ea3aae56a7",
"assets/AssetManifest.json": "d2b601b77b26e72238436b5f1c665cdb",
"assets/imagen_carga_3.jpg": "8f0fdbf87fabdaaeffc2d43e830e419c",
=======
"assets/assets/json/markers.json": "fc96f0c9a99ea52a9ff2a0beb68b59cb",
"assets/assets/json/routes3.json": "76053d2394b67ad99c0b0b1bf6492979",
"assets/assets/json/ejes_informacion.json": "98ca08d67f470685c75a9d948de21223",
"assets/assets/json/routes4.json": "76053d2394b67ad99c0b0b1bf6492979",
"assets/assets/json/routes2.json": "1d4c66dcb8d67219306a6cd6f6f0c14b",
"assets/assets/json/routes5.json": "f3399c1ae87a05232a4937e48b78e8b2",
"assets/assets/json/routes_info.json": "83aa98cce4a402f64f9ddc5ba59f18e9",
"assets/assets/json/markers_info.json": "7af246aafda3a1e2337ef4878a0bcfd0",
"assets/assets/json/events.json": "d7bc8bf987b6e40612236a6d9e66b600",
"assets/assets/json/routes1.json": "bc4d6e5bab44afbdca8276e3ba24cb87",
"assets/assets/json/axis.json": "256dc959c065895c19ecce349e678358",
"assets/assets/data4iflogo.png": "7bd39d5f85ad940173287bcd40acab0e",
"assets/logo-animado_conoce-maracaibo.gif": "f2d8c1ef63e44557197061f37310f831",
"assets/imagen_carga_2.jpg": "a50bbdfe15bb79fa2de1b43ec5290257",
"assets/AssetManifest.bin": "d0c3599f014c2f035228d611b7a077d2",
"assets/logo-animado_conoce-maracaibo.mov": "568e5fcc5a45053b9ff48dd41ace7a9c",
"assets/AssetManifest.json": "dce46bc6244dbe5772c4d734cd7452ae",
"assets/imagen_carga_3.jpg": "8f0fdbf87fabdaaeffc2d43e830e419c",
"assets/maracaibo-2copiabyn.jpg": "d6fa407840999336327fecb53e3ae94a",
"assets/imagen_carga_1copiabyn.jpg": "3c661fd93992319cc5712d3d69cf588a",
>>>>>>> baaebe3 (09-12-24 Know Maracaibo: Project rebooted - Keys are in .env file)
"flutter.js": "f393d3c16b631f36852323de8e583132"};
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
