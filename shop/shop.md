---
layout: default
title: Shop
---

Please contact me if you have any issues. 

<script>document.write('n'+'u'+'c'+'l'+'e'+'a'+'r'+'q'+'u'+'a'+'d'+'s'+'@'+'g'+'m'+'a'+'i'+'l'+'.'+'c'+'o'+'m');</script>

I don't ship to countries with packaging registration regulations similar to Germany's LUCID, but try to ship to reasonable countries. Fully assembled timers are too expensive to ship internationally, except to reliable destinations like Australia.

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
      <div id='product-component-1736559407030'></div>
    </div>
    <div class="product-wrapper">
      <div id='product-component-1736515178933'></div>
    </div>
    <div class="product-wrapper">
      <div id='product-component-1748610122415'></div>
    </div>
  </div>

<div id='product-component-1736559407030'></div>
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
        id: '9701659345181',
        node: document.getElementById('product-component-1736559407030'),
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
      "title": {
        "font-family": "Montserrat, sans-serif",
        "color": "#78b657"
      },
      "button": {
        "font-family": "Montserrat, sans-serif",
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
      },
      "price": {
        "font-size": "22px",
        "color": "#78b657"
      },
      "compareAt": {
        "font-size": "18.7px",
        "color": "#78b657"
      },
      "unitPrice": {
        "font-size": "18.7px",
        "color": "#78b657"
      }
    },
    "buttonDestination": "modal",
    "contents": {
      "options": false
    },
    "width": "580px",
    "text": {
      "button": "View"
    },
    "googleFonts": [
      "Montserrat",
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
      "imgWithCarousel": true
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
        "font-family": "Montserrat, sans-serif",
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
      },
      "title": {
        "font-family": "Montserrat, sans-serif",
        "font-weight": "bold",
        "font-size": "26px",
        "color": "#b5e85d"
      },
      "price": {
        "font-family": "Montserrat, sans-serif",
        "font-weight": "bold",
        "font-size": "22px",
        "color": "#b5e85d"
      },
      "compareAt": {
        "font-family": "Montserrat, sans-serif",
        "font-weight": "bold",
        "font-size": "18.7px",
        "color": "#b5e85d"
      },
      "unitPrice": {
        "font-family": "Montserrat, sans-serif",
        "font-weight": "bold",
        "font-size": "18.7px",
        "color": "#b5e85d"
      },
      "description": {
        "font-family": "Montserrat, sans-serif",
        "color": "#ffffff"
      }
    },
    "googleFonts": [
      "Montserrat",
      "Quantico"
    ],
    "text": {
      "button": "Add to cart"
    }
  },
  "modal": {
    "styles": {
      "modal": {
        "background-color": "#3e3e3e"
      }
    }
  },
  "option": {
    "styles": {
      "label": {
        "font-family": "Montserrat, sans-serif",
        "color": "#ffffff"
      },
      "select": {
        "font-family": "Montserrat, sans-serif"
      }
    },
    "googleFonts": [
      "Montserrat"
    ]
  },
  "cart": {
    "styles": {
      "button": {
        "font-family": "Montserrat, sans-serif",
        "font-size": "16px",
        "padding-top": "16px",
        "padding-bottom": "16px",
        "border-radius": "40px"
      },
      "title": {
        "color": "#ffffff"
      },
      "header": {
        "color": "#ffffff"
      },
      "lineItems": {
        "color": "#ffffff"
      },
      "subtotalText": {
        "color": "#ffffff"
      },
      "subtotal": {
        "color": "#ffffff"
      },
      "notice": {
        "color": "#ffffff"
      },
      "currency": {
        "color": "#ffffff"
      },
      "close": {
        "color": "#ffffff",
        ":hover": {
          "color": "#ffffff"
        }
      },
      "empty": {
        "color": "#ffffff"
      },
      "noteDescription": {
        "color": "#ffffff"
      },
      "discountText": {
        "color": "#ffffff"
      },
      "discountIcon": {
        "fill": "#ffffff"
      },
      "discountAmount": {
        "color": "#ffffff"
      },
      "cart": {
        "background-color": "#3e3e3e"
      },
      "footer": {
        "background-color": "#3e3e3e"
      }
    },
    "text": {
      "total": "Subtotal",
      "notice": "",
      "button": "Checkout"
    },
    "googleFonts": [
      "Montserrat"
    ]
  },
  "toggle": {
    "styles": {
      "toggle": {
        "font-family": "Montserrat, sans-serif"
      },
      "count": {
        "font-size": "16px"
      }
    },
    "googleFonts": [
      "Montserrat"
    ]
  },
  "lineItem": {
    "styles": {
      "variantTitle": {
        "color": "#ffffff"
      },
      "title": {
        "color": "#ffffff"
      },
      "price": {
        "color": "#ffffff"
      },
      "fullPrice": {
        "color": "#ffffff"
      },
      "discount": {
        "color": "#ffffff"
      },
      "discountIcon": {
        "fill": "#ffffff"
      },
      "quantity": {
        "color": "#ffffff"
      },
      "quantityIncrement": {
        "color": "#ffffff",
        "border-color": "#ffffff"
      },
      "quantityDecrement": {
        "color": "#ffffff",
        "border-color": "#ffffff"
      },
      "quantityInput": {
        "color": "#ffffff",
        "border-color": "#ffffff"
      }
    }
  }
},
      });
    });
  }
})();
/*]]>*/
</script>

  <div id='product-component-1736515178933'></div>
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
        id: '9699725115677',
        node: document.getElementById('product-component-1736515178933'),
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
      "title": {
        "font-family": "Montserrat, sans-serif",
        "color": "#78b657"
      },
      "button": {
        "font-family": "Montserrat, sans-serif",
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
      },
      "price": {
        "font-size": "22px",
        "color": "#78b657"
      },
      "compareAt": {
        "font-size": "18.7px",
        "color": "#78b657"
      },
      "unitPrice": {
        "font-size": "18.7px",
        "color": "#78b657"
      }
    },
    "buttonDestination": "modal",
    "contents": {
      "options": false
    },
    "width": "580px",
    "text": {
      "button": "View"
    },
    "googleFonts": [
      "Montserrat",
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
      "imgWithCarousel": true
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
        "font-family": "Montserrat, sans-serif",
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
      },
      "title": {
        "font-family": "Montserrat, sans-serif",
        "font-weight": "bold",
        "font-size": "26px",
        "color": "#b5e85d"
      },
      "price": {
        "font-family": "Montserrat, sans-serif",
        "font-weight": "bold",
        "font-size": "22px",
        "color": "#b5e85d"
      },
      "compareAt": {
        "font-family": "Montserrat, sans-serif",
        "font-weight": "bold",
        "font-size": "18.7px",
        "color": "#b5e85d"
      },
      "unitPrice": {
        "font-family": "Montserrat, sans-serif",
        "font-weight": "bold",
        "font-size": "18.7px",
        "color": "#b5e85d"
      },
      "description": {
        "font-family": "Montserrat, sans-serif",
        "color": "#ffffff"
      }
    },
    "googleFonts": [
      "Montserrat",
      "Quantico"
    ],
    "text": {
      "button": "Add to cart"
    }
  },
  "modal": {
    "styles": {
      "modal": {
        "background-color": "#3e3e3e"
      }
    }
  },
  "option": {
    "styles": {
      "label": {
        "font-family": "Montserrat, sans-serif",
        "color": "#ffffff"
      },
      "select": {
        "font-family": "Montserrat, sans-serif"
      }
    },
    "googleFonts": [
      "Montserrat"
    ]
  },
  "cart": {
    "styles": {
      "button": {
        "font-family": "Montserrat, sans-serif",
        "font-size": "16px",
        "padding-top": "16px",
        "padding-bottom": "16px",
        "border-radius": "40px"
      },
      "title": {
        "color": "#ffffff"
      },
      "header": {
        "color": "#ffffff"
      },
      "lineItems": {
        "color": "#ffffff"
      },
      "subtotalText": {
        "color": "#ffffff"
      },
      "subtotal": {
        "color": "#ffffff"
      },
      "notice": {
        "color": "#ffffff"
      },
      "currency": {
        "color": "#ffffff"
      },
      "close": {
        "color": "#ffffff",
        ":hover": {
          "color": "#ffffff"
        }
      },
      "empty": {
        "color": "#ffffff"
      },
      "noteDescription": {
        "color": "#ffffff"
      },
      "discountText": {
        "color": "#ffffff"
      },
      "discountIcon": {
        "fill": "#ffffff"
      },
      "discountAmount": {
        "color": "#ffffff"
      },
      "cart": {
        "background-color": "#3e3e3e"
      },
      "footer": {
        "background-color": "#3e3e3e"
      }
    },
    "text": {
      "total": "Subtotal",
      "notice": "",
      "button": "Checkout"
    },
    "googleFonts": [
      "Montserrat"
    ]
  },
  "toggle": {
    "styles": {
      "toggle": {
        "font-family": "Montserrat, sans-serif"
      },
      "count": {
        "font-size": "16px"
      }
    },
    "googleFonts": [
      "Montserrat"
    ]
  },
  "lineItem": {
    "styles": {
      "variantTitle": {
        "color": "#ffffff"
      },
      "title": {
        "color": "#ffffff"
      },
      "price": {
        "color": "#ffffff"
      },
      "fullPrice": {
        "color": "#ffffff"
      },
      "discount": {
        "color": "#ffffff"
      },
      "discountIcon": {
        "fill": "#ffffff"
      },
      "quantity": {
        "color": "#ffffff"
      },
      "quantityIncrement": {
        "color": "#ffffff",
        "border-color": "#ffffff"
      },
      "quantityDecrement": {
        "color": "#ffffff",
        "border-color": "#ffffff"
      },
      "quantityInput": {
        "color": "#ffffff",
        "border-color": "#ffffff"
      }
    }
  }
},
      });
    });
  }
})();
/*]]>*/
</script>

  <div id='product-component-1736515464641'></div>
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
          id: '9858900099357',
          node: document.getElementById('product-component-1748610122415'),
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
        "title": {
          "font-family": "Montserrat, sans-serif",
          "color": "#78b657"
        },
        "button": {
          "font-family": "Montserrat, sans-serif",
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
        },
        "price": {
          "font-size": "22px",
          "color": "#78b657"
        },
        "compareAt": {
          "font-size": "18.7px",
          "color": "#78b657"
        },
        "unitPrice": {
          "font-size": "18.7px",
          "color": "#78b657"
        }
      },
      "buttonDestination": "modal",
      "contents": {
        "options": false
      },
      "width": "580px",
      "text": {
        "button": "View"
      },
      "googleFonts": [
        "Montserrat",
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
        "imgWithCarousel": true
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
          "font-family": "Montserrat, sans-serif",
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
        },
        "title": {
          "font-family": "Montserrat, sans-serif",
          "font-weight": "bold",
          "font-size": "26px",
          "color": "#b5e85d"
        },
        "price": {
          "font-family": "Montserrat, sans-serif",
          "font-weight": "bold",
          "font-size": "22px",
          "color": "#b5e85d"
        },
        "compareAt": {
          "font-family": "Montserrat, sans-serif",
          "font-weight": "bold",
          "font-size": "18.7px",
          "color": "#b5e85d"
        },
        "unitPrice": {
          "font-family": "Montserrat, sans-serif",
          "font-weight": "bold",
          "font-size": "18.7px",
          "color": "#b5e85d"
        },
        "description": {
          "font-family": "Montserrat, sans-serif",
          "color": "#ffffff"
        }
      },
      "googleFonts": [
        "Montserrat",
        "Quantico"
      ],
      "text": {
        "button": "Add to cart"
      }
    },
    "modal": {
      "styles": {
        "modal": {
          "background-color": "#3e3e3e"
        }
      }
    },
    "option": {
      "styles": {
        "label": {
          "font-family": "Montserrat, sans-serif",
          "color": "#ffffff"
        },
        "select": {
          "font-family": "Montserrat, sans-serif"
        }
      },
      "googleFonts": [
        "Montserrat"
      ]
    },
    "cart": {
      "styles": {
        "button": {
          "font-family": "Montserrat, sans-serif",
          "font-size": "16px",
          "padding-top": "16px",
          "padding-bottom": "16px",
          "border-radius": "40px"
        },
        "title": {
          "color": "#ffffff"
        },
        "header": {
          "color": "#ffffff"
        },
        "lineItems": {
          "color": "#ffffff"
        },
        "subtotalText": {
          "color": "#ffffff"
        },
        "subtotal": {
          "color": "#ffffff"
        },
        "notice": {
          "color": "#ffffff"
        },
        "currency": {
          "color": "#ffffff"
        },
        "close": {
          "color": "#ffffff",
          ":hover": {
            "color": "#ffffff"
          }
        },
        "empty": {
          "color": "#ffffff"
        },
        "noteDescription": {
          "color": "#ffffff"
        },
        "discountText": {
          "color": "#ffffff"
        },
        "discountIcon": {
          "fill": "#ffffff"
        },
        "discountAmount": {
          "color": "#ffffff"
        },
        "cart": {
          "background-color": "#3e3e3e"
        },
        "footer": {
          "background-color": "#3e3e3e"
        }
      },
      "text": {
        "total": "Subtotal",
        "notice": "",
        "button": "Checkout"
      },
      "googleFonts": [
        "Montserrat"
      ]
    },
    "toggle": {
      "styles": {
        "toggle": {
          "font-family": "Montserrat, sans-serif"
        },
        "count": {
          "font-size": "16px"
        }
      },
      "googleFonts": [
        "Montserrat"
      ]
    },
    "lineItem": {
      "styles": {
        "variantTitle": {
          "color": "#ffffff"
        },
        "title": {
          "color": "#ffffff"
        },
        "price": {
          "color": "#ffffff"
        },
        "fullPrice": {
          "color": "#ffffff"
        },
        "discount": {
          "color": "#ffffff"
        },
        "discountIcon": {
          "fill": "#ffffff"
        },
        "quantity": {
          "color": "#ffffff"
        },
        "quantityIncrement": {
          "color": "#ffffff",
          "border-color": "#ffffff"
        },
        "quantityDecrement": {
          "color": "#ffffff",
          "border-color": "#ffffff"
        },
        "quantityInput": {
          "color": "#ffffff",
          "border-color": "#ffffff"
        }
      }
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

## FAQs

### How much RAM do I need?

There haven't been good benchmarks to test this yet, but the general consensus is that 2GB is plenty for small events (up to 32 pilots?), 4GB is good for larger events, and 8GB might be useful for the largest events.

### What's the difference between Pi 4 and Pi 5?

The Pi 4 is fast enough that it shouldn't cause performance issues except for possibly the largest of events. The Pi 4 also works with the ESP32 footprint on the Fission PCB, possibly useful for the [VRx Backpack](https://github.com/i-am-grub/VRxC_ELRS). Although a USB-connected ESP32 is recommended if you'd like to use the VRx Backpack.

The Pi 5 is a speed upgrade but doesn't work with the ESP32 footprint directly on the PCB. A USB-connected ESP32 can still be used with the Pi 5.

### Do you sell the Atom still?

The Atom was a small alternative to the large Core timer. Since the Fission is fairly smaller/thinner than the Core, and can be built for a similar price to the Atom, it doesn't make sense to keep the two separate products in stock.

To build a Fission as cheap as possible, get the kit ($70), a [Pi Zero 2 ($20)](https://www.digikey.com/en/products/detail/raspberry-pi/SC0510/15298147), a [SD Card ($7)](https://www.amazon.com/PNY-Elite-microSDHC-Memory-P-SDU32GU185GW-GE/dp/B07R8GVGN9/ref=sr_1_11), and 1 or 2 [RX5808 ($13)](https://www.aliexpress.us/w/wholesale-rx5808.html) for a total of $110-$123.

## Etsy Store:

I've transitioned to the web store built in to this website. You can still use Etsy to check the reviews.

[Pre-Assembled NuclearHazard Core](https://nuclearquads.etsy.com/listing/1774353764/nuclearhazard-core-complete-fpv-event) (8-pilot event timer)

[Kit NuclearHazard Core](https://nuclearquads.etsy.com/listing/1773191870/nuclearhazard-core-kit-v8) (Use your own case, RXs, and Pi)