---
layout: default
title: Shop
---

Welcome to my new store!

<html>
<head>
  <style>
    .products-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 10px; /* Reduced gap to help fit all items */
      max-width: 900px; /* Reduced max-width to match typical GitHub Pages content width */
      margin: 0 auto;
      padding: 10px;
    }
    
    .product-wrapper {
      /* Mobile first - one item per row */
      flex: 0 1 100%;
      min-width: 280px;
      max-width: 100%;
    }

    /* Tablet - two items per row */
    @media (min-width: 768px) {
      .product-wrapper {
        flex: 0 1 calc(50% - 5px);
        max-width: calc(50% - 5px);
      }
    }

    /* Desktop - all four items in one row */
    @media (min-width: 1024px) {
      .product-wrapper {
        flex: 0 1 calc(20% - 8px); /* Slightly smaller width per item */
        max-width: calc(20% - 8px);
      }
      
      /* Override any max-width settings from Shopify's default styles */
      .product-wrapper > div {
        max-width: 100% !important;
      }
    }
  </style>
</head>
<body>
  <div class="products-container">
    <div class="product-wrapper">
      <div id='product-component-1728502061357'></div>
    </div>
    <div class="product-wrapper">
      <div id='product-component-1728506840286'></div>
    </div>
    <div class="product-wrapper">
      <div id='product-component-1728506875574'></div>
    </div>
    <div class="product-wrapper">
      <div id='product-component-1728506909400'></div>
    </div>
  </div>

  <div id='product-component-1728502061357'></div>
    <script type="text/javascript">
    /*<![CDATA[*/
    (function () {
    var scriptURL = 'https://sdks.shopifycdn.com/buy-button/latest/buy-button-storefront.min.js';
    if (window.ShopifyBuy) {
        if (window.ShopifyBuy.UI) {
        ShopifyBuyInit();
        } else {
        loadScript();
        }
    } else {
        loadScript();
    }
    function loadScript() {
        var script = document.createElement('script');
        script.async = true;
        script.src = scriptURL;
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(script);
        script.onload = ShopifyBuyInit;
    }
    function ShopifyBuyInit() {
        var client = ShopifyBuy.buildClient({
        domain: 'cbf9af-34.myshopify.com',
        storefrontAccessToken: 'c916ed512e9766f7185e7c78b7ea8b83',
        });
        ShopifyBuy.UI.onReady(client).then(function (ui) {
        ui.createComponent('product', {
            id: '9597043212573',
            node: document.getElementById('product-component-1728502061357'),
            moneyFormat: '%24%7B%7Bamount%7D%7D',
            options: {
    "product": {
        "styles": {
        "product": {
            "@media (min-width: 601px)": {
            "max-width": "calc(25% - 20px)",
            "margin-left": "20px",
            "margin-bottom": "50px"
            }
        },
        "button": {
            "font-family": "Quantico, sans-serif",
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px",
            "border-radius": "40px",
            "padding-left": "36px",
            "padding-right": "36px"
        },
        "quantityInput": {
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px"
        }
        },
        "buttonDestination": "modal",
        "contents": {
        "options": false
        },
        "text": {
        "button": "View product"
        },
        "googleFonts": [
        "Quantico"
        ]
    },
    "productSet": {
        "styles": {
        "products": {
            "@media (min-width: 601px)": {
            "margin-left": "-20px"
            }
        }
        }
    },
    "modalProduct": {
        "contents": {
        "img": false,
        "imgWithCarousel": true,
        "button": false,
        "buttonWithQuantity": true
        },
        "styles": {
        "product": {
            "@media (min-width: 601px)": {
            "max-width": "100%",
            "margin-left": "0px",
            "margin-bottom": "0px"
            }
        },
        "button": {
            "font-family": "Quantico, sans-serif",
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px",
            "border-radius": "40px",
            "padding-left": "36px",
            "padding-right": "36px"
        },
        "quantityInput": {
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px"
        }
        },
        "googleFonts": [
        "Quantico"
        ],
        "text": {
        "button": "Add to cart"
        }
    },
    "option": {},
    "cart": {
        "styles": {
        "button": {
            "font-family": "Quantico, sans-serif",
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px",
            "border-radius": "40px"
        }
        },
        "text": {
        "total": "Subtotal",
        "button": "Checkout"
        },
        "googleFonts": [
        "Quantico"
        ]
    },
    "toggle": {
        "styles": {
        "toggle": {
            "font-family": "Quantico, sans-serif"
        },
        "count": {
            "font-size": "16px"
        }
        },
        "googleFonts": [
        "Quantico"
        ]
    }
    },
        });
        });
    }
    })();
    /*]]>*/
    </script>

  <div id='product-component-1728506840286'></div>
    <script type="text/javascript">
    /*<![CDATA[*/
    (function () {
    var scriptURL = 'https://sdks.shopifycdn.com/buy-button/latest/buy-button-storefront.min.js';
    if (window.ShopifyBuy) {
        if (window.ShopifyBuy.UI) {
        ShopifyBuyInit();
        } else {
        loadScript();
        }
    } else {
        loadScript();
    }
    function loadScript() {
        var script = document.createElement('script');
        script.async = true;
        script.src = scriptURL;
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(script);
        script.onload = ShopifyBuyInit;
    }
    function ShopifyBuyInit() {
        var client = ShopifyBuy.buildClient({
        domain: 'cbf9af-34.myshopify.com',
        storefrontAccessToken: 'c916ed512e9766f7185e7c78b7ea8b83',
        });
        ShopifyBuy.UI.onReady(client).then(function (ui) {
        ui.createComponent('product', {
            id: '9597043179805',
            node: document.getElementById('product-component-1728506840286'),
            moneyFormat: '%24%7B%7Bamount%7D%7D',
            options: {
    "product": {
        "styles": {
        "product": {
            "@media (min-width: 601px)": {
            "max-width": "calc(25% - 20px)",
            "margin-left": "20px",
            "margin-bottom": "50px"
            }
        },
        "button": {
            "font-family": "Quantico, sans-serif",
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px",
            "border-radius": "40px",
            "padding-left": "36px",
            "padding-right": "36px"
        },
        "quantityInput": {
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px"
        }
        },
        "buttonDestination": "modal",
        "contents": {
        "options": false
        },
        "text": {
        "button": "View product"
        },
        "googleFonts": [
        "Quantico"
        ]
    },
    "productSet": {
        "styles": {
        "products": {
            "@media (min-width: 601px)": {
            "margin-left": "-20px"
            }
        }
        }
    },
    "modalProduct": {
        "contents": {
        "img": false,
        "imgWithCarousel": true,
        "button": false,
        "buttonWithQuantity": true
        },
        "styles": {
        "product": {
            "@media (min-width: 601px)": {
            "max-width": "100%",
            "margin-left": "0px",
            "margin-bottom": "0px"
            }
        },
        "button": {
            "font-family": "Quantico, sans-serif",
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px",
            "border-radius": "40px",
            "padding-left": "36px",
            "padding-right": "36px"
        },
        "quantityInput": {
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px"
        }
        },
        "googleFonts": [
        "Quantico"
        ],
        "text": {
        "button": "Add to cart"
        }
    },
    "option": {},
    "cart": {
        "styles": {
        "button": {
            "font-family": "Quantico, sans-serif",
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px",
            "border-radius": "40px"
        }
        },
        "text": {
        "total": "Subtotal",
        "button": "Checkout"
        },
        "googleFonts": [
        "Quantico"
        ]
    },
    "toggle": {
        "styles": {
        "toggle": {
            "font-family": "Quantico, sans-serif"
        },
        "count": {
            "font-size": "16px"
        }
        },
        "googleFonts": [
        "Quantico"
        ]
    }
    },
        });
        });
    }
    })();
    /*]]>*/
    </script>

  <div id='product-component-1728506875574'></div>
    <script type="text/javascript">
    /*<![CDATA[*/
    (function () {
    var scriptURL = 'https://sdks.shopifycdn.com/buy-button/latest/buy-button-storefront.min.js';
    if (window.ShopifyBuy) {
        if (window.ShopifyBuy.UI) {
        ShopifyBuyInit();
        } else {
        loadScript();
        }
    } else {
        loadScript();
    }
    function loadScript() {
        var script = document.createElement('script');
        script.async = true;
        script.src = scriptURL;
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(script);
        script.onload = ShopifyBuyInit;
    }
    function ShopifyBuyInit() {
        var client = ShopifyBuy.buildClient({
        domain: 'cbf9af-34.myshopify.com',
        storefrontAccessToken: 'c916ed512e9766f7185e7c78b7ea8b83',
        });
        ShopifyBuy.UI.onReady(client).then(function (ui) {
        ui.createComponent('product', {
            id: '9597043147037',
            node: document.getElementById('product-component-1728506875574'),
            moneyFormat: '%24%7B%7Bamount%7D%7D',
            options: {
    "product": {
        "styles": {
        "product": {
            "@media (min-width: 601px)": {
            "max-width": "calc(25% - 20px)",
            "margin-left": "20px",
            "margin-bottom": "50px"
            }
        },
        "button": {
            "font-family": "Quantico, sans-serif",
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px",
            "border-radius": "40px",
            "padding-left": "36px",
            "padding-right": "36px"
        },
        "quantityInput": {
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px"
        }
        },
        "buttonDestination": "modal",
        "contents": {
        "options": false
        },
        "text": {
        "button": "View product"
        },
        "googleFonts": [
        "Quantico"
        ]
    },
    "productSet": {
        "styles": {
        "products": {
            "@media (min-width: 601px)": {
            "margin-left": "-20px"
            }
        }
        }
    },
    "modalProduct": {
        "contents": {
        "img": false,
        "imgWithCarousel": true,
        "button": false,
        "buttonWithQuantity": true
        },
        "styles": {
        "product": {
            "@media (min-width: 601px)": {
            "max-width": "100%",
            "margin-left": "0px",
            "margin-bottom": "0px"
            }
        },
        "button": {
            "font-family": "Quantico, sans-serif",
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px",
            "border-radius": "40px",
            "padding-left": "36px",
            "padding-right": "36px"
        },
        "quantityInput": {
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px"
        }
        },
        "googleFonts": [
        "Quantico"
        ],
        "text": {
        "button": "Add to cart"
        }
    },
    "option": {},
    "cart": {
        "styles": {
        "button": {
            "font-family": "Quantico, sans-serif",
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px",
            "border-radius": "40px"
        }
        },
        "text": {
        "total": "Subtotal",
        "button": "Checkout"
        },
        "googleFonts": [
        "Quantico"
        ]
    },
    "toggle": {
        "styles": {
        "toggle": {
            "font-family": "Quantico, sans-serif"
        },
        "count": {
            "font-size": "16px"
        }
        },
        "googleFonts": [
        "Quantico"
        ]
    }
    },
        });
        });
    }
    })();
    /*]]>*/
    </script>

  <div id='product-component-1728506909400'></div>
    <script type="text/javascript">
    /*<![CDATA[*/
    (function () {
    var scriptURL = 'https://sdks.shopifycdn.com/buy-button/latest/buy-button-storefront.min.js';
    if (window.ShopifyBuy) {
        if (window.ShopifyBuy.UI) {
        ShopifyBuyInit();
        } else {
        loadScript();
        }
    } else {
        loadScript();
    }
    function loadScript() {
        var script = document.createElement('script');
        script.async = true;
        script.src = scriptURL;
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(script);
        script.onload = ShopifyBuyInit;
    }
    function ShopifyBuyInit() {
        var client = ShopifyBuy.buildClient({
        domain: 'cbf9af-34.myshopify.com',
        storefrontAccessToken: 'c916ed512e9766f7185e7c78b7ea8b83',
        });
        ShopifyBuy.UI.onReady(client).then(function (ui) {
        ui.createComponent('product', {
            id: '9597043114269',
            node: document.getElementById('product-component-1728506909400'),
            moneyFormat: '%24%7B%7Bamount%7D%7D',
            options: {
    "product": {
        "styles": {
        "product": {
            "@media (min-width: 601px)": {
            "max-width": "calc(25% - 20px)",
            "margin-left": "20px",
            "margin-bottom": "50px"
            }
        },
        "button": {
            "font-family": "Quantico, sans-serif",
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px",
            "border-radius": "40px",
            "padding-left": "36px",
            "padding-right": "36px"
        },
        "quantityInput": {
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px"
        }
        },
        "buttonDestination": "modal",
        "contents": {
        "options": false
        },
        "text": {
        "button": "View product"
        },
        "googleFonts": [
        "Quantico"
        ]
    },
    "productSet": {
        "styles": {
        "products": {
            "@media (min-width: 601px)": {
            "margin-left": "-20px"
            }
        }
        }
    },
    "modalProduct": {
        "contents": {
        "img": false,
        "imgWithCarousel": true,
        "button": false,
        "buttonWithQuantity": true
        },
        "styles": {
        "product": {
            "@media (min-width: 601px)": {
            "max-width": "100%",
            "margin-left": "0px",
            "margin-bottom": "0px"
            }
        },
        "button": {
            "font-family": "Quantico, sans-serif",
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px",
            "border-radius": "40px",
            "padding-left": "36px",
            "padding-right": "36px"
        },
        "quantityInput": {
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px"
        }
        },
        "googleFonts": [
        "Quantico"
        ],
        "text": {
        "button": "Add to cart"
        }
    },
    "option": {},
    "cart": {
        "styles": {
        "button": {
            "font-family": "Quantico, sans-serif",
            "font-size": "16px",
            "padding-top": "16px",
            "padding-bottom": "16px",
            "border-radius": "40px"
        }
        },
        "text": {
        "total": "Subtotal",
        "button": "Checkout"
        },
        "googleFonts": [
        "Quantico"
        ]
    },
    "toggle": {
        "styles": {
        "toggle": {
            "font-family": "Quantico, sans-serif"
        },
        "count": {
            "font-size": "16px"
        }
        },
        "googleFonts": [
        "Quantico"
        ]
    }
    },
        });
        });
    }
    })();
    /*]]>*/
    </script>

</body>
</html>

<br>

## Etsy Store:

Etsy helped me get a start, but now I've transitioned to the web store built in to this website. You can still use Etsy to check the reviews, but I prefer all orders be placed on this site instead of Etsy.

[Pre-Assembled NuclearHazard Atom](https://nuclearquads.etsy.com/listing/1590802322/nuclearhazard-atom-complete-fpv-practice) (2-pilot practice timer)

[Pre-Assembled NuclearHazard Core](https://nuclearquads.etsy.com/listing/1774353764/nuclearhazard-core-complete-fpv-event) (8-pilot event timer)

[Kit NuclearHazard Core](https://nuclearquads.etsy.com/listing/1773191870/nuclearhazard-core-kit-v8) (Use your own case, RXs, and Pi)

[PoE Adapter Kit for NuclearHazard Core](https://nuclearquads.etsy.com/listing/1756301464/poe-kit-for-nuclearhazard-core)