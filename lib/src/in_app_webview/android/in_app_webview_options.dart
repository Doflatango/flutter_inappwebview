import 'dart:ui';

import 'package:flutter_inappwebview/src/util.dart';

import '../../types.dart';

import '../../in_app_browser/in_app_browser_options.dart';

import '../in_app_webview_options.dart';
import '../webview.dart';

class AndroidOptions {}

///This class represents all the Android-only WebView options available.
class AndroidInAppWebViewOptions
    implements WebViewOptions, BrowserOptions, AndroidOptions {
  ///Sets the text zoom of the page in percent. The default value is `100`.
  int textZoom;

  ///Set to `true` to have the session cookie cache cleared before the new window is opened.
  bool clearSessionCache;

  ///Set to `true` if the WebView should use its built-in zoom mechanisms. The default value is `true`.
  bool builtInZoomControls;

  ///Set to `true` if the WebView should display on-screen zoom controls when using the built-in zoom mechanisms. The default value is `false`.
  bool displayZoomControls;

  ///Set to `true` if you want the database storage API is enabled. The default value is `true`.
  bool databaseEnabled;

  ///Set to `true` if you want the DOM storage API is enabled. The default value is `true`.
  bool domStorageEnabled;

  ///Set to `true` if the WebView should enable support for the "viewport" HTML meta tag or should use a wide viewport.
  ///When the value of the setting is false, the layout width is always set to the width of the WebView control in device-independent (CSS) pixels.
  ///When the value is true and the page contains the viewport meta tag, the value of the width specified in the tag is used.
  ///If the page does not contain the tag or does not provide a width, then a wide viewport will be used. The default value is `true`.
  bool useWideViewPort;

  ///Sets whether Safe Browsing is enabled. Safe Browsing allows WebView to protect against malware and phishing attacks by verifying the links.
  ///Safe Browsing is enabled by default for devices which support it.
  ///
  ///**NOTE**: available on Android 26+.
  bool safeBrowsingEnabled;

  ///Configures the WebView's behavior when a secure origin attempts to load a resource from an insecure origin.
  ///
  ///**NOTE**: available on Android 21+.
  AndroidMixedContentMode? mixedContentMode;

  ///Enables or disables content URL access within WebView. Content URL access allows WebView to load content from a content provider installed in the system. The default value is `true`.
  bool allowContentAccess;

  ///Enables or disables file access within WebView. Note that this enables or disables file system access only.
  ///Assets and resources are still accessible using `file:///android_asset` and `file:///android_res`. The default value is `true`.
  bool allowFileAccess;

  ///Sets the path to the Application Caches files. In order for the Application Caches API to be enabled, this option must be set a path to which the application can write.
  ///This option is used one time: repeated calls are ignored.
  String? appCachePath;

  ///Sets whether the WebView should not load image resources from the network (resources accessed via http and https URI schemes). The default value is `false`.
  bool blockNetworkImage;

  ///Sets whether the WebView should not load resources from the network. The default value is `false`.
  bool blockNetworkLoads;

  ///Overrides the way the cache is used. The way the cache is used is based on the navigation type. For a normal page load, the cache is checked and content is re-validated as needed.
  ///When navigating back, content is not revalidated, instead the content is just retrieved from the cache. The default value is [AndroidCacheMode.LOAD_DEFAULT].
  AndroidCacheMode? cacheMode;

  ///Sets the cursive font family name. The default value is `"cursive"`.
  String cursiveFontFamily;

  ///Sets the default fixed font size. The default value is `16`.
  int defaultFixedFontSize;

  ///Sets the default font size. The default value is `16`.
  int defaultFontSize;

  ///Sets the default text encoding name to use when decoding html pages. The default value is `"UTF-8"`.
  String defaultTextEncodingName;

  ///Disables the action mode menu items according to menuItems flag.
  ///
  ///**NOTE**: available on Android 24+.
  AndroidActionModeMenuItem? disabledActionModeMenuItems;

  ///Sets the fantasy font family name. The default value is `"fantasy"`.
  String fantasyFontFamily;

  ///Sets the fixed font family name. The default value is `"monospace"`.
  String fixedFontFamily;

  ///Set the force dark mode for this WebView. The default value is [AndroidForceDark.FORCE_DARK_OFF].
  ///
  ///**NOTE**: available on Android 29+.
  AndroidForceDark? forceDark;

  ///Sets whether Geolocation API is enabled. The default value is `true`.
  bool geolocationEnabled;

  ///Sets the underlying layout algorithm. This will cause a re-layout of the WebView.
  AndroidLayoutAlgorithm? layoutAlgorithm;

  ///Sets whether the WebView loads pages in overview mode, that is, zooms out the content to fit on screen by width.
  ///This setting is taken into account when the content width is greater than the width of the WebView control, for example, when [useWideViewPort] is enabled.
  ///The default value is `false`.
  bool loadWithOverviewMode;

  ///Sets whether the WebView should load image resources. Note that this method controls loading of all images, including those embedded using the data URI scheme.
  ///Note that if the value of this setting is changed from false to true, all images resources referenced by content currently displayed by the WebView are loaded automatically.
  ///The default value is `true`.
  bool loadsImagesAutomatically;

  ///Sets the minimum logical font size. The default is `8`.
  int minimumLogicalFontSize;

  ///Sets the initial scale for this WebView. 0 means default. The behavior for the default scale depends on the state of [useWideViewPort] and [loadWithOverviewMode].
  ///If the content fits into the WebView control by width, then the zoom is set to 100%. For wide content, the behavior depends on the state of [loadWithOverviewMode].
  ///If its value is true, the content will be zoomed out to be fit by width into the WebView control, otherwise not.
  ///If initial scale is greater than 0, WebView starts with this value as initial scale.
  ///Please note that unlike the scale properties in the viewport meta tag, this method doesn't take the screen density into account.
  ///The default is `0`.
  int initialScale;

  ///Tells the WebView whether it needs to set a node. The default value is `true`.
  bool needInitialFocus;

  ///Sets whether this WebView should raster tiles when it is offscreen but attached to a window.
  ///Turning this on can avoid rendering artifacts when animating an offscreen WebView on-screen.
  ///Offscreen WebViews in this mode use more memory. The default value is `false`.
  ///
  ///**NOTE**: available on Android 23+.
  bool offscreenPreRaster;

  ///Sets the sans-serif font family name. The default value is `"sans-serif"`.
  String sansSerifFontFamily;

  ///Sets the serif font family name. The default value is `"sans-serif"`.
  String serifFontFamily;

  ///Sets the standard font family name. The default value is `"sans-serif"`.
  String standardFontFamily;

  ///Sets whether the WebView should save form data. In Android O, the platform has implemented a fully functional Autofill feature to store form data.
  ///Therefore, the Webview form data save feature is disabled. Note that the feature will continue to be supported on older versions of Android as before.
  ///The default value is `true`.
  bool saveFormData;

  ///Boolean value to enable third party cookies in the WebView.
  ///Used on Android Lollipop and above only as third party cookies are enabled by default on Android Kitkat and below and on iOS.
  ///The default value is `true`.
  ///
  ///**NOTE**: available on Android 21+.
  bool thirdPartyCookiesEnabled;

  ///Boolean value to enable Hardware Acceleration in the WebView.
  ///The default value is `true`.
  bool hardwareAcceleration;

  ///Sets whether the WebView supports multiple windows.
  ///If set to `true`, [WebView.onCreateWindow] event must be implemented by the host application. The default value is `false`.
  bool supportMultipleWindows;

  ///Regular expression used by [WebView.shouldOverrideUrlLoading] event to cancel navigation requests for frames that are not the main frame.
  ///If the url request of a subframe matches the regular expression, then the request of that subframe is canceled.
  String? regexToCancelSubFramesLoading;

  ///Set to `true` to enable Flutter's new Hybrid Composition. The default value is `false`.
  ///Hybrid Composition is supported starting with Flutter v1.20+.
  ///
  ///**NOTE**: It is recommended to use Hybrid Composition only on Android 10+ for a release app,
  ///as it can cause framerate drops on animations in Android 9 and lower (see [Hybrid-Composition#performance](https://github.com/flutter/flutter/wiki/Hybrid-Composition#performance)).
  bool useHybridComposition;

  ///Set to `true` to be able to listen at the [WebView.androidShouldInterceptRequest] event. The default value is `false`.
  bool useShouldInterceptRequest;

  ///Set to `true` to be able to listen at the [WebView.androidOnRenderProcessGone] event. The default value is `false`.
  bool useOnRenderProcessGone;

  ///Sets the WebView's over-scroll mode.
  ///Setting the over-scroll mode of a WebView will have an effect only if the WebView is capable of scrolling.
  ///The default value is [AndroidOverScrollMode.OVER_SCROLL_IF_CONTENT_SCROLLS].
  AndroidOverScrollMode? overScrollMode;

  ///Informs WebView of the network state.
  ///This is used to set the JavaScript property `window.navigator.isOnline` and generates the online/offline event as specified in HTML5, sec. 5.7.7.
  bool? networkAvailable;

  ///Specifies the style of the scrollbars. The scrollbars can be overlaid or inset.
  ///When inset, they add to the padding of the view. And the scrollbars can be drawn inside the padding area or on the edge of the view.
  ///For example, if a view has a background drawable and you want to draw the scrollbars inside the padding specified by the drawable,
  ///you can use SCROLLBARS_INSIDE_OVERLAY or SCROLLBARS_INSIDE_INSET. If you want them to appear at the edge of the view, ignoring the padding,
  ///then you can use SCROLLBARS_OUTSIDE_OVERLAY or SCROLLBARS_OUTSIDE_INSET.
  ///The default value is [AndroidScrollBarStyle.SCROLLBARS_INSIDE_OVERLAY].
  AndroidScrollBarStyle? scrollBarStyle;

  ///Sets the position of the vertical scroll bar.
  ///The default value is [AndroidVerticalScrollbarPosition.SCROLLBAR_POSITION_DEFAULT].
  AndroidVerticalScrollbarPosition? verticalScrollbarPosition;

  ///Defines the delay in milliseconds that a scrollbar waits before fade out.
  int? scrollBarDefaultDelayBeforeFade;

  ///Defines whether scrollbars will fade when the view is not scrolling.
  ///The default value is `true`.
  bool scrollbarFadingEnabled;

  ///Defines the scrollbar fade duration in milliseconds.
  int? scrollBarFadeDuration;

  ///Sets the renderer priority policy for this WebView.
  RendererPriorityPolicy? rendererPriorityPolicy;

  ///Sets whether the default Android error page should be disabled.
  ///The default value is `false`.
  bool disableDefaultErrorPage;

  ///Sets the vertical scrollbar thumb color.
  ///
  ///**NOTE**: available on Android 29+.
  Color? verticalScrollbarThumbColor;

  ///Sets the vertical scrollbar track color.
  ///
  ///**NOTE**: available on Android 29+.
  Color? verticalScrollbarTrackColor;

  ///Sets the horizontal scrollbar thumb color.
  ///
  ///**NOTE**: available on Android 29+.
  Color? horizontalScrollbarThumbColor;

  ///Sets the horizontal scrollbar track color.
  ///
  ///**NOTE**: available on Android 29+.
  Color? horizontalScrollbarTrackColor;

  AndroidInAppWebViewOptions({
    this.textZoom = 100,
    this.clearSessionCache = false,
    this.builtInZoomControls = true,
    this.displayZoomControls = false,
    this.databaseEnabled = true,
    this.domStorageEnabled = true,
    this.useWideViewPort = true,
    this.safeBrowsingEnabled = true,
    this.mixedContentMode,
    this.allowContentAccess = true,
    this.allowFileAccess = true,
    this.appCachePath,
    this.blockNetworkImage = false,
    this.blockNetworkLoads = false,
    this.cacheMode = AndroidCacheMode.LOAD_DEFAULT,
    this.cursiveFontFamily = "cursive",
    this.defaultFixedFontSize = 16,
    this.defaultFontSize = 16,
    this.defaultTextEncodingName = "UTF-8",
    this.disabledActionModeMenuItems,
    this.fantasyFontFamily = "fantasy",
    this.fixedFontFamily = "monospace",
    this.forceDark = AndroidForceDark.FORCE_DARK_OFF,
    this.geolocationEnabled = true,
    this.layoutAlgorithm,
    this.loadWithOverviewMode = true,
    this.loadsImagesAutomatically = true,
    this.minimumLogicalFontSize = 8,
    this.needInitialFocus = true,
    this.offscreenPreRaster = false,
    this.sansSerifFontFamily = "sans-serif",
    this.serifFontFamily = "sans-serif",
    this.standardFontFamily = "sans-serif",
    this.saveFormData = true,
    this.thirdPartyCookiesEnabled = true,
    this.hardwareAcceleration = true,
    this.initialScale = 0,
    this.supportMultipleWindows = false,
    this.regexToCancelSubFramesLoading,
    this.useHybridComposition = false,
    this.useShouldInterceptRequest = false,
    this.useOnRenderProcessGone = false,
    this.overScrollMode = AndroidOverScrollMode.OVER_SCROLL_IF_CONTENT_SCROLLS,
    this.networkAvailable,
    this.scrollBarStyle = AndroidScrollBarStyle.SCROLLBARS_INSIDE_OVERLAY,
    this.verticalScrollbarPosition =
        AndroidVerticalScrollbarPosition.SCROLLBAR_POSITION_DEFAULT,
    this.scrollBarDefaultDelayBeforeFade,
    this.scrollbarFadingEnabled = true,
    this.scrollBarFadeDuration,
    this.rendererPriorityPolicy,
    this.disableDefaultErrorPage = false,
    this.verticalScrollbarThumbColor,
    this.verticalScrollbarTrackColor,
    this.horizontalScrollbarThumbColor,
    this.horizontalScrollbarTrackColor,
  });

  @override
  Map<String, dynamic> toMap() {
    return {
      "textZoom": textZoom,
      "clearSessionCache": clearSessionCache,
      "builtInZoomControls": builtInZoomControls,
      "displayZoomControls": displayZoomControls,
      "databaseEnabled": databaseEnabled,
      "domStorageEnabled": domStorageEnabled,
      "useWideViewPort": useWideViewPort,
      "safeBrowsingEnabled": safeBrowsingEnabled,
      "mixedContentMode": mixedContentMode?.toValue(),
      "allowContentAccess": allowContentAccess,
      "allowFileAccess": allowFileAccess,
      "appCachePath": appCachePath,
      "blockNetworkImage": blockNetworkImage,
      "blockNetworkLoads": blockNetworkLoads,
      "cacheMode": cacheMode?.toValue(),
      "cursiveFontFamily": cursiveFontFamily,
      "defaultFixedFontSize": defaultFixedFontSize,
      "defaultFontSize": defaultFontSize,
      "defaultTextEncodingName": defaultTextEncodingName,
      "disabledActionModeMenuItems": disabledActionModeMenuItems?.toValue(),
      "fantasyFontFamily": fantasyFontFamily,
      "fixedFontFamily": fixedFontFamily,
      "forceDark": forceDark?.toValue(),
      "geolocationEnabled": geolocationEnabled,
      "layoutAlgorithm": layoutAlgorithm?.toValue(),
      "loadWithOverviewMode": loadWithOverviewMode,
      "loadsImagesAutomatically": loadsImagesAutomatically,
      "minimumLogicalFontSize": minimumLogicalFontSize,
      "initialScale": initialScale,
      "needInitialFocus": needInitialFocus,
      "offscreenPreRaster": offscreenPreRaster,
      "sansSerifFontFamily": sansSerifFontFamily,
      "serifFontFamily": serifFontFamily,
      "standardFontFamily": standardFontFamily,
      "saveFormData": saveFormData,
      "thirdPartyCookiesEnabled": thirdPartyCookiesEnabled,
      "hardwareAcceleration": hardwareAcceleration,
      "supportMultipleWindows": supportMultipleWindows,
      "useHybridComposition": useHybridComposition,
      "regexToCancelSubFramesLoading": regexToCancelSubFramesLoading,
      "useShouldInterceptRequest": useShouldInterceptRequest,
      "useOnRenderProcessGone": useOnRenderProcessGone,
      "overScrollMode": overScrollMode?.toValue(),
      "networkAvailable": networkAvailable,
      "scrollBarStyle": scrollBarStyle?.toValue(),
      "verticalScrollbarPosition": verticalScrollbarPosition?.toValue(),
      "scrollBarDefaultDelayBeforeFade": scrollBarDefaultDelayBeforeFade,
      "scrollbarFadingEnabled": scrollbarFadingEnabled,
      "scrollBarFadeDuration": scrollBarFadeDuration,
      "rendererPriorityPolicy": rendererPriorityPolicy?.toMap(),
      "disableDefaultErrorPage": disableDefaultErrorPage,
      "verticalScrollbarThumbColor": verticalScrollbarThumbColor?.toHex(),
      "verticalScrollbarTrackColor": verticalScrollbarTrackColor?.toHex(),
      "horizontalScrollbarThumbColor": horizontalScrollbarThumbColor?.toHex(),
      "horizontalScrollbarTrackColor": horizontalScrollbarTrackColor?.toHex(),
    };
  }

  static AndroidInAppWebViewOptions fromMap(Map<String, dynamic> map) {
    AndroidInAppWebViewOptions options = AndroidInAppWebViewOptions();
    options.textZoom = map["textZoom"];
    options.clearSessionCache = map["clearSessionCache"];
    options.builtInZoomControls = map["builtInZoomControls"];
    options.displayZoomControls = map["displayZoomControls"];
    options.databaseEnabled = map["databaseEnabled"];
    options.domStorageEnabled = map["domStorageEnabled"];
    options.useWideViewPort = map["useWideViewPort"];
    options.safeBrowsingEnabled = map["safeBrowsingEnabled"];
    options.mixedContentMode =
        AndroidMixedContentMode.fromValue(map["mixedContentMode"]);
    options.allowContentAccess = map["allowContentAccess"];
    options.allowFileAccess = map["allowFileAccess"];
    options.appCachePath = map["appCachePath"];
    options.blockNetworkImage = map["blockNetworkImage"];
    options.blockNetworkLoads = map["blockNetworkLoads"];
    options.cacheMode = AndroidCacheMode.fromValue(map["cacheMode"]);
    options.cursiveFontFamily = map["cursiveFontFamily"];
    options.defaultFixedFontSize = map["defaultFixedFontSize"];
    options.defaultFontSize = map["defaultFontSize"];
    options.defaultTextEncodingName = map["defaultTextEncodingName"];
    options.disabledActionModeMenuItems =
        AndroidActionModeMenuItem.fromValue(map["disabledActionModeMenuItems"]);
    options.fantasyFontFamily = map["fantasyFontFamily"];
    options.fixedFontFamily = map["fixedFontFamily"];
    options.forceDark = AndroidForceDark.fromValue(map["forceDark"]);
    options.geolocationEnabled = map["geolocationEnabled"];
    options.layoutAlgorithm =
        AndroidLayoutAlgorithm.fromValue(map["layoutAlgorithm"]);
    options.loadWithOverviewMode = map["loadWithOverviewMode"];
    options.loadsImagesAutomatically = map["loadsImagesAutomatically"];
    options.minimumLogicalFontSize = map["minimumLogicalFontSize"];
    options.initialScale = map["initialScale"];
    options.needInitialFocus = map["needInitialFocus"];
    options.offscreenPreRaster = map["offscreenPreRaster"];
    options.sansSerifFontFamily = map["sansSerifFontFamily"];
    options.serifFontFamily = map["serifFontFamily"];
    options.standardFontFamily = map["standardFontFamily"];
    options.saveFormData = map["saveFormData"];
    options.thirdPartyCookiesEnabled = map["thirdPartyCookiesEnabled"];
    options.hardwareAcceleration = map["hardwareAcceleration"];
    options.supportMultipleWindows = map["supportMultipleWindows"];
    options.regexToCancelSubFramesLoading =
        map["regexToCancelSubFramesLoading"];
    options.useHybridComposition = map["useHybridComposition"];
    options.useShouldInterceptRequest = map["useShouldInterceptRequest"];
    options.useOnRenderProcessGone = map["useOnRenderProcessGone"];
    options.overScrollMode =
        AndroidOverScrollMode.fromValue(map["overScrollMode"]);
    options.networkAvailable = map["networkAvailable"];
    options.scrollBarStyle =
        AndroidScrollBarStyle.fromValue(map["scrollBarStyle"]);
    options.verticalScrollbarPosition =
        AndroidVerticalScrollbarPosition.fromValue(
            map["verticalScrollbarPosition"]);
    options.scrollBarDefaultDelayBeforeFade =
        map["scrollBarDefaultDelayBeforeFade"];
    options.scrollbarFadingEnabled = map["scrollbarFadingEnabled"];
    options.scrollBarFadeDuration = map["scrollBarFadeDuration"];
    options.rendererPriorityPolicy = RendererPriorityPolicy.fromMap(
        map["rendererPriorityPolicy"]?.cast<String, dynamic>());
    options.disableDefaultErrorPage = map["disableDefaultErrorPage"];
    options.verticalScrollbarThumbColor =
        UtilColor.fromHex(map["verticalScrollbarThumbColor"]);
    options.verticalScrollbarTrackColor =
        UtilColor.fromHex(map["verticalScrollbarTrackColor"]);
    options.horizontalScrollbarThumbColor =
        UtilColor.fromHex(map["horizontalScrollbarThumbColor"]);
    options.horizontalScrollbarTrackColor =
        UtilColor.fromHex(map["horizontalScrollbarTrackColor"]);
    return options;
  }

  @override
  Map<String, dynamic> toJson() {
    return this.toMap();
  }

  @override
  String toString() {
    return toMap().toString();
  }

  @override
  AndroidInAppWebViewOptions copy() {
    return AndroidInAppWebViewOptions.fromMap(this.toMap());
  }
}

class PrintAttributesMediaSize {
  final String? _preset;

  /// The unique media size id. It is unique amongst other media sizes supported by the printer. This value cannot be null.
  final String? id;

  /// The localized human readable label. This value cannot be null.
  final String? label;
  
  /// The width in mils (thousandths of an inch). Value is 1 or greater
  final int? widthMils;

  /// The height in mils (thousandths of an inch). Value is 1 or greater
  final int? heightMils;

  const PrintAttributesMediaSize({
    required this.id,
    required this.label,
    required this.widthMils,
    required this.heightMils,
  }): _preset = null;

  const PrintAttributesMediaSize._preset(this._preset)
    : id = null, label = null, widthMils = null,
      heightMils = null;

  Map<String, dynamic> toMap() {
    if (_preset != null) return { 'preset': _preset };

    return {
      'id': id,
      'label': label,
      'widthMils': widthMils,
      'heightMils': heightMils,
    };
  }

  /// ISO sizes

	/// ISO A0 media size: 841mm x 1189mm (33.11" x 46.81")
	static const PrintAttributesMediaSize ISO_A0 = PrintAttributesMediaSize._preset('ISO_A0');

	/// ISO A1 media size: 594mm x 841mm (23.39" x 33.11")
	static const PrintAttributesMediaSize ISO_A1 = PrintAttributesMediaSize._preset('ISO_A1');

	/// ISO A2 media size: 420mm x 594mm (16.54" x 23.39")
	static const PrintAttributesMediaSize ISO_A2 = PrintAttributesMediaSize._preset('ISO_A2');

	/// ISO A3 media size: 297mm x 420mm (11.69" x 16.54")
	static const PrintAttributesMediaSize ISO_A3 = PrintAttributesMediaSize._preset('ISO_A3');

	/// ISO A4 media size: 210mm x 297mm (8.27" x 11.69")
	static const PrintAttributesMediaSize ISO_A4 = PrintAttributesMediaSize._preset('ISO_A4');

	/// ISO A5 media size: 148mm x 210mm (5.83" x 8.27")
	static const PrintAttributesMediaSize ISO_A5 = PrintAttributesMediaSize._preset('ISO_A5');

	/// ISO A6 media size: 105mm x 148mm (4.13" x 5.83")
	static const PrintAttributesMediaSize ISO_A6 = PrintAttributesMediaSize._preset('ISO_A6');

	/// ISO A7 media size: 74mm x 105mm (2.91" x 4.13")
	static const PrintAttributesMediaSize ISO_A7 = PrintAttributesMediaSize._preset('ISO_A7');

	/// ISO A8 media size: 52mm x 74mm (2.05" x 2.91")
	static const PrintAttributesMediaSize ISO_A8 = PrintAttributesMediaSize._preset('ISO_A8');

	/// ISO A9 media size: 37mm x 52mm (1.46" x 2.05")
	static const PrintAttributesMediaSize ISO_A9 = PrintAttributesMediaSize._preset('ISO_A9');

	/// ISO A10 media size: 26mm x 37mm (1.02" x 1.46")
	static const PrintAttributesMediaSize ISO_A10 = PrintAttributesMediaSize._preset('ISO_A10');

	/// ISO B0 media size: 1000mm x 1414mm (39.37" x 55.67")
	static const PrintAttributesMediaSize ISO_B0 = PrintAttributesMediaSize._preset('ISO_B0');

	/// ISO B1 media size: 707mm x 1000mm (27.83" x 39.37")
	static const PrintAttributesMediaSize ISO_B1 = PrintAttributesMediaSize._preset('ISO_B1');

	/// ISO B2 media size: 500mm x 707mm (19.69" x 27.83")
	static const PrintAttributesMediaSize ISO_B2 = PrintAttributesMediaSize._preset('ISO_B2');

	/// ISO B3 media size: 353mm x 500mm (13.90" x 19.69")
	static const PrintAttributesMediaSize ISO_B3 = PrintAttributesMediaSize._preset('ISO_B3');

	/// ISO B4 media size: 250mm x 353mm (9.84" x 13.90")
	static const PrintAttributesMediaSize ISO_B4 = PrintAttributesMediaSize._preset('ISO_B4');

	/// ISO B5 media size: 176mm x 250mm (6.93" x 9.84")
	static const PrintAttributesMediaSize ISO_B5 = PrintAttributesMediaSize._preset('ISO_B5');

	/// ISO B6 media size: 125mm x 176mm (4.92" x 6.93")
	static const PrintAttributesMediaSize ISO_B6 = PrintAttributesMediaSize._preset('ISO_B6');

	/// ISO B7 media size: 88mm x 125mm (3.46" x 4.92")
	static const PrintAttributesMediaSize ISO_B7 = PrintAttributesMediaSize._preset('ISO_B7');

	/// ISO B8 media size: 62mm x 88mm (2.44" x 3.46")
	static const PrintAttributesMediaSize ISO_B8 = PrintAttributesMediaSize._preset('ISO_B8');

	/// ISO B9 media size: 44mm x 62mm (1.73" x 2.44")
	static const PrintAttributesMediaSize ISO_B9 = PrintAttributesMediaSize._preset('ISO_B9');

	/// ISO B10 media size: 31mm x 44mm (1.22" x 1.73")
	static const PrintAttributesMediaSize ISO_B10 = PrintAttributesMediaSize._preset('ISO_B10');

	/// ISO C0 media size: 917mm x 1297mm (36.10" x 51.06")
	static const PrintAttributesMediaSize ISO_C0 = PrintAttributesMediaSize._preset('ISO_C0');

	/// ISO C1 media size: 648mm x 917mm (25.51" x 36.10")
	static const PrintAttributesMediaSize ISO_C1 = PrintAttributesMediaSize._preset('ISO_C1');

	/// ISO C2 media size: 458mm x 648mm (18.03" x 25.51")
	static const PrintAttributesMediaSize ISO_C2 = PrintAttributesMediaSize._preset('ISO_C2');

	/// ISO C3 media size: 324mm x 458mm (12.76" x 18.03")
	static const PrintAttributesMediaSize ISO_C3 = PrintAttributesMediaSize._preset('ISO_C3');

	/// ISO C4 media size: 229mm x 324mm (9.02" x 12.76")
	static const PrintAttributesMediaSize ISO_C4 = PrintAttributesMediaSize._preset('ISO_C4');

	/// ISO C5 media size: 162mm x 229mm (6.38" x 9.02")
	static const PrintAttributesMediaSize ISO_C5 = PrintAttributesMediaSize._preset('ISO_C5');

	/// ISO C6 media size: 114mm x 162mm (4.49" x 6.38")
	static const PrintAttributesMediaSize ISO_C6 = PrintAttributesMediaSize._preset('ISO_C6');

	/// ISO C7 media size: 81mm x 114mm (3.19" x 4.49")
	static const PrintAttributesMediaSize ISO_C7 = PrintAttributesMediaSize._preset('ISO_C7');

	/// ISO C8 media size: 57mm x 81mm (2.24" x 3.19")
	static const PrintAttributesMediaSize ISO_C8 = PrintAttributesMediaSize._preset('ISO_C8');

	/// ISO C9 media size: 40mm x 57mm (1.57" x 2.24")
	static const PrintAttributesMediaSize ISO_C9 = PrintAttributesMediaSize._preset('ISO_C9');

	/// ISO C10 media size: 28mm x 40mm (1.10" x 1.57")
	static const PrintAttributesMediaSize ISO_C10 = PrintAttributesMediaSize._preset('ISO_C10');


  /// North America

	/// North America Letter media size: 8.5" x 11" (279mm x 216mm)
	static const PrintAttributesMediaSize NA_LETTER = PrintAttributesMediaSize._preset('NA_LETTER');

	/// North America Government-Letter media size: 8.0" x 10.5" (203mm x 267mm)
	static const PrintAttributesMediaSize NA_GOVT_LETTER = PrintAttributesMediaSize._preset('NA_GOVT_LETTER');

	/// North America Legal media size: 8.5" x 14" (216mm x 356mm)
	static const PrintAttributesMediaSize NA_LEGAL = PrintAttributesMediaSize._preset('NA_LEGAL');

  /// North America Junior Legal media size: 8.0" x 5.0" (203mm × 127mm)
	static const PrintAttributesMediaSize NA_JUNIOR_LEGAL = PrintAttributesMediaSize._preset('NA_JUNIOR_LEGAL');

	/// North America Ledger media size: 17" x 11" (432mm × 279mm)
	static const PrintAttributesMediaSize NA_LEDGER = PrintAttributesMediaSize._preset('NA_LEDGER');

	/// North America Tabloid media size: 11" x 17" (279mm × 432mm)
	static const PrintAttributesMediaSize NA_TABLOID = PrintAttributesMediaSize._preset('NA_TABLOID');

	/// North America Index Card 3x5 media size: 3" x 5" (76mm x 127mm)
	static const PrintAttributesMediaSize NA_INDEX_3X5 = PrintAttributesMediaSize._preset('NA_INDEX_3X5');

	/// North America Index Card 4x6 media size: 4" x 6" (102mm x 152mm)
	static const PrintAttributesMediaSize NA_INDEX_4X6 = PrintAttributesMediaSize._preset('NA_INDEX_4X6');

	/// North America Index Card 5x8 media size: 5" x 8" (127mm x 203mm)
	static const PrintAttributesMediaSize NA_INDEX_5X8 = PrintAttributesMediaSize._preset('NA_INDEX_5X8');

	/// North America Monarch media size: 7.25" x 10.5" (184mm x 267mm)
	static const PrintAttributesMediaSize NA_MONARCH = PrintAttributesMediaSize._preset('NA_MONARCH');

