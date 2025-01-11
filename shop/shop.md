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
      <div id='product-component-1736559407030'></div>
    </div>
    <div class="product-wrapper">
      <div id='product-component-1736515178933'></div>
    </div>
    <div class="product-wrapper">
      <div id='product-component-1736515464641'></div>
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
          id: '9597043114269',
          node: document.getElementById('product-component-1736515464641'),
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

## Etsy Store:

I've transitioned to the web store built in to this website. You can still use Etsy to check the reviews.

[Pre-Assembled NuclearHazard Core](https://nuclearquads.etsy.com/listing/1774353764/nuclearhazard-core-complete-fpv-event) (8-pilot event timer)

[Kit NuclearHazard Core](https://nuclearquads.etsy.com/listing/1773191870/nuclearhazard-core-kit-v8) (Use your own case, RXs, and Pi)