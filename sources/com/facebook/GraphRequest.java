package com.facebook;

import android.content.Context;
import android.graphics.Bitmap;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestBatch;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.InternalSettings;
import com.facebook.internal.Logger;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.share.internal.ShareConstants;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.b0;

/* JADX INFO: compiled from: GraphRequest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GraphRequest {
    private static final String ACCEPT_LANGUAGE_HEADER = "Accept-Language";
    public static final String ACCESS_TOKEN_PARAM = "access_token";
    private static final String ATTACHED_FILES_PARAM = "attached_files";
    private static final String ATTACHMENT_FILENAME_PREFIX = "file";
    private static final String BATCH_APP_ID_PARAM = "batch_app_id";
    private static final String BATCH_BODY_PARAM = "body";
    private static final String BATCH_ENTRY_DEPENDS_ON_PARAM = "depends_on";
    private static final String BATCH_ENTRY_NAME_PARAM = "name";
    private static final String BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM = "omit_response_on_success";
    private static final String BATCH_METHOD_PARAM = "method";
    private static final String BATCH_PARAM = "batch";
    private static final String BATCH_RELATIVE_URL_PARAM = "relative_url";
    private static final String CAPTION_PARAM = "caption";
    private static final String CONTENT_ENCODING_HEADER = "Content-Encoding";
    private static final String CONTENT_TYPE_HEADER = "Content-Type";
    private static final String DEBUG_KEY = "__debug__";
    private static final String DEBUG_MESSAGES_KEY = "messages";
    private static final String DEBUG_MESSAGE_KEY = "message";
    private static final String DEBUG_MESSAGE_LINK_KEY = "link";
    private static final String DEBUG_MESSAGE_TYPE_KEY = "type";
    private static final String DEBUG_PARAM = "debug";
    private static final String DEBUG_SEVERITY_INFO = "info";
    private static final String DEBUG_SEVERITY_WARNING = "warning";
    public static final String FIELDS_PARAM = "fields";
    private static final String FORMAT_JSON = "json";
    private static final String FORMAT_PARAM = "format";
    private static final String ISO_8601_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ssZ";
    public static final int MAXIMUM_BATCH_SIZE = 50;
    private static final String ME = "me";
    private static final String MIME_BOUNDARY;
    private static final String MY_FRIENDS = "me/friends";
    private static final String MY_PHOTOS = "me/photos";
    private static final String PICTURE_PARAM = "picture";
    private static final String SDK_ANDROID = "android";
    private static final String SDK_PARAM = "sdk";
    private static final String SEARCH = "search";
    private static final String USER_AGENT_BASE = "FBAndroidSDK";
    private static final String USER_AGENT_HEADER = "User-Agent";
    private static final String VIDEOS_SUFFIX = "/videos";
    private static String defaultBatchApplicationId;
    private static volatile String userAgent;
    private static final Pattern versionPattern;
    private AccessToken accessToken;
    private String batchEntryDependsOn;
    private String batchEntryName;
    private boolean batchEntryOmitResultOnSuccess;
    private Callback callback;
    private boolean forceApplicationRequest;
    private JSONObject graphObject;
    private String graphPath;
    private HttpMethod httpMethod;
    private String overriddenURL;
    private Bundle parameters;
    private Object tag;
    private String version;
    public static final Companion Companion = new Companion(null);
    public static final String TAG = GraphRequest.class.getSimpleName();

    /* JADX INFO: compiled from: GraphRequest.kt */
    private static final class Attachment {
        private final GraphRequest request;
        private final Object value;

        public Attachment(GraphRequest graphRequest, Object obj) {
            t9.m.e(graphRequest, "request");
            this.request = graphRequest;
            this.value = obj;
        }

        public final GraphRequest getRequest() {
            return this.request;
        }

        public final Object getValue() {
            return this.value;
        }
    }

    /* JADX INFO: compiled from: GraphRequest.kt */
    public interface Callback {
        void onCompleted(GraphResponse graphResponse);
    }

    /* JADX INFO: compiled from: GraphRequest.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        private final HttpURLConnection createConnection(URL url) throws IOException {
            URLConnection uRLConnectionOpenConnection = url.openConnection();
            Objects.requireNonNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection.setRequestProperty(GraphRequest.USER_AGENT_HEADER, getUserAgent());
            httpURLConnection.setRequestProperty(GraphRequest.ACCEPT_LANGUAGE_HEADER, Locale.getDefault().toString());
            httpURLConnection.setChunkedStreamingMode(0);
            return httpURLConnection;
        }

        private final String getBatchAppId(GraphRequestBatch graphRequestBatch) {
            String batchApplicationId = graphRequestBatch.getBatchApplicationId();
            if (batchApplicationId != null && (!graphRequestBatch.isEmpty())) {
                return batchApplicationId;
            }
            Iterator<GraphRequest> it = graphRequestBatch.iterator();
            while (it.hasNext()) {
                AccessToken accessToken = it.next().getAccessToken();
                if (accessToken != null) {
                    return accessToken.getApplicationId();
                }
            }
            String str = GraphRequest.defaultBatchApplicationId;
            if (str != null) {
                if (str.length() > 0) {
                    return str;
                }
            }
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            return FacebookSdk.getApplicationId();
        }

        private final String getDefaultPhotoPathIfNull(String str) {
            return str == null ? GraphRequest.MY_PHOTOS : str;
        }

        private final String getMimeContentType() {
            b0 b0Var = b0.f35528a;
            String str = String.format("multipart/form-data; boundary=%s", Arrays.copyOf(new Object[]{GraphRequest.MIME_BOUNDARY}, 1));
            t9.m.d(str, "java.lang.String.format(format, *args)");
            return str;
        }

        public static /* synthetic */ void getTAG$facebook_core_release$annotations() {
        }

        private final String getUserAgent() {
            if (GraphRequest.userAgent == null) {
                b0 b0Var = b0.f35528a;
                String str = String.format("%s.%s", Arrays.copyOf(new Object[]{GraphRequest.USER_AGENT_BASE, FacebookSdkVersion.BUILD}, 2));
                t9.m.d(str, "java.lang.String.format(format, *args)");
                GraphRequest.userAgent = str;
                InternalSettings internalSettings = InternalSettings.INSTANCE;
                String customUserAgent = InternalSettings.getCustomUserAgent();
                Utility utility = Utility.INSTANCE;
                if (!Utility.isNullOrEmpty(customUserAgent)) {
                    String str2 = String.format(Locale.ROOT, "%s/%s", Arrays.copyOf(new Object[]{GraphRequest.userAgent, customUserAgent}, 2));
                    t9.m.d(str2, "java.lang.String.format(locale, format, *args)");
                    GraphRequest.userAgent = str2;
                }
            }
            return GraphRequest.userAgent;
        }

        private final boolean hasOnProgressCallbacks(GraphRequestBatch graphRequestBatch) {
            Iterator<GraphRequestBatch.Callback> it = graphRequestBatch.getCallbacks().iterator();
            while (it.hasNext()) {
                if (it.next() instanceof GraphRequestBatch.OnProgressCallback) {
                    return true;
                }
            }
            Iterator<GraphRequest> it2 = graphRequestBatch.iterator();
            while (it2.hasNext()) {
                if (it2.next().getCallback() instanceof OnProgressCallback) {
                    return true;
                }
            }
            return false;
        }

        private final boolean isGzipCompressible(GraphRequestBatch graphRequestBatch) {
            for (GraphRequest graphRequest : graphRequestBatch) {
                Iterator<String> it = graphRequest.getParameters().keySet().iterator();
                while (it.hasNext()) {
                    if (isSupportedAttachmentType(graphRequest.getParameters().get(it.next()))) {
                        return false;
                    }
                }
            }
            return true;
        }

        private final boolean isMeRequest(String str) {
            Matcher matcher = GraphRequest.versionPattern.matcher(str);
            if (matcher.matches()) {
                str = matcher.group(1);
                t9.m.d(str, "matcher.group(1)");
            }
            return ba.p.u(str, "me/", false, 2, null) || ba.p.u(str, "/me/", false, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isSupportedAttachmentType(Object obj) {
            return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof Uri) || (obj instanceof ParcelFileDescriptor) || (obj instanceof ParcelableResourceWithMimeType);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isSupportedParameterType(Object obj) {
            return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: newMeRequest$lambda-0, reason: not valid java name */
        public static final void m16newMeRequest$lambda0(GraphJSONObjectCallback graphJSONObjectCallback, GraphResponse graphResponse) {
            t9.m.e(graphResponse, "response");
            if (graphJSONObjectCallback == null) {
                return;
            }
            graphJSONObjectCallback.onCompleted(graphResponse.getJSONObject(), graphResponse);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: newPlacesSearchRequest$lambda-1, reason: not valid java name */
        public static final void m17newPlacesSearchRequest$lambda1(GraphJSONArrayCallback graphJSONArrayCallback, GraphResponse graphResponse) {
            t9.m.e(graphResponse, "response");
            if (graphJSONArrayCallback != null) {
                JSONObject jSONObject = graphResponse.getJSONObject();
                graphJSONArrayCallback.onCompleted(jSONObject == null ? null : jSONObject.optJSONArray("data"), graphResponse);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String parameterToString(Object obj) {
            if (obj instanceof String) {
                return (String) obj;
            }
            if ((obj instanceof Boolean) || (obj instanceof Number)) {
                return obj.toString();
            }
            if (!(obj instanceof Date)) {
                throw new IllegalArgumentException("Unsupported parameter type.");
            }
            String str = new SimpleDateFormat(GraphRequest.ISO_8601_FORMAT_STRING, Locale.US).format((Date) obj);
            t9.m.d(str, "iso8601DateFormat.format(value)");
            return str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void processGraphObject(org.json.JSONObject r10, java.lang.String r11, com.facebook.GraphRequest.KeyValueSerializer r12) {
            /*
                r9 = this;
                boolean r0 = r9.isMeRequest(r11)
                r1 = 1
                r2 = 0
                if (r0 == 0) goto L23
                r5 = 0
                r6 = 0
                r7 = 6
                r8 = 0
                java.lang.String r4 = ":"
                r3 = r11
                int r0 = ba.g.G(r3, r4, r5, r6, r7, r8)
                java.lang.String r4 = "?"
                int r11 = ba.g.G(r3, r4, r5, r6, r7, r8)
                r3 = 3
                if (r0 <= r3) goto L23
                r3 = -1
                if (r11 == r3) goto L21
                if (r0 >= r11) goto L23
            L21:
                r11 = 1
                goto L24
            L23:
                r11 = 0
            L24:
                java.util.Iterator r0 = r10.keys()
            L28:
                boolean r3 = r0.hasNext()
                if (r3 == 0) goto L53
                java.lang.Object r3 = r0.next()
                java.lang.String r3 = (java.lang.String) r3
                java.lang.Object r4 = r10.opt(r3)
                if (r11 == 0) goto L44
                java.lang.String r5 = "image"
                boolean r5 = ba.g.m(r3, r5, r1)
                if (r5 == 0) goto L44
                r5 = 1
                goto L45
            L44:
                r5 = 0
            L45:
                java.lang.String r6 = "key"
                t9.m.d(r3, r6)
                java.lang.String r6 = "value"
                t9.m.d(r4, r6)
                r9.processGraphObjectProperty(r3, r4, r12, r5)
                goto L28
            L53:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.Companion.processGraphObject(org.json.JSONObject, java.lang.String, com.facebook.GraphRequest$KeyValueSerializer):void");
        }

        private final void processGraphObjectProperty(String str, Object obj, KeyValueSerializer keyValueSerializer, boolean z10) {
            Class<?> cls = obj.getClass();
            if (JSONObject.class.isAssignableFrom(cls)) {
                JSONObject jSONObject = (JSONObject) obj;
                if (z10) {
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        b0 b0Var = b0.f35528a;
                        String str2 = String.format("%s[%s]", Arrays.copyOf(new Object[]{str, next}, 2));
                        t9.m.d(str2, "java.lang.String.format(format, *args)");
                        Object objOpt = jSONObject.opt(next);
                        t9.m.d(objOpt, "jsonObject.opt(propertyName)");
                        processGraphObjectProperty(str2, objOpt, keyValueSerializer, z10);
                    }
                    return;
                }
                if (jSONObject.has("id")) {
                    String strOptString = jSONObject.optString("id");
                    t9.m.d(strOptString, "jsonObject.optString(\"id\")");
                    processGraphObjectProperty(str, strOptString, keyValueSerializer, z10);
                    return;
                } else if (jSONObject.has("url")) {
                    String strOptString2 = jSONObject.optString("url");
                    t9.m.d(strOptString2, "jsonObject.optString(\"url\")");
                    processGraphObjectProperty(str, strOptString2, keyValueSerializer, z10);
                    return;
                } else {
                    if (jSONObject.has(NativeProtocol.OPEN_GRAPH_CREATE_OBJECT_KEY)) {
                        String string = jSONObject.toString();
                        t9.m.d(string, "jsonObject.toString()");
                        processGraphObjectProperty(str, string, keyValueSerializer, z10);
                        return;
                    }
                    return;
                }
            }
            if (!JSONArray.class.isAssignableFrom(cls)) {
                if (String.class.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls)) {
                    keyValueSerializer.writeString(str, obj.toString());
                    return;
                }
                if (Date.class.isAssignableFrom(cls)) {
                    String str3 = new SimpleDateFormat(GraphRequest.ISO_8601_FORMAT_STRING, Locale.US).format((Date) obj);
                    t9.m.d(str3, "iso8601DateFormat.format(date)");
                    keyValueSerializer.writeString(str, str3);
                    return;
                }
                Utility utility = Utility.INSTANCE;
                Utility.logd(GraphRequest.TAG, "The type of property " + str + " in the graph object is unknown. It won't be sent in the request.");
                return;
            }
            JSONArray jSONArray = (JSONArray) obj;
            int length = jSONArray.length();
            if (length <= 0) {
                return;
            }
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                b0 b0Var2 = b0.f35528a;
                String str4 = String.format(Locale.ROOT, "%s[%d]", Arrays.copyOf(new Object[]{str, Integer.valueOf(i10)}, 2));
                t9.m.d(str4, "java.lang.String.format(locale, format, *args)");
                Object objOpt2 = jSONArray.opt(i10);
                t9.m.d(objOpt2, "jsonArray.opt(i)");
                processGraphObjectProperty(str4, objOpt2, keyValueSerializer, z10);
                if (i11 >= length) {
                    return;
                } else {
                    i10 = i11;
                }
            }
        }

        private final void processRequest(GraphRequestBatch graphRequestBatch, Logger logger, int i10, URL url, OutputStream outputStream, boolean z10) throws JSONException, IOException {
            Serializer serializer = new Serializer(outputStream, logger, z10);
            if (i10 != 1) {
                String batchAppId = getBatchAppId(graphRequestBatch);
                if (batchAppId.length() == 0) {
                    throw new FacebookException("App ID was not specified at the request or Settings.");
                }
                serializer.writeString(GraphRequest.BATCH_APP_ID_PARAM, batchAppId);
                HashMap map = new HashMap();
                serializeRequestsAsJSON(serializer, graphRequestBatch, map);
                if (logger != null) {
                    logger.append("  Attachments:\n");
                }
                serializeAttachments(map, serializer);
                return;
            }
            GraphRequest graphRequest = graphRequestBatch.get(0);
            HashMap map2 = new HashMap();
            for (String str : graphRequest.getParameters().keySet()) {
                Object obj = graphRequest.getParameters().get(str);
                if (isSupportedAttachmentType(obj)) {
                    t9.m.d(str, SDKConstants.PARAM_KEY);
                    map2.put(str, new Attachment(graphRequest, obj));
                }
            }
            if (logger != null) {
                logger.append("  Parameters:\n");
            }
            serializeParameters(graphRequest.getParameters(), serializer, graphRequest);
            if (logger != null) {
                logger.append("  Attachments:\n");
            }
            serializeAttachments(map2, serializer);
            JSONObject graphObject = graphRequest.getGraphObject();
            if (graphObject != null) {
                String path = url.getPath();
                t9.m.d(path, "url.path");
                processGraphObject(graphObject, path, serializer);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: runCallbacks$lambda-2, reason: not valid java name */
        public static final void m18runCallbacks$lambda2(ArrayList arrayList, GraphRequestBatch graphRequestBatch) {
            t9.m.e(arrayList, "$callbacks");
            t9.m.e(graphRequestBatch, "$requests");
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                Callback callback = (Callback) pair.first;
                Object obj = pair.second;
                t9.m.d(obj, "pair.second");
                callback.onCompleted((GraphResponse) obj);
            }
            Iterator<GraphRequestBatch.Callback> it2 = graphRequestBatch.getCallbacks().iterator();
            while (it2.hasNext()) {
                it2.next().onBatchCompleted(graphRequestBatch);
            }
        }

        private final void serializeAttachments(Map<String, Attachment> map, Serializer serializer) throws IOException {
            for (Map.Entry<String, Attachment> entry : map.entrySet()) {
                if (GraphRequest.Companion.isSupportedAttachmentType(entry.getValue().getValue())) {
                    serializer.writeObject(entry.getKey(), entry.getValue().getValue(), entry.getValue().getRequest());
                }
            }
        }

        private final void serializeParameters(Bundle bundle, Serializer serializer, GraphRequest graphRequest) throws IOException {
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (isSupportedParameterType(obj)) {
                    t9.m.d(str, SDKConstants.PARAM_KEY);
                    serializer.writeObject(str, obj, graphRequest);
                }
            }
        }

        private final void serializeRequestsAsJSON(Serializer serializer, Collection<GraphRequest> collection, Map<String, Attachment> map) throws JSONException, IOException {
            JSONArray jSONArray = new JSONArray();
            Iterator<GraphRequest> it = collection.iterator();
            while (it.hasNext()) {
                it.next().serializeToBatch(jSONArray, map);
            }
            serializer.writeRequestsAsJson(GraphRequest.BATCH_PARAM, jSONArray, collection);
        }

        private final void setConnectionContentType(HttpURLConnection httpURLConnection, boolean z10) {
            if (!z10) {
                httpURLConnection.setRequestProperty(GraphRequest.CONTENT_TYPE_HEADER, getMimeContentType());
            } else {
                httpURLConnection.setRequestProperty(GraphRequest.CONTENT_TYPE_HEADER, "application/x-www-form-urlencoded");
                httpURLConnection.setRequestProperty(GraphRequest.CONTENT_ENCODING_HEADER, "gzip");
            }
        }

        public final GraphResponse executeAndWait(GraphRequest graphRequest) {
            t9.m.e(graphRequest, "request");
            List<GraphResponse> listExecuteBatchAndWait = executeBatchAndWait(graphRequest);
            if (listExecuteBatchAndWait.size() == 1) {
                return listExecuteBatchAndWait.get(0);
            }
            throw new FacebookException("invalid state: expected a single response");
        }

        public final List<GraphResponse> executeBatchAndWait(GraphRequest... graphRequestArr) {
            t9.m.e(graphRequestArr, "requests");
            return executeBatchAndWait(i9.g.s(graphRequestArr));
        }

        public final GraphRequestAsyncTask executeBatchAsync(GraphRequest... graphRequestArr) {
            t9.m.e(graphRequestArr, "requests");
            return executeBatchAsync(i9.g.s(graphRequestArr));
        }

        public final List<GraphResponse> executeConnectionAndWait(HttpURLConnection httpURLConnection, Collection<GraphRequest> collection) {
            t9.m.e(httpURLConnection, "connection");
            t9.m.e(collection, "requests");
            return executeConnectionAndWait(httpURLConnection, new GraphRequestBatch(collection));
        }

        public final GraphRequestAsyncTask executeConnectionAsync(HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) {
            t9.m.e(httpURLConnection, "connection");
            t9.m.e(graphRequestBatch, "requests");
            return executeConnectionAsync(null, httpURLConnection, graphRequestBatch);
        }

        public final String getDefaultBatchApplicationId() {
            return GraphRequest.defaultBatchApplicationId;
        }

        public final GraphRequest newCustomAudienceThirdPartyIdRequest(AccessToken accessToken, Context context, String str, Callback callback) {
            t9.m.e(context, "context");
            if (str == null && accessToken != null) {
                str = accessToken.getApplicationId();
            }
            if (str == null) {
                Utility utility = Utility.INSTANCE;
                str = Utility.getMetadataApplicationId(context);
            }
            if (str == null) {
                throw new FacebookException("Facebook App ID cannot be determined");
            }
            String strK = t9.m.k(str, "/custom_audience_third_party_id");
            AttributionIdentifiers attributionIdentifiers = AttributionIdentifiers.Companion.getAttributionIdentifiers(context);
            Bundle bundle = new Bundle();
            if (accessToken == null) {
                if (attributionIdentifiers == null) {
                    throw new FacebookException("There is no access token and attribution identifiers could not be retrieved");
                }
                String attributionId = attributionIdentifiers.getAttributionId() != null ? attributionIdentifiers.getAttributionId() : attributionIdentifiers.getAndroidAdvertiserId();
                if (attributionId != null) {
                    bundle.putString("udid", attributionId);
                }
            }
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (FacebookSdk.getLimitEventAndDataUsage(context) || (attributionIdentifiers != null && attributionIdentifiers.isTrackingLimited())) {
                bundle.putString("limit_event_usage", AppEventsConstants.EVENT_PARAM_VALUE_YES);
            }
            return new GraphRequest(accessToken, strK, bundle, HttpMethod.GET, callback, null, 32, null);
        }

        public final GraphRequest newDeleteObjectRequest(AccessToken accessToken, String str, Callback callback) {
            return new GraphRequest(accessToken, str, null, HttpMethod.DELETE, callback, null, 32, null);
        }

        public final GraphRequest newGraphPathRequest(AccessToken accessToken, String str, Callback callback) {
            return new GraphRequest(accessToken, str, null, null, callback, null, 32, null);
        }

        public final GraphRequest newMeRequest(AccessToken accessToken, final GraphJSONObjectCallback graphJSONObjectCallback) {
            return new GraphRequest(accessToken, "me", null, null, new Callback() { // from class: com.facebook.t
                @Override // com.facebook.GraphRequest.Callback
                public final void onCompleted(GraphResponse graphResponse) {
                    GraphRequest.Companion.m16newMeRequest$lambda0(graphJSONObjectCallback, graphResponse);
                }
            }, null, 32, null);
        }

        public final GraphRequest newMyFriendsRequest(AccessToken accessToken, final GraphJSONArrayCallback graphJSONArrayCallback) {
            return new GraphRequest(accessToken, GraphRequest.MY_FRIENDS, null, null, new Callback() { // from class: com.facebook.GraphRequest$Companion$newMyFriendsRequest$wrapper$1
                @Override // com.facebook.GraphRequest.Callback
                public void onCompleted(GraphResponse graphResponse) {
                    t9.m.e(graphResponse, "response");
                    if (graphJSONArrayCallback != null) {
                        JSONObject jSONObject = graphResponse.getJSONObject();
                        graphJSONArrayCallback.onCompleted(jSONObject == null ? null : jSONObject.optJSONArray("data"), graphResponse);
                    }
                }
            }, null, 32, null);
        }

        public final GraphRequest newPlacesSearchRequest(AccessToken accessToken, Location location, int i10, int i11, String str, final GraphJSONArrayCallback graphJSONArrayCallback) {
            if (location == null) {
                Utility utility = Utility.INSTANCE;
                if (Utility.isNullOrEmpty(str)) {
                    throw new FacebookException("Either location or searchText must be specified.");
                }
            }
            Bundle bundle = new Bundle(5);
            bundle.putString("type", "place");
            bundle.putInt("limit", i11);
            if (location != null) {
                b0 b0Var = b0.f35528a;
                String str2 = String.format(Locale.US, "%f,%f", Arrays.copyOf(new Object[]{Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude())}, 2));
                t9.m.d(str2, "java.lang.String.format(locale, format, *args)");
                bundle.putString("center", str2);
                bundle.putInt("distance", i10);
            }
            Utility utility2 = Utility.INSTANCE;
            if (!Utility.isNullOrEmpty(str)) {
                bundle.putString("q", str);
            }
            return new GraphRequest(accessToken, GraphRequest.SEARCH, bundle, HttpMethod.GET, new Callback() { // from class: com.facebook.s
                @Override // com.facebook.GraphRequest.Callback
                public final void onCompleted(GraphResponse graphResponse) {
                    GraphRequest.Companion.m17newPlacesSearchRequest$lambda1(graphJSONArrayCallback, graphResponse);
                }
            }, null, 32, null);
        }

        public final GraphRequest newPostRequest(AccessToken accessToken, String str, JSONObject jSONObject, Callback callback) {
            GraphRequest graphRequest = new GraphRequest(accessToken, str, null, HttpMethod.POST, callback, null, 32, null);
            graphRequest.setGraphObject(jSONObject);
            return graphRequest;
        }

        public final GraphRequest newPostRequestWithBundle(AccessToken accessToken, String str, Bundle bundle, Callback callback) {
            return new GraphRequest(accessToken, str, bundle, HttpMethod.POST, callback, null, 32, null);
        }

        public final GraphRequest newUploadPhotoRequest(AccessToken accessToken, String str, Bitmap bitmap, String str2, Bundle bundle, Callback callback) {
            t9.m.e(bitmap, "image");
            Bundle bundle2 = new Bundle();
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            bundle2.putParcelable("picture", bitmap);
            if (str2 != null) {
                if (str2.length() > 0) {
                    bundle2.putString("caption", str2);
                }
            }
            return new GraphRequest(accessToken, getDefaultPhotoPathIfNull(str), bundle2, HttpMethod.POST, callback, null, 32, null);
        }

        public final void runCallbacks$facebook_core_release(final GraphRequestBatch graphRequestBatch, List<GraphResponse> list) {
            t9.m.e(graphRequestBatch, "requests");
            t9.m.e(list, "responses");
            int size = graphRequestBatch.size();
            final ArrayList arrayList = new ArrayList();
            if (size > 0) {
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    GraphRequest graphRequest = graphRequestBatch.get(i10);
                    if (graphRequest.getCallback() != null) {
                        arrayList.add(new Pair(graphRequest.getCallback(), list.get(i10)));
                    }
                    if (i11 >= size) {
                        break;
                    } else {
                        i10 = i11;
                    }
                }
            }
            if (arrayList.size() > 0) {
                Runnable runnable = new Runnable() { // from class: com.facebook.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        GraphRequest.Companion.m18runCallbacks$lambda2(arrayList, graphRequestBatch);
                    }
                };
                Handler callbackHandler = graphRequestBatch.getCallbackHandler();
                if ((callbackHandler == null ? null : Boolean.valueOf(callbackHandler.post(runnable))) == null) {
                    runnable.run();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00f2  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void serializeToUrlConnection$facebook_core_release(com.facebook.GraphRequestBatch r14, java.net.HttpURLConnection r15) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 246
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.Companion.serializeToUrlConnection$facebook_core_release(com.facebook.GraphRequestBatch, java.net.HttpURLConnection):void");
        }

        public final void setDefaultBatchApplicationId(String str) {
            GraphRequest.defaultBatchApplicationId = str;
        }

        public final HttpURLConnection toHttpConnection(GraphRequest... graphRequestArr) {
            t9.m.e(graphRequestArr, "requests");
            return toHttpConnection(i9.g.s(graphRequestArr));
        }

        public final void validateFieldsParamForGetRequests$facebook_core_release(GraphRequestBatch graphRequestBatch) {
            t9.m.e(graphRequestBatch, "requests");
            for (GraphRequest graphRequest : graphRequestBatch) {
                if (HttpMethod.GET == graphRequest.getHttpMethod()) {
                    Utility utility = Utility.INSTANCE;
                    if (Utility.isNullOrEmpty(graphRequest.getParameters().getString(GraphRequest.FIELDS_PARAM))) {
                        Logger.Companion companion = Logger.Companion;
                        LoggingBehavior loggingBehavior = LoggingBehavior.DEVELOPER_ERRORS;
                        StringBuilder sb = new StringBuilder();
                        sb.append("GET requests for /");
                        String graphPath = graphRequest.getGraphPath();
                        if (graphPath == null) {
                            graphPath = com.vungle.mediation.BuildConfig.FLAVOR;
                        }
                        sb.append(graphPath);
                        sb.append(" should contain an explicit \"fields\" parameter.");
                        companion.log(loggingBehavior, 5, "Request", sb.toString());
                    }
                }
            }
        }

        public final List<GraphResponse> executeBatchAndWait(Collection<GraphRequest> collection) {
            t9.m.e(collection, "requests");
            return executeBatchAndWait(new GraphRequestBatch(collection));
        }

        public final GraphRequestAsyncTask executeBatchAsync(Collection<GraphRequest> collection) {
            t9.m.e(collection, "requests");
            return executeBatchAsync(new GraphRequestBatch(collection));
        }

        public final List<GraphResponse> executeConnectionAndWait(HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) {
            t9.m.e(httpURLConnection, "connection");
            t9.m.e(graphRequestBatch, "requests");
            List<GraphResponse> listFromHttpConnection$facebook_core_release = GraphResponse.Companion.fromHttpConnection$facebook_core_release(httpURLConnection, graphRequestBatch);
            Utility utility = Utility.INSTANCE;
            Utility.disconnectQuietly(httpURLConnection);
            int size = graphRequestBatch.size();
            if (size == listFromHttpConnection$facebook_core_release.size()) {
                runCallbacks$facebook_core_release(graphRequestBatch, listFromHttpConnection$facebook_core_release);
                AccessTokenManager.Companion.getInstance().extendAccessTokenIfNeeded();
                return listFromHttpConnection$facebook_core_release;
            }
            b0 b0Var = b0.f35528a;
            String str = String.format(Locale.US, "Received %d responses while expecting %d", Arrays.copyOf(new Object[]{Integer.valueOf(listFromHttpConnection$facebook_core_release.size()), Integer.valueOf(size)}, 2));
            t9.m.d(str, "java.lang.String.format(locale, format, *args)");
            throw new FacebookException(str);
        }

        public final GraphRequestAsyncTask executeConnectionAsync(Handler handler, HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) {
            t9.m.e(httpURLConnection, "connection");
            t9.m.e(graphRequestBatch, "requests");
            GraphRequestAsyncTask graphRequestAsyncTask = new GraphRequestAsyncTask(httpURLConnection, graphRequestBatch);
            graphRequestBatch.setCallbackHandler(handler);
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            graphRequestAsyncTask.executeOnExecutor(FacebookSdk.getExecutor(), new Void[0]);
            return graphRequestAsyncTask;
        }

        public final HttpURLConnection toHttpConnection(Collection<GraphRequest> collection) {
            t9.m.e(collection, "requests");
            Validate validate = Validate.INSTANCE;
            Validate.notEmpty(collection, "requests");
            return toHttpConnection(new GraphRequestBatch(collection));
        }

        public final List<GraphResponse> executeBatchAndWait(GraphRequestBatch graphRequestBatch) throws Throwable {
            Exception exc;
            HttpURLConnection httpConnection;
            List<GraphResponse> listExecuteConnectionAndWait;
            t9.m.e(graphRequestBatch, "requests");
            Validate validate = Validate.INSTANCE;
            Validate.notEmptyAndContainsNoNulls(graphRequestBatch, "requests");
            HttpURLConnection httpURLConnection = null;
            try {
                httpConnection = toHttpConnection(graphRequestBatch);
                exc = null;
            } catch (Exception e10) {
                exc = e10;
                httpConnection = null;
            } catch (Throwable th) {
                th = th;
                Utility utility = Utility.INSTANCE;
                Utility.disconnectQuietly(httpURLConnection);
                throw th;
            }
            try {
                if (httpConnection != null) {
                    listExecuteConnectionAndWait = executeConnectionAndWait(httpConnection, graphRequestBatch);
                } else {
                    List<GraphResponse> listConstructErrorResponses = GraphResponse.Companion.constructErrorResponses(graphRequestBatch.getRequests(), null, new FacebookException(exc));
                    runCallbacks$facebook_core_release(graphRequestBatch, listConstructErrorResponses);
                    listExecuteConnectionAndWait = listConstructErrorResponses;
                }
                Utility utility2 = Utility.INSTANCE;
                Utility.disconnectQuietly(httpConnection);
                return listExecuteConnectionAndWait;
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = httpConnection;
                Utility utility3 = Utility.INSTANCE;
                Utility.disconnectQuietly(httpURLConnection);
                throw th;
            }
        }

        public final GraphRequestAsyncTask executeBatchAsync(GraphRequestBatch graphRequestBatch) {
            t9.m.e(graphRequestBatch, "requests");
            Validate validate = Validate.INSTANCE;
            Validate.notEmptyAndContainsNoNulls(graphRequestBatch, "requests");
            GraphRequestAsyncTask graphRequestAsyncTask = new GraphRequestAsyncTask(graphRequestBatch);
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            graphRequestAsyncTask.executeOnExecutor(FacebookSdk.getExecutor(), new Void[0]);
            return graphRequestAsyncTask;
        }

        public final HttpURLConnection toHttpConnection(GraphRequestBatch graphRequestBatch) throws Throwable {
            URL url;
            t9.m.e(graphRequestBatch, "requests");
            validateFieldsParamForGetRequests$facebook_core_release(graphRequestBatch);
            try {
                if (graphRequestBatch.size() == 1) {
                    url = new URL(graphRequestBatch.get(0).getUrlForSingleRequest());
                } else {
                    ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
                    url = new URL(ServerProtocol.getGraphUrlBase());
                }
                HttpURLConnection httpURLConnectionCreateConnection = null;
                try {
                    httpURLConnectionCreateConnection = createConnection(url);
                    serializeToUrlConnection$facebook_core_release(graphRequestBatch, httpURLConnectionCreateConnection);
                    return httpURLConnectionCreateConnection;
                } catch (IOException e10) {
                    Utility utility = Utility.INSTANCE;
                    Utility.disconnectQuietly(httpURLConnectionCreateConnection);
                    throw new FacebookException("could not construct request body", e10);
                } catch (JSONException e11) {
                    Utility utility2 = Utility.INSTANCE;
                    Utility.disconnectQuietly(httpURLConnectionCreateConnection);
                    throw new FacebookException("could not construct request body", e11);
                }
            } catch (MalformedURLException e12) {
                throw new FacebookException("could not construct URL for request", e12);
            }
        }

        public final GraphRequest newUploadPhotoRequest(AccessToken accessToken, String str, File file, String str2, Bundle bundle, Callback callback) throws FileNotFoundException {
            t9.m.e(file, "file");
            ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(file, 268435456);
            Bundle bundle2 = new Bundle();
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            bundle2.putParcelable("picture", parcelFileDescriptorOpen);
            if (str2 != null) {
                if (str2.length() > 0) {
                    bundle2.putString("caption", str2);
                }
            }
            return new GraphRequest(accessToken, getDefaultPhotoPathIfNull(str), bundle2, HttpMethod.POST, callback, null, 32, null);
        }

        public final GraphRequest newCustomAudienceThirdPartyIdRequest(AccessToken accessToken, Context context, Callback callback) {
            t9.m.e(context, "context");
            return newCustomAudienceThirdPartyIdRequest(accessToken, context, null, callback);
        }

        public final GraphRequest newUploadPhotoRequest(AccessToken accessToken, String str, Uri uri, String str2, Bundle bundle, Callback callback) throws FacebookException, FileNotFoundException {
            t9.m.e(uri, "photoUri");
            Utility utility = Utility.INSTANCE;
            if (Utility.isFileUri(uri)) {
                return newUploadPhotoRequest(accessToken, str, new File(uri.getPath()), str2, bundle, callback);
            }
            if (Utility.isContentUri(uri)) {
                Bundle bundle2 = new Bundle();
                if (bundle != null) {
                    bundle2.putAll(bundle);
                }
                bundle2.putParcelable("picture", uri);
                if (str2 != null) {
                    if (str2.length() > 0) {
                        bundle2.putString("caption", str2);
                    }
                }
                return new GraphRequest(accessToken, getDefaultPhotoPathIfNull(str), bundle2, HttpMethod.POST, callback, null, 32, null);
            }
            throw new FacebookException("The photo Uri must be either a file:// or content:// Uri");
        }
    }

    /* JADX INFO: compiled from: GraphRequest.kt */
    public interface GraphJSONArrayCallback {
        void onCompleted(JSONArray jSONArray, GraphResponse graphResponse);
    }

    /* JADX INFO: compiled from: GraphRequest.kt */
    public interface GraphJSONObjectCallback {
        void onCompleted(JSONObject jSONObject, GraphResponse graphResponse);
    }

    /* JADX INFO: compiled from: GraphRequest.kt */
    private interface KeyValueSerializer {
        void writeString(String str, String str2);
    }

    /* JADX INFO: compiled from: GraphRequest.kt */
    public interface OnProgressCallback extends Callback {
        void onProgress(long j10, long j11);
    }

    /* JADX INFO: compiled from: GraphRequest.kt */
    private static final class Serializer implements KeyValueSerializer {
        private boolean firstWrite;
        private final Logger logger;
        private final OutputStream outputStream;
        private final boolean useUrlEncode;

        public Serializer(OutputStream outputStream, Logger logger, boolean z10) {
            t9.m.e(outputStream, "outputStream");
            this.outputStream = outputStream;
            this.logger = logger;
            this.firstWrite = true;
            this.useUrlEncode = z10;
        }

        private final RuntimeException getInvalidTypeError() {
            return new IllegalArgumentException("value is not a supported type.");
        }

        public final void write(String str, Object... objArr) throws IOException {
            t9.m.e(str, GraphRequest.FORMAT_PARAM);
            t9.m.e(objArr, "args");
            if (this.useUrlEncode) {
                OutputStream outputStream = this.outputStream;
                b0 b0Var = b0.f35528a;
                Locale locale = Locale.US;
                Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
                String str2 = String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
                t9.m.d(str2, "java.lang.String.format(locale, format, *args)");
                String strEncode = URLEncoder.encode(str2, "UTF-8");
                t9.m.d(strEncode, "encode(String.format(Locale.US, format, *args), \"UTF-8\")");
                byte[] bytes = strEncode.getBytes(ba.d.f4713b);
                t9.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
                outputStream.write(bytes);
                return;
            }
            if (this.firstWrite) {
                OutputStream outputStream2 = this.outputStream;
                Charset charset = ba.d.f4713b;
                byte[] bytes2 = "--".getBytes(charset);
                t9.m.d(bytes2, "(this as java.lang.String).getBytes(charset)");
                outputStream2.write(bytes2);
                OutputStream outputStream3 = this.outputStream;
                String str3 = GraphRequest.MIME_BOUNDARY;
                Objects.requireNonNull(str3, "null cannot be cast to non-null type java.lang.String");
                byte[] bytes3 = str3.getBytes(charset);
                t9.m.d(bytes3, "(this as java.lang.String).getBytes(charset)");
                outputStream3.write(bytes3);
                OutputStream outputStream4 = this.outputStream;
                byte[] bytes4 = "\r\n".getBytes(charset);
                t9.m.d(bytes4, "(this as java.lang.String).getBytes(charset)");
                outputStream4.write(bytes4);
                this.firstWrite = false;
            }
            OutputStream outputStream5 = this.outputStream;
            b0 b0Var2 = b0.f35528a;
            Object[] objArrCopyOf2 = Arrays.copyOf(objArr, objArr.length);
            String str4 = String.format(str, Arrays.copyOf(objArrCopyOf2, objArrCopyOf2.length));
            t9.m.d(str4, "java.lang.String.format(format, *args)");
            Charset charset2 = ba.d.f4713b;
            Objects.requireNonNull(str4, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes5 = str4.getBytes(charset2);
            t9.m.d(bytes5, "(this as java.lang.String).getBytes(charset)");
            outputStream5.write(bytes5);
        }

        public final void writeBitmap(String str, Bitmap bitmap) throws IOException {
            t9.m.e(str, SDKConstants.PARAM_KEY);
            t9.m.e(bitmap, "bitmap");
            writeContentDisposition(str, str, "image/png");
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, this.outputStream);
            writeLine(com.vungle.mediation.BuildConfig.FLAVOR, new Object[0]);
            writeRecordBoundary();
            Logger logger = this.logger;
            if (logger == null) {
                return;
            }
            logger.appendKeyValue(t9.m.k("    ", str), "<Image>");
        }

        public final void writeBytes(String str, byte[] bArr) throws IOException {
            t9.m.e(str, SDKConstants.PARAM_KEY);
            t9.m.e(bArr, "bytes");
            writeContentDisposition(str, str, "content/unknown");
            this.outputStream.write(bArr);
            writeLine(com.vungle.mediation.BuildConfig.FLAVOR, new Object[0]);
            writeRecordBoundary();
            Logger logger = this.logger;
            if (logger == null) {
                return;
            }
            String strK = t9.m.k("    ", str);
            b0 b0Var = b0.f35528a;
            String str2 = String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(bArr.length)}, 1));
            t9.m.d(str2, "java.lang.String.format(locale, format, *args)");
            logger.appendKeyValue(strK, str2);
        }

        public final void writeContentDisposition(String str, String str2, String str3) throws IOException {
            if (!this.useUrlEncode) {
                write("Content-Disposition: form-data; name=\"%s\"", str);
                if (str2 != null) {
                    write("; filename=\"%s\"", str2);
                }
                writeLine(com.vungle.mediation.BuildConfig.FLAVOR, new Object[0]);
                if (str3 != null) {
                    writeLine("%s: %s", GraphRequest.CONTENT_TYPE_HEADER, str3);
                }
                writeLine(com.vungle.mediation.BuildConfig.FLAVOR, new Object[0]);
                return;
            }
            OutputStream outputStream = this.outputStream;
            b0 b0Var = b0.f35528a;
            String str4 = String.format("%s=", Arrays.copyOf(new Object[]{str}, 1));
            t9.m.d(str4, "java.lang.String.format(format, *args)");
            Charset charset = ba.d.f4713b;
            Objects.requireNonNull(str4, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes = str4.getBytes(charset);
            t9.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
            outputStream.write(bytes);
        }

        public final void writeContentUri(String str, Uri uri, String str2) throws IOException {
            int iCopyAndCloseInputStream;
            t9.m.e(str, SDKConstants.PARAM_KEY);
            t9.m.e(uri, "contentUri");
            if (str2 == null) {
                str2 = "content/unknown";
            }
            writeContentDisposition(str, str, str2);
            if (this.outputStream instanceof ProgressNoopOutputStream) {
                Utility utility = Utility.INSTANCE;
                ((ProgressNoopOutputStream) this.outputStream).addProgress(Utility.getContentSize(uri));
                iCopyAndCloseInputStream = 0;
            } else {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                InputStream inputStreamOpenInputStream = FacebookSdk.getApplicationContext().getContentResolver().openInputStream(uri);
                Utility utility2 = Utility.INSTANCE;
                iCopyAndCloseInputStream = Utility.copyAndCloseInputStream(inputStreamOpenInputStream, this.outputStream) + 0;
            }
            writeLine(com.vungle.mediation.BuildConfig.FLAVOR, new Object[0]);
            writeRecordBoundary();
            Logger logger = this.logger;
            if (logger == null) {
                return;
            }
            String strK = t9.m.k("    ", str);
            b0 b0Var = b0.f35528a;
            String str3 = String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(iCopyAndCloseInputStream)}, 1));
            t9.m.d(str3, "java.lang.String.format(locale, format, *args)");
            logger.appendKeyValue(strK, str3);
        }

        public final void writeFile(String str, ParcelFileDescriptor parcelFileDescriptor, String str2) throws IOException {
            int iCopyAndCloseInputStream;
            t9.m.e(str, SDKConstants.PARAM_KEY);
            t9.m.e(parcelFileDescriptor, "descriptor");
            if (str2 == null) {
                str2 = "content/unknown";
            }
            writeContentDisposition(str, str, str2);
            OutputStream outputStream = this.outputStream;
            if (outputStream instanceof ProgressNoopOutputStream) {
                ((ProgressNoopOutputStream) outputStream).addProgress(parcelFileDescriptor.getStatSize());
                iCopyAndCloseInputStream = 0;
            } else {
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
                Utility utility = Utility.INSTANCE;
                iCopyAndCloseInputStream = Utility.copyAndCloseInputStream(autoCloseInputStream, this.outputStream) + 0;
            }
            writeLine(com.vungle.mediation.BuildConfig.FLAVOR, new Object[0]);
            writeRecordBoundary();
            Logger logger = this.logger;
            if (logger == null) {
                return;
            }
            String strK = t9.m.k("    ", str);
            b0 b0Var = b0.f35528a;
            String str3 = String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(iCopyAndCloseInputStream)}, 1));
            t9.m.d(str3, "java.lang.String.format(locale, format, *args)");
            logger.appendKeyValue(strK, str3);
        }

        public final void writeLine(String str, Object... objArr) throws IOException {
            t9.m.e(str, GraphRequest.FORMAT_PARAM);
            t9.m.e(objArr, "args");
            write(str, Arrays.copyOf(objArr, objArr.length));
            if (this.useUrlEncode) {
                return;
            }
            write("\r\n", new Object[0]);
        }

        public final void writeObject(String str, Object obj, GraphRequest graphRequest) throws IOException {
            t9.m.e(str, SDKConstants.PARAM_KEY);
            Closeable closeable = this.outputStream;
            if (closeable instanceof RequestOutputStream) {
                ((RequestOutputStream) closeable).setCurrentRequest(graphRequest);
            }
            Companion companion = GraphRequest.Companion;
            if (companion.isSupportedParameterType(obj)) {
                writeString(str, companion.parameterToString(obj));
                return;
            }
            if (obj instanceof Bitmap) {
                writeBitmap(str, (Bitmap) obj);
                return;
            }
            if (obj instanceof byte[]) {
                writeBytes(str, (byte[]) obj);
                return;
            }
            if (obj instanceof Uri) {
                writeContentUri(str, (Uri) obj, null);
                return;
            }
            if (obj instanceof ParcelFileDescriptor) {
                writeFile(str, (ParcelFileDescriptor) obj, null);
                return;
            }
            if (!(obj instanceof ParcelableResourceWithMimeType)) {
                throw getInvalidTypeError();
            }
            ParcelableResourceWithMimeType parcelableResourceWithMimeType = (ParcelableResourceWithMimeType) obj;
            Parcelable resource = parcelableResourceWithMimeType.getResource();
            String mimeType = parcelableResourceWithMimeType.getMimeType();
            if (resource instanceof ParcelFileDescriptor) {
                writeFile(str, (ParcelFileDescriptor) resource, mimeType);
            } else {
                if (!(resource instanceof Uri)) {
                    throw getInvalidTypeError();
                }
                writeContentUri(str, (Uri) resource, mimeType);
            }
        }

        public final void writeRecordBoundary() throws IOException {
            if (!this.useUrlEncode) {
                writeLine("--%s", GraphRequest.MIME_BOUNDARY);
                return;
            }
            OutputStream outputStream = this.outputStream;
            byte[] bytes = "&".getBytes(ba.d.f4713b);
            t9.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
            outputStream.write(bytes);
        }

        public final void writeRequestsAsJson(String str, JSONArray jSONArray, Collection<GraphRequest> collection) throws JSONException, IOException {
            t9.m.e(str, SDKConstants.PARAM_KEY);
            t9.m.e(jSONArray, "requestJsonArray");
            t9.m.e(collection, "requests");
            Closeable closeable = this.outputStream;
            if (!(closeable instanceof RequestOutputStream)) {
                String string = jSONArray.toString();
                t9.m.d(string, "requestJsonArray.toString()");
                writeString(str, string);
                return;
            }
            RequestOutputStream requestOutputStream = (RequestOutputStream) closeable;
            writeContentDisposition(str, null, null);
            write("[", new Object[0]);
            int i10 = 0;
            for (GraphRequest graphRequest : collection) {
                int i11 = i10 + 1;
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                requestOutputStream.setCurrentRequest(graphRequest);
                if (i10 > 0) {
                    write(",%s", jSONObject.toString());
                } else {
                    write("%s", jSONObject.toString());
                }
                i10 = i11;
            }
            write("]", new Object[0]);
            Logger logger = this.logger;
            if (logger == null) {
                return;
            }
            String strK = t9.m.k("    ", str);
            String string2 = jSONArray.toString();
            t9.m.d(string2, "requestJsonArray.toString()");
            logger.appendKeyValue(strK, string2);
        }

        @Override // com.facebook.GraphRequest.KeyValueSerializer
        public void writeString(String str, String str2) throws IOException {
            t9.m.e(str, SDKConstants.PARAM_KEY);
            t9.m.e(str2, SDKConstants.PARAM_VALUE);
            writeContentDisposition(str, null, null);
            writeLine("%s", str2);
            writeRecordBoundary();
            Logger logger = this.logger;
            if (logger == null) {
                return;
            }
            logger.appendKeyValue(t9.m.k("    ", str), str2);
        }
    }

    static {
        char[] charArray = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        t9.m.d(charArray, "(this as java.lang.String).toCharArray()");
        StringBuilder sb = new StringBuilder();
        SecureRandom secureRandom = new SecureRandom();
        int iNextInt = secureRandom.nextInt(11) + 30;
        if (iNextInt > 0) {
            int i10 = 0;
            do {
                i10++;
                sb.append(charArray[secureRandom.nextInt(charArray.length)]);
            } while (i10 < iNextInt);
        }
        String string = sb.toString();
        t9.m.d(string, "buffer.toString()");
        MIME_BOUNDARY = string;
        versionPattern = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
    }

    public GraphRequest() {
        this(null, null, null, null, null, null, 63, null);
    }

    public GraphRequest(AccessToken accessToken) {
        this(accessToken, null, null, null, null, null, 62, null);
    }

    public GraphRequest(AccessToken accessToken, String str) {
        this(accessToken, str, null, null, null, null, 60, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle) {
        this(accessToken, str, bundle, null, null, null, 56, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, HttpMethod httpMethod) {
        this(accessToken, str, bundle, httpMethod, null, null, 48, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, HttpMethod httpMethod, Callback callback) {
        this(accessToken, str, bundle, httpMethod, callback, null, 32, null);
    }

    public /* synthetic */ GraphRequest(AccessToken accessToken, String str, Bundle bundle, HttpMethod httpMethod, Callback callback, String str2, int i10, t9.g gVar) {
        this((i10 & 1) != 0 ? null : accessToken, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : bundle, (i10 & 8) != 0 ? null : httpMethod, (i10 & 16) != 0 ? null : callback, (i10 & 32) != 0 ? null : str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: _set_callback_$lambda-0, reason: not valid java name */
    public static final void m15_set_callback_$lambda0(Callback callback, GraphResponse graphResponse) {
        t9.m.e(graphResponse, "response");
        JSONObject jSONObject = graphResponse.getJSONObject();
        JSONObject jSONObjectOptJSONObject = jSONObject == null ? null : jSONObject.optJSONObject(DEBUG_KEY);
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optJSONArray(DEBUG_MESSAGES_KEY);
        if (jSONArrayOptJSONArray != null) {
            int i10 = 0;
            int length = jSONArrayOptJSONArray.length();
            if (length > 0) {
                while (true) {
                    int i11 = i10 + 1;
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i10);
                    String strOptString = jSONObjectOptJSONObject2 == null ? null : jSONObjectOptJSONObject2.optString("message");
                    String strOptString2 = jSONObjectOptJSONObject2 == null ? null : jSONObjectOptJSONObject2.optString("type");
                    String strOptString3 = jSONObjectOptJSONObject2 == null ? null : jSONObjectOptJSONObject2.optString("link");
                    if (strOptString != null && strOptString2 != null) {
                        LoggingBehavior loggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_INFO;
                        if (t9.m.a(strOptString2, DEBUG_SEVERITY_WARNING)) {
                            loggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_WARNING;
                        }
                        Utility utility = Utility.INSTANCE;
                        if (!Utility.isNullOrEmpty(strOptString3)) {
                            strOptString = ((Object) strOptString) + " Link: " + ((Object) strOptString3);
                        }
                        Logger.Companion companion = Logger.Companion;
                        String str = TAG;
                        t9.m.d(str, "TAG");
                        companion.log(loggingBehavior, str, strOptString);
                    }
                    if (i11 >= length) {
                        break;
                    } else {
                        i10 = i11;
                    }
                }
            }
        }
        if (callback == null) {
            return;
        }
        callback.onCompleted(graphResponse);
    }

    private final void addCommonParameters() {
        Bundle bundle = this.parameters;
        if (shouldForceClientTokenForRequest()) {
            bundle.putString("access_token", getClientTokenForRequest());
        } else {
            String accessTokenToUseForRequest = getAccessTokenToUseForRequest();
            if (accessTokenToUseForRequest != null) {
                bundle.putString("access_token", accessTokenToUseForRequest);
            }
        }
        if (!bundle.containsKey("access_token")) {
            Utility utility = Utility.INSTANCE;
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (Utility.isNullOrEmpty(FacebookSdk.getClientToken())) {
                Log.w(TAG, "Starting with v13 of the SDK, a client token must be embedded in your client code before making Graph API calls. Visit https://developers.facebook.com/docs/android/getting-started#client-token to learn how to implement this change.");
            }
        }
        bundle.putString("sdk", "android");
        bundle.putString(FORMAT_PARAM, FORMAT_JSON);
        FacebookSdk facebookSdk2 = FacebookSdk.INSTANCE;
        if (FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_INFO)) {
            bundle.putString(DEBUG_PARAM, DEBUG_SEVERITY_INFO);
        } else if (FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_WARNING)) {
            bundle.putString(DEBUG_PARAM, DEBUG_SEVERITY_WARNING);
        }
    }

    private final String appendParametersToBaseUrl(String str, boolean z10) {
        if (!z10 && this.httpMethod == HttpMethod.POST) {
            return str;
        }
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        for (String str2 : this.parameters.keySet()) {
            Object obj = this.parameters.get(str2);
            if (obj == null) {
                obj = com.vungle.mediation.BuildConfig.FLAVOR;
            }
            Companion companion = Companion;
            if (companion.isSupportedParameterType(obj)) {
                builderBuildUpon.appendQueryParameter(str2, companion.parameterToString(obj).toString());
            } else if (this.httpMethod != HttpMethod.GET) {
                b0 b0Var = b0.f35528a;
                String str3 = String.format(Locale.US, "Unsupported parameter type for GET request: %s", Arrays.copyOf(new Object[]{obj.getClass().getSimpleName()}, 1));
                t9.m.d(str3, "java.lang.String.format(locale, format, *args)");
                throw new IllegalArgumentException(str3);
            }
        }
        String string = builderBuildUpon.toString();
        t9.m.d(string, "uriBuilder.toString()");
        return string;
    }

    public static final GraphResponse executeAndWait(GraphRequest graphRequest) {
        return Companion.executeAndWait(graphRequest);
    }

    public static final List<GraphResponse> executeBatchAndWait(GraphRequestBatch graphRequestBatch) {
        return Companion.executeBatchAndWait(graphRequestBatch);
    }

    public static final List<GraphResponse> executeBatchAndWait(Collection<GraphRequest> collection) {
        return Companion.executeBatchAndWait(collection);
    }

    public static final List<GraphResponse> executeBatchAndWait(GraphRequest... graphRequestArr) {
        return Companion.executeBatchAndWait(graphRequestArr);
    }

    public static final GraphRequestAsyncTask executeBatchAsync(GraphRequestBatch graphRequestBatch) {
        return Companion.executeBatchAsync(graphRequestBatch);
    }

    public static final GraphRequestAsyncTask executeBatchAsync(Collection<GraphRequest> collection) {
        return Companion.executeBatchAsync(collection);
    }

    public static final GraphRequestAsyncTask executeBatchAsync(GraphRequest... graphRequestArr) {
        return Companion.executeBatchAsync(graphRequestArr);
    }

    public static final List<GraphResponse> executeConnectionAndWait(HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) {
        return Companion.executeConnectionAndWait(httpURLConnection, graphRequestBatch);
    }

    public static final List<GraphResponse> executeConnectionAndWait(HttpURLConnection httpURLConnection, Collection<GraphRequest> collection) {
        return Companion.executeConnectionAndWait(httpURLConnection, collection);
    }

    public static final GraphRequestAsyncTask executeConnectionAsync(Handler handler, HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) {
        return Companion.executeConnectionAsync(handler, httpURLConnection, graphRequestBatch);
    }

    public static final GraphRequestAsyncTask executeConnectionAsync(HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) {
        return Companion.executeConnectionAsync(httpURLConnection, graphRequestBatch);
    }

    private final String getAccessTokenToUseForRequest() {
        AccessToken accessToken = this.accessToken;
        if (accessToken != null) {
            if (!this.parameters.containsKey("access_token")) {
                String token = accessToken.getToken();
                Logger.Companion.registerAccessToken(token);
                return token;
            }
        } else if (!this.parameters.containsKey("access_token")) {
            return getClientTokenForRequest();
        }
        return this.parameters.getString("access_token");
    }

    private final String getClientTokenForRequest() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        String applicationId = FacebookSdk.getApplicationId();
        String clientToken = FacebookSdk.getClientToken();
        if (applicationId.length() > 0) {
            if (clientToken.length() > 0) {
                return applicationId + '|' + clientToken;
            }
        }
        Utility utility = Utility.INSTANCE;
        Utility.logd(TAG, "Warning: Request without access token missing application ID or client token.");
        return null;
    }

    public static final String getDefaultBatchApplicationId() {
        return Companion.getDefaultBatchApplicationId();
    }

    private final String getGraphPathWithVersion() {
        if (versionPattern.matcher(this.graphPath).matches()) {
            return this.graphPath;
        }
        b0 b0Var = b0.f35528a;
        String str = String.format("%s/%s", Arrays.copyOf(new Object[]{this.version, this.graphPath}, 2));
        t9.m.d(str, "java.lang.String.format(format, *args)");
        return str;
    }

    private final String getUrlWithGraphPath(String str) {
        if (!isValidGraphRequestForDomain()) {
            ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
            str = ServerProtocol.getFacebookGraphUrlBase();
        }
        b0 b0Var = b0.f35528a;
        String str2 = String.format("%s/%s", Arrays.copyOf(new Object[]{str, getGraphPathWithVersion()}, 2));
        t9.m.d(str2, "java.lang.String.format(format, *args)");
        return str2;
    }

    private final boolean isApplicationRequest() {
        if (this.graphPath == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("^/?");
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        sb.append(FacebookSdk.getApplicationId());
        sb.append("/?.*");
        return this.forceApplicationRequest || Pattern.matches(sb.toString(), this.graphPath) || Pattern.matches("^/?app/?.*", this.graphPath);
    }

    private final boolean isValidGraphRequestForDomain() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        if (t9.m.a(FacebookSdk.getGraphDomain(), FacebookSdk.INSTAGRAM_COM)) {
            return !isApplicationRequest();
        }
        return true;
    }

    public static final GraphRequest newCustomAudienceThirdPartyIdRequest(AccessToken accessToken, Context context, Callback callback) {
        return Companion.newCustomAudienceThirdPartyIdRequest(accessToken, context, callback);
    }

    public static final GraphRequest newCustomAudienceThirdPartyIdRequest(AccessToken accessToken, Context context, String str, Callback callback) {
        return Companion.newCustomAudienceThirdPartyIdRequest(accessToken, context, str, callback);
    }

    public static final GraphRequest newDeleteObjectRequest(AccessToken accessToken, String str, Callback callback) {
        return Companion.newDeleteObjectRequest(accessToken, str, callback);
    }

    public static final GraphRequest newGraphPathRequest(AccessToken accessToken, String str, Callback callback) {
        return Companion.newGraphPathRequest(accessToken, str, callback);
    }

    public static final GraphRequest newMeRequest(AccessToken accessToken, GraphJSONObjectCallback graphJSONObjectCallback) {
        return Companion.newMeRequest(accessToken, graphJSONObjectCallback);
    }

    public static final GraphRequest newMyFriendsRequest(AccessToken accessToken, GraphJSONArrayCallback graphJSONArrayCallback) {
        return Companion.newMyFriendsRequest(accessToken, graphJSONArrayCallback);
    }

    public static final GraphRequest newPlacesSearchRequest(AccessToken accessToken, Location location, int i10, int i11, String str, GraphJSONArrayCallback graphJSONArrayCallback) {
        return Companion.newPlacesSearchRequest(accessToken, location, i10, i11, str, graphJSONArrayCallback);
    }

    public static final GraphRequest newPostRequest(AccessToken accessToken, String str, JSONObject jSONObject, Callback callback) {
        return Companion.newPostRequest(accessToken, str, jSONObject, callback);
    }

    public static final GraphRequest newPostRequestWithBundle(AccessToken accessToken, String str, Bundle bundle, Callback callback) {
        return Companion.newPostRequestWithBundle(accessToken, str, bundle, callback);
    }

    public static final GraphRequest newUploadPhotoRequest(AccessToken accessToken, String str, Bitmap bitmap, String str2, Bundle bundle, Callback callback) {
        return Companion.newUploadPhotoRequest(accessToken, str, bitmap, str2, bundle, callback);
    }

    public static final GraphRequest newUploadPhotoRequest(AccessToken accessToken, String str, Uri uri, String str2, Bundle bundle, Callback callback) throws FacebookException, FileNotFoundException {
        return Companion.newUploadPhotoRequest(accessToken, str, uri, str2, bundle, callback);
    }

    public static final GraphRequest newUploadPhotoRequest(AccessToken accessToken, String str, File file, String str2, Bundle bundle, Callback callback) throws FileNotFoundException {
        return Companion.newUploadPhotoRequest(accessToken, str, file, str2, bundle, callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void serializeToBatch(JSONArray jSONArray, Map<String, Attachment> map) throws JSONException, IOException {
        JSONObject jSONObject = new JSONObject();
        String str = this.batchEntryName;
        if (str != null) {
            jSONObject.put("name", str);
            jSONObject.put(BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM, this.batchEntryOmitResultOnSuccess);
        }
        String str2 = this.batchEntryDependsOn;
        if (str2 != null) {
            jSONObject.put(BATCH_ENTRY_DEPENDS_ON_PARAM, str2);
        }
        String relativeUrlForBatchedRequest = getRelativeUrlForBatchedRequest();
        jSONObject.put(BATCH_RELATIVE_URL_PARAM, relativeUrlForBatchedRequest);
        jSONObject.put(BATCH_METHOD_PARAM, this.httpMethod);
        AccessToken accessToken = this.accessToken;
        if (accessToken != null) {
            Logger.Companion.registerAccessToken(accessToken.getToken());
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.parameters.keySet().iterator();
        while (it.hasNext()) {
            Object obj = this.parameters.get(it.next());
            if (Companion.isSupportedAttachmentType(obj)) {
                b0 b0Var = b0.f35528a;
                String str3 = String.format(Locale.ROOT, "%s%d", Arrays.copyOf(new Object[]{"file", Integer.valueOf(map.size())}, 2));
                t9.m.d(str3, "java.lang.String.format(locale, format, *args)");
                arrayList.add(str3);
                map.put(str3, new Attachment(this, obj));
            }
        }
        if (!arrayList.isEmpty()) {
            jSONObject.put(ATTACHED_FILES_PARAM, TextUtils.join(",", arrayList));
        }
        JSONObject jSONObject2 = this.graphObject;
        if (jSONObject2 != null) {
            final ArrayList arrayList2 = new ArrayList();
            Companion.processGraphObject(jSONObject2, relativeUrlForBatchedRequest, new KeyValueSerializer() { // from class: com.facebook.GraphRequest.serializeToBatch.1
                @Override // com.facebook.GraphRequest.KeyValueSerializer
                public void writeString(String str4, String str5) throws IOException {
                    t9.m.e(str4, SDKConstants.PARAM_KEY);
                    t9.m.e(str5, SDKConstants.PARAM_VALUE);
                    ArrayList<String> arrayList3 = arrayList2;
                    b0 b0Var2 = b0.f35528a;
                    String str6 = String.format(Locale.US, "%s=%s", Arrays.copyOf(new Object[]{str4, URLEncoder.encode(str5, "UTF-8")}, 2));
                    t9.m.d(str6, "java.lang.String.format(locale, format, *args)");
                    arrayList3.add(str6);
                }
            });
            jSONObject.put("body", TextUtils.join("&", arrayList2));
        }
        jSONArray.put(jSONObject);
    }

    public static final void setDefaultBatchApplicationId(String str) {
        Companion.setDefaultBatchApplicationId(str);
    }

    private final boolean shouldForceClientTokenForRequest() {
        String accessTokenToUseForRequest = getAccessTokenToUseForRequest();
        boolean zX = accessTokenToUseForRequest == null ? false : ba.q.x(accessTokenToUseForRequest, "|", false, 2, null);
        if (((accessTokenToUseForRequest == null || !ba.p.u(accessTokenToUseForRequest, "IG", false, 2, null) || zX) ? false : true) && isApplicationRequest()) {
            return true;
        }
        return (isValidGraphRequestForDomain() || zX) ? false : true;
    }

    public static final HttpURLConnection toHttpConnection(GraphRequestBatch graphRequestBatch) {
        return Companion.toHttpConnection(graphRequestBatch);
    }

    public static final HttpURLConnection toHttpConnection(Collection<GraphRequest> collection) {
        return Companion.toHttpConnection(collection);
    }

    public static final HttpURLConnection toHttpConnection(GraphRequest... graphRequestArr) {
        return Companion.toHttpConnection(graphRequestArr);
    }

    public final GraphResponse executeAndWait() {
        return Companion.executeAndWait(this);
    }

    public final GraphRequestAsyncTask executeAsync() {
        return Companion.executeBatchAsync(this);
    }

    public final AccessToken getAccessToken() {
        return this.accessToken;
    }

    public final String getBatchEntryDependsOn() {
        return this.batchEntryDependsOn;
    }

    public final String getBatchEntryName() {
        return this.batchEntryName;
    }

    public final boolean getBatchEntryOmitResultOnSuccess() {
        return this.batchEntryOmitResultOnSuccess;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final JSONObject getGraphObject() {
        return this.graphObject;
    }

    public final String getGraphPath() {
        return this.graphPath;
    }

    public final HttpMethod getHttpMethod() {
        return this.httpMethod;
    }

    public final Bundle getParameters() {
        return this.parameters;
    }

    public final String getRelativeUrlForBatchedRequest() {
        if (this.overriddenURL != null) {
            throw new FacebookException("Can't override URL for a batch request");
        }
        ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
        String urlWithGraphPath = getUrlWithGraphPath(ServerProtocol.getGraphUrlBase());
        addCommonParameters();
        Uri uri = Uri.parse(appendParametersToBaseUrl(urlWithGraphPath, true));
        b0 b0Var = b0.f35528a;
        String str = String.format("%s?%s", Arrays.copyOf(new Object[]{uri.getPath(), uri.getQuery()}, 2));
        t9.m.d(str, "java.lang.String.format(format, *args)");
        return str;
    }

    public final Object getTag() {
        return this.tag;
    }

    public final String getUrlForSingleRequest() {
        String graphUrlBaseForSubdomain;
        String str = this.overriddenURL;
        if (str != null) {
            return String.valueOf(str);
        }
        String str2 = this.graphPath;
        if (this.httpMethod == HttpMethod.POST && str2 != null && ba.p.l(str2, VIDEOS_SUFFIX, false, 2, null)) {
            ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
            graphUrlBaseForSubdomain = ServerProtocol.getGraphVideoUrlBase();
        } else {
            ServerProtocol serverProtocol2 = ServerProtocol.INSTANCE;
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            graphUrlBaseForSubdomain = ServerProtocol.getGraphUrlBaseForSubdomain(FacebookSdk.getGraphDomain());
        }
        String urlWithGraphPath = getUrlWithGraphPath(graphUrlBaseForSubdomain);
        addCommonParameters();
        return appendParametersToBaseUrl(urlWithGraphPath, false);
    }

    public final String getVersion() {
        return this.version;
    }

    public final void setAccessToken(AccessToken accessToken) {
        this.accessToken = accessToken;
    }

    public final void setBatchEntryDependsOn(String str) {
        this.batchEntryDependsOn = str;
    }

    public final void setBatchEntryName(String str) {
        this.batchEntryName = str;
    }

    public final void setBatchEntryOmitResultOnSuccess(boolean z10) {
        this.batchEntryOmitResultOnSuccess = z10;
    }

    public final void setCallback(final Callback callback) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        if (FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_INFO) || FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.GRAPH_API_DEBUG_WARNING)) {
            this.callback = new Callback() { // from class: com.facebook.q
                @Override // com.facebook.GraphRequest.Callback
                public final void onCompleted(GraphResponse graphResponse) {
                    GraphRequest.m15_set_callback_$lambda0(callback, graphResponse);
                }
            };
        } else {
            this.callback = callback;
        }
    }

    public final void setForceApplicationRequest(boolean z10) {
        this.forceApplicationRequest = z10;
    }

    public final void setGraphObject(JSONObject jSONObject) {
        this.graphObject = jSONObject;
    }

    public final void setGraphPath(String str) {
        this.graphPath = str;
    }

    public final void setHttpMethod(HttpMethod httpMethod) {
        if (this.overriddenURL != null && httpMethod != HttpMethod.GET) {
            throw new FacebookException("Can't change HTTP method on request with overridden URL.");
        }
        if (httpMethod == null) {
            httpMethod = HttpMethod.GET;
        }
        this.httpMethod = httpMethod;
    }

    public final void setParameters(Bundle bundle) {
        t9.m.e(bundle, "<set-?>");
        this.parameters = bundle;
    }

    public final void setTag(Object obj) {
        this.tag = obj;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{Request: ");
        sb.append(" accessToken: ");
        Object obj = this.accessToken;
        if (obj == null) {
            obj = "null";
        }
        sb.append(obj);
        sb.append(", graphPath: ");
        sb.append(this.graphPath);
        sb.append(", graphObject: ");
        sb.append(this.graphObject);
        sb.append(", httpMethod: ");
        sb.append(this.httpMethod);
        sb.append(", parameters: ");
        sb.append(this.parameters);
        sb.append("}");
        String string = sb.toString();
        t9.m.d(string, "StringBuilder()\n        .append(\"{Request: \")\n        .append(\" accessToken: \")\n        .append(if (accessToken == null) \"null\" else accessToken)\n        .append(\", graphPath: \")\n        .append(graphPath)\n        .append(\", graphObject: \")\n        .append(graphObject)\n        .append(\", httpMethod: \")\n        .append(httpMethod)\n        .append(\", parameters: \")\n        .append(parameters)\n        .append(\"}\")\n        .toString()");
        return string;
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, HttpMethod httpMethod, Callback callback, String str2) {
        this.batchEntryOmitResultOnSuccess = true;
        this.accessToken = accessToken;
        this.graphPath = str;
        this.version = str2;
        setCallback(callback);
        setHttpMethod(httpMethod);
        if (bundle != null) {
            this.parameters = new Bundle(bundle);
        } else {
            this.parameters = new Bundle();
        }
        if (this.version == null) {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            this.version = FacebookSdk.getGraphApiVersion();
        }
    }

    /* JADX INFO: compiled from: GraphRequest.kt */
    public static final class ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
        private final String mimeType;
        private final RESOURCE resource;
        public static final Companion Companion = new Companion(null);
        public static final Parcelable.Creator<ParcelableResourceWithMimeType<?>> CREATOR = new Parcelable.Creator<ParcelableResourceWithMimeType<?>>() { // from class: com.facebook.GraphRequest$ParcelableResourceWithMimeType$Companion$CREATOR$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GraphRequest.ParcelableResourceWithMimeType<?> createFromParcel(Parcel parcel) {
                t9.m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
                return new GraphRequest.ParcelableResourceWithMimeType<>(parcel, (t9.g) null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GraphRequest.ParcelableResourceWithMimeType<?>[] newArray(int i10) {
                return new GraphRequest.ParcelableResourceWithMimeType[i10];
            }
        };

        /* JADX INFO: compiled from: GraphRequest.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(t9.g gVar) {
                this();
            }
        }

        public /* synthetic */ ParcelableResourceWithMimeType(Parcel parcel, t9.g gVar) {
            this(parcel);
        }

        public ParcelableResourceWithMimeType(RESOURCE resource, String str) {
            this.mimeType = str;
            this.resource = resource;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 1;
        }

        public final String getMimeType() {
            return this.mimeType;
        }

        public final RESOURCE getResource() {
            return this.resource;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            t9.m.e(parcel, "out");
            parcel.writeString(this.mimeType);
            parcel.writeParcelable(this.resource, i10);
        }

        private ParcelableResourceWithMimeType(Parcel parcel) {
            this.mimeType = parcel.readString();
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            this.resource = (RESOURCE) parcel.readParcelable(FacebookSdk.getApplicationContext().getClassLoader());
        }
    }

    public GraphRequest(AccessToken accessToken, URL url) {
        t9.m.e(url, "overriddenURL");
        this.batchEntryOmitResultOnSuccess = true;
        this.accessToken = accessToken;
        this.overriddenURL = url.toString();
        setHttpMethod(HttpMethod.GET);
        this.parameters = new Bundle();
    }
}