	/// North America Quarto media size: 8" x 10" (203mm x 254mm)
	static const PrintAttributesMediaSize NA_QUARTO = PrintAttributesMediaSize._preset('NA_QUARTO');

	/// North America Foolscap media size: 8" x 13" (203mm x 330mm)
	static const PrintAttributesMediaSize NA_FOOLSCAP = PrintAttributesMediaSize._preset('NA_FOOLSCAP');

	/// North America ANSI C media size: 17" x 22" (432mm x 559mm)
	static const PrintAttributesMediaSize ANSI_C = PrintAttributesMediaSize._preset('ANSI_C');

	/// North America ANSI D media size: 22" x 34" (559mm x 864mm)
	static const PrintAttributesMediaSize ANSI_D = PrintAttributesMediaSize._preset('ANSI_D');

	/// North America ANSI E media size: 34" x 44" (864mm x 1118mm)
	static const PrintAttributesMediaSize ANSI_E = PrintAttributesMediaSize._preset('ANSI_E');

	/// North America ANSI F media size: 28" x 40" (711mm x 1016mm)
	static const PrintAttributesMediaSize ANSI_F = PrintAttributesMediaSize._preset('ANSI_F');

	/// North America Arch A media size: 9" x 12" (229mm x 305mm)
	static const PrintAttributesMediaSize NA_ARCH_A = PrintAttributesMediaSize._preset('NA_ARCH_A');

	/// North America Arch B media size: 12" x 18" (305mm x 457mm)
	static const PrintAttributesMediaSize NA_ARCH_B = PrintAttributesMediaSize._preset('NA_ARCH_B');

	/// North America Arch C media size: 18" x 24" (457mm x 610mm)
	static const PrintAttributesMediaSize NA_ARCH_C = PrintAttributesMediaSize._preset('NA_ARCH_C');

	/// North America Arch D media size: 24" x 36" (610mm x 914mm)
	static const PrintAttributesMediaSize NA_ARCH_D = PrintAttributesMediaSize._preset('NA_ARCH_D');

	/// North America Arch E media size: 36" x 48" (914mm x 1219mm)
	static const PrintAttributesMediaSize NA_ARCH_E = PrintAttributesMediaSize._preset('NA_ARCH_E');

	/// North America Arch E1 media size: 30" x 42" (762mm x 1067mm)
	static const PrintAttributesMediaSize NA_ARCH_E1 = PrintAttributesMediaSize._preset('NA_ARCH_E1');

	/// North America Super B media size: 13" x 19" (330mm x 483mm)
	static const PrintAttributesMediaSize NA_SUPER_B = PrintAttributesMediaSize._preset('NA_SUPER_B');


  /// Chinese

	/// Chinese ROC 8K media size: 270mm x 390mm (10.629" x 15.3543")
	static const PrintAttributesMediaSize ROC_8K = PrintAttributesMediaSize._preset('ROC_8K');

	/// Chinese ROC 16K media size: 195mm x 270mm (7.677" x 10.629")
	static const PrintAttributesMediaSize ROC_16K = PrintAttributesMediaSize._preset('ROC_16K');

	/// Chinese PRC 1 media size: 102mm x 165mm (4.015" x 6.496")
	static const PrintAttributesMediaSize PRC_1 = PrintAttributesMediaSize._preset('PRC_1');

	/// Chinese PRC 2 media size: 102mm x 176mm (4.015" x 6.929")
	static const PrintAttributesMediaSize PRC_2 = PrintAttributesMediaSize._preset('PRC_2');

	/// Chinese PRC 3 media size: 125mm x 176mm (4.921" x 6.929")
	static const PrintAttributesMediaSize PRC_3 = PrintAttributesMediaSize._preset('PRC_3');

	/// Chinese PRC 4 media size: 110mm x 208mm (4.330" x 8.189")
	static const PrintAttributesMediaSize PRC_4 = PrintAttributesMediaSize._preset('PRC_4');

	/// Chinese PRC 5 media size: 110mm x 220mm (4.330" x 8.661")
	static const PrintAttributesMediaSize PRC_5 = PrintAttributesMediaSize._preset('PRC_5');

	/// Chinese PRC 6 media size: 120mm x 320mm (4.724" x 12.599")
	static const PrintAttributesMediaSize PRC_6 = PrintAttributesMediaSize._preset('PRC_6');

	/// Chinese PRC 7 media size: 160mm x 230mm (6.299" x 9.055")
	static const PrintAttributesMediaSize PRC_7 = PrintAttributesMediaSize._preset('PRC_7');

	/// Chinese PRC 8 media size: 120mm x 309mm (4.724" x 12.165")
	static const PrintAttributesMediaSize PRC_8 = PrintAttributesMediaSize._preset('PRC_8');

	/// Chinese PRC 9 media size: 229mm x 324mm (9.016" x 12.756")
	static const PrintAttributesMediaSize PRC_9 = PrintAttributesMediaSize._preset('PRC_9');

	/// Chinese PRC 10 media size: 324mm x 458mm (12.756" x 18.032")
	static const PrintAttributesMediaSize PRC_10 = PrintAttributesMediaSize._preset('PRC_10');

	/// Chinese PRC 16k media size: 146mm x 215mm (5.749" x 8.465")
	static const PrintAttributesMediaSize PRC_16K = PrintAttributesMediaSize._preset('PRC_16K');

