class ProductsModel {
  int id;
  String name;
  String slug;
  String permalink;
  DateTime dateCreated;
  DateTime dateCreatedGmt;
  DateTime dateModified;
  DateTime dateModifiedGmt;
  ProductsModelType type;
  Status status;
  bool featured;
  CatalogVisibility catalogVisibility;
  String description;
  String shortDescription;
  String sku;
  String price;
  String regularPrice;
  String salePrice;
  dynamic dateOnSaleFrom;
  dynamic dateOnSaleFromGmt;
  dynamic dateOnSaleTo;
  dynamic dateOnSaleToGmt;
  bool onSale;
  bool purchasable;
  int totalSales;
  bool virtual;
  bool downloadable;
  List<dynamic> downloads;
  int downloadLimit;
  int downloadExpiry;
  String externalUrl;
  String buttonText;
  TaxStatus taxStatus;
  String taxClass;
  bool manageStock;
  int stockQuantity;
  Backorders backorders;
  bool backordersAllowed;
  bool backordered;
  int lowStockAmount;
  bool soldIndividually;
  String weight;
  Dimensions dimensions;
  bool shippingRequired;
  bool shippingTaxable;
  String shippingClass;
  int shippingClassId;
  bool reviewsAllowed;
  String averageRating;
  int ratingCount;
  List<dynamic> upsellIds;
  List<dynamic> crossSellIds;
  int parentId;
  String purchaseNote;
  List<Category> categories;
  List<dynamic> tags;
  List<Image> images;
  List<dynamic> attributes;
  List<dynamic> defaultAttributes;
  List<dynamic> variations;
  List<dynamic> groupedProducts;
  int menuOrder;
  String priceHtml;
  List<int> relatedIds;
  List<MetaDatum> metaData;
  StockStatus stockStatus;
  bool hasOptions;
  String yoastHead;
  YoastHeadJson yoastHeadJson;
  List<dynamic> brands;
  Links links;

  ProductsModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.permalink,
    required this.dateCreated,
    required this.dateCreatedGmt,
    required this.dateModified,
    required this.dateModifiedGmt,
    required this.type,
    required this.status,
    required this.featured,
    required this.catalogVisibility,
    required this.description,
    required this.shortDescription,
    required this.sku,
    required this.price,
    required this.regularPrice,
    required this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    required this.onSale,
    required this.purchasable,
    required this.totalSales,
    required this.virtual,
    required this.downloadable,
    required this.downloads,
    required this.downloadLimit,
    required this.downloadExpiry,
    required this.externalUrl,
    required this.buttonText,
    required this.taxStatus,
    required this.taxClass,
    required this.manageStock,
    required this.stockQuantity,
    required this.backorders,
    required this.backordersAllowed,
    required this.backordered,
    required this.lowStockAmount,
    required this.soldIndividually,
    required this.weight,
    required this.dimensions,
    required this.shippingRequired,
    required this.shippingTaxable,
    required this.shippingClass,
    required this.shippingClassId,
    required this.reviewsAllowed,
    required this.averageRating,
    required this.ratingCount,
    required this.upsellIds,
    required this.crossSellIds,
    required this.parentId,
    required this.purchaseNote,
    required this.categories,
    required this.tags,
    required this.images,
    required this.attributes,
    required this.defaultAttributes,
    required this.variations,
    required this.groupedProducts,
    required this.menuOrder,
    required this.priceHtml,
    required this.relatedIds,
    required this.metaData,
    required this.stockStatus,
    required this.hasOptions,
    required this.yoastHead,
    required this.yoastHeadJson,
    required this.brands,
    required this.links,
  });

}

enum Backorders { NO }

enum CatalogVisibility { VISIBLE }

class Category {
  int id;
  Name name;
  Slug slug;

  Category({
    required this.id,
    required this.name,
    required this.slug,
  });

}

enum Name { BUY_1_GET_1, COMBO_OFFER, OFFERS }

enum Slug { BUY_1_GET_1, COMBO_OFFER, OFFERS }

class Dimensions {
  String length;
  String width;
  String height;

  Dimensions({
    required this.length,
    required this.width,
    required this.height,
  });

}

class Image {
  int id;
  DateTime dateCreated;
  DateTime dateCreatedGmt;
  DateTime dateModified;
  DateTime dateModifiedGmt;
  String src;
  String name;
  String alt;

  Image({
    required this.id,
    required this.dateCreated,
    required this.dateCreatedGmt,
    required this.dateModified,
    required this.dateModifiedGmt,
    required this.src,
    required this.name,
    required this.alt,
  });

}

class Links {
  List<Collection> self;
  List<Collection> collection;

  Links({
    required this.self,
    required this.collection,
  });

}

class Collection {
  String href;

  Collection({
    required this.href,
  });

}

class MetaDatum {
  int id;
  String key;
  dynamic value;

  MetaDatum({
    required this.id,
    required this.key,
    required this.value,
  });

}