	/// Chinese Pa Kai media size: 267mm x 389mm (10.512" x 15.315")
	static const PrintAttributesMediaSize OM_PA_KAI = PrintAttributesMediaSize._preset('OM_PA_KAI');

	/// Chinese Dai Pa Kai media size: 275mm x 395mm (10.827" x 15.551")
	static const PrintAttributesMediaSize OM_DAI_PA_KAI = PrintAttributesMediaSize._preset('OM_DAI_PA_KAI');

	/// Chinese Jurro Ku Kai media size: 198mm x 275mm (7.796" x 10.827")
	static const PrintAttributesMediaSize OM_JUURO_KU_KAI = PrintAttributesMediaSize._preset('OM_JUURO_KU_KAI');


  /// Japanese

	/// Japanese JIS B10 media size: 32mm x 45mm (1.259" x 1.772")
	static const PrintAttributesMediaSize JIS_B10 = PrintAttributesMediaSize._preset('JIS_B10');

	/// Japanese JIS B9 media size: 45mm x 64mm (1.772" x 2.52")
	static const PrintAttributesMediaSize JIS_B9 = PrintAttributesMediaSize._preset('JIS_B9');

	/// Japanese JIS B8 media size: 64mm x 91mm (2.52" x 3.583")
	static const PrintAttributesMediaSize JIS_B8 = PrintAttributesMediaSize._preset('JIS_B8');

	/// Japanese JIS B7 media size: 91mm x 128mm (3.583" x 5.049")
	static const PrintAttributesMediaSize JIS_B7 = PrintAttributesMediaSize._preset('JIS_B7');

	/// Japanese JIS B6 media size: 128mm x 182mm (5.049" x 7.165")
	static const PrintAttributesMediaSize JIS_B6 = PrintAttributesMediaSize._preset('JIS_B6');

	/// Japanese JIS B5 media size: 182mm x 257mm (7.165" x 10.118")
	static const PrintAttributesMediaSize JIS_B5 = PrintAttributesMediaSize._preset('JIS_B5');

	/// Japanese JIS B4 media size: 257mm x 364mm (10.118" x 14.331")
	static const PrintAttributesMediaSize JIS_B4 = PrintAttributesMediaSize._preset('JIS_B4');

	/// Japanese JIS B3 media size: 364mm x 515mm (14.331" x 20.276")
	static const PrintAttributesMediaSize JIS_B3 = PrintAttributesMediaSize._preset('JIS_B3');

	/// Japanese JIS B2 media size: 515mm x 728mm (20.276" x 28.661")
	static const PrintAttributesMediaSize JIS_B2 = PrintAttributesMediaSize._preset('JIS_B2');

	/// Japanese JIS B1 media size: 728mm x 1030mm (28.661" x 40.551")
	static const PrintAttributesMediaSize JIS_B1 = PrintAttributesMediaSize._preset('JIS_B1');

	/// Japanese JIS B0 media size: 1030mm x 1456mm (40.551" x 57.323")
	static const PrintAttributesMediaSize JIS_B0 = PrintAttributesMediaSize._preset('JIS_B0');

	/// Japanese JIS Exec media size: 216mm x 330mm (8.504" x 12.992")
	static const PrintAttributesMediaSize JIS_EXEC = PrintAttributesMediaSize._preset('JIS_EXEC');

	/// Japanese Chou4 media size: 90mm x 205mm (3.543" x 8.071")
	static const PrintAttributesMediaSize JPN_CHOU4 = PrintAttributesMediaSize._preset('JPN_CHOU4');

	/// Japanese Chou3 media size: 120mm x 235mm (4.724" x 9.252")
	static const PrintAttributesMediaSize JPN_CHOU3 = PrintAttributesMediaSize._preset('JPN_CHOU3');

	/// Japanese Chou2 media size: 111.1mm x 146mm (4.374" x 5.748")
	static const PrintAttributesMediaSize JPN_CHOU2 = PrintAttributesMediaSize._preset('JPN_CHOU2');

	/// Japanese Hagaki media size: 100mm x 148mm (3.937" x 5.827")
	static const PrintAttributesMediaSize JPN_HAGAKI = PrintAttributesMediaSize._preset('JPN_HAGAKI');

	/// Japanese Oufuku media size: 148mm x 200mm (5.827" x 7.874")
	static const PrintAttributesMediaSize JPN_OUFUKU = PrintAttributesMediaSize._preset('JPN_OUFUKU');

	/// Japanese Kahu media size: 240mm x 322.1mm (9.449" x 12.681")
	static const PrintAttributesMediaSize JPN_KAHU = PrintAttributesMediaSize._preset('JPN_KAHU');

	/// Japanese Kaku2 media size: 240mm x 332mm (9.449" x 13.071")
	static const PrintAttributesMediaSize JPN_KAKU2 = PrintAttributesMediaSize._preset('JPN_KAKU2');

	/// Japanese You4 media size: 105mm x 235mm (4.134" x 9.252")
	static const PrintAttributesMediaSize JPN_YOU4 = PrintAttributesMediaSize._preset('JPN_YOU4');

	/// Japanese Photo L media size: 89mm x 127mm (3.5 x 5")
  static const PrintAttributesMediaSize JPN_OE_PHOTO_L = PrintAttributesMediaSize._preset('JPN_OE_PHOTO_L');
}