class ValueClass {
  String enableLoop;
  String enableProduct;

  ValueClass({
    required this.enableLoop,
    required this.enableProduct,
  });

}

enum Status { PUBLISH }

enum StockStatus { INSTOCK }

enum TaxStatus { TAXABLE }

enum ProductsModelType { SIMPLE }

class YoastHeadJson {
  String title;
  String description;
  Robots robots;
  String canonical;
  OgLocale ogLocale;
  OgType ogType;
  String ogTitle;
  String ogDescription;
  String ogUrl;
  OgSiteName ogSiteName;
  String articlePublisher;
  DateTime articleModifiedTime;
  List<OgImage> ogImage;
  TwitterCard twitterCard;
  TwitterSite twitterSite;
  Schema schema;

  YoastHeadJson({
    required this.title,
    required this.description,
    required this.robots,
    required this.canonical,
    required this.ogLocale,
    required this.ogType,
    required this.ogTitle,
    required this.ogDescription,
    required this.ogUrl,
    required this.ogSiteName,
    required this.articlePublisher,
    required this.articleModifiedTime,
    required this.ogImage,
    required this.twitterCard,
    required this.twitterSite,
    required this.schema,
  });

}

class OgImage {
  int width;
  int height;
  String url;
  OgImageType type;

  OgImage({
    required this.width,
    required this.height,
    required this.url,
    required this.type,
  });

}

enum OgImageType { IMAGE_JPEG }

enum OgLocale { EN_US }

enum OgSiteName { COSMETICS_SHOP_IN_BANGLADESH_BEAUTYSIAA_COM }

enum OgType { ARTICLE }

class Robots {
  Index index;
  Follow follow;
  MaxSnippet maxSnippet;
  MaxImagePreview maxImagePreview;
  MaxVideoPreview maxVideoPreview;

  Robots({
    required this.index,
    required this.follow,
    required this.maxSnippet,
    required this.maxImagePreview,
    required this.maxVideoPreview,
  });

}

enum Follow { FOLLOW }

enum Index { INDEX }

enum MaxImagePreview { MAX_IMAGE_PREVIEW_LARGE }

enum MaxSnippet { MAX_SNIPPET_1 }

enum MaxVideoPreview { MAX_VIDEO_PREVIEW_1 }

class Schema {
  String context;
  List<Graph> graph;

  Schema({
    required this.context,
    required this.graph,
  });

}

class Graph {
  GraphType type;
  String id;
  String? url;
  String? name;
  Breadcrumb? isPartOf;
  DateTime? datePublished;
  DateTime? dateModified;
  String? description;
  Breadcrumb? breadcrumb;
  InLanguage? inLanguage;
  List<PotentialAction>? potentialAction;
  List<ItemListElement>? itemListElement;
  Breadcrumb? publisher;
  Logo? logo;
  Breadcrumb? image;
  List<String>? sameAs;

  Graph({
    required this.type,
    required this.id,
    this.url,
    this.name,
    this.isPartOf,
    this.datePublished,
    this.dateModified,
    this.description,
    this.breadcrumb,
    this.inLanguage,
    this.potentialAction,
    this.itemListElement,
    this.publisher,
    this.logo,
    this.image,
    this.sameAs,
  });

}

class Breadcrumb {
  String id;

  Breadcrumb({
    required this.id,
  });

}

enum InLanguage { EN_US }

class ItemListElement {
  ItemListElementType type;
  int position;
  String name;
  String? item;

  ItemListElement({
    required this.type,
    required this.position,
    required this.name,
    this.item,
  });

}

enum ItemListElementType { LIST_ITEM }

class Logo {
  LogoType type;
  InLanguage inLanguage;
  String id;
  String url;
  String contentUrl;
  int width;
  int height;
  Caption caption;

  Logo({
    required this.type,
    required this.inLanguage,
    required this.id,
    required this.url,
    required this.contentUrl,
    required this.width,
    required this.height,
    required this.caption,
  });

}

enum Caption { BEAUTYSIAA }

enum LogoType { IMAGE_OBJECT }

class PotentialAction {
  PotentialActionType type;
  dynamic target;
  QueryInput? queryInput;

  PotentialAction({
    required this.type,
    required this.target,
    this.queryInput,
  });

}

enum QueryInput { REQUIRED_NAME_SEARCH_TERM_STRING }

class TargetClass {
  TargetType type;
  UrlTemplate urlTemplate;

  TargetClass({
    required this.type,
    required this.urlTemplate,
  });

}

enum TargetType { ENTRY_POINT }

enum UrlTemplate { HTTPS_BEAUTYSIAA_COM_S_SEARCH_TERM_STRING }

enum PotentialActionType { READ_ACTION, SEARCH_ACTION }

enum GraphType { WEB_PAGE, BREADCRUMB_LIST, WEB_SITE, ORGANIZATION }

enum TwitterCard { SUMMARY_LARGE_IMAGE }

enum TwitterSite { BEAUTYSIAA }
