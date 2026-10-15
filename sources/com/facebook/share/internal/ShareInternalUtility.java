package com.facebook.share.internal;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import ba.p;
import ba.q;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.NativeAppCallAttachmentStore;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.share.Sharer;
import com.facebook.share.model.CameraEffectTextures;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import i9.k;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.m;

/* JADX INFO: compiled from: ShareInternalUtility.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ShareInternalUtility {
    public static final ShareInternalUtility INSTANCE = new ShareInternalUtility();
    public static final String MY_STAGING_RESOURCES = "me/staging_resources";
    public static final String STAGING_PARAM = "file";

    private ShareInternalUtility() {
    }

    private final AppCall getAppCallFromActivityResult(int i10, int i11, Intent intent) {
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        UUID callIdFromIntent = NativeProtocol.getCallIdFromIntent(intent);
        if (callIdFromIntent == null) {
            return null;
        }
        return AppCall.Companion.finishPendingCall(callIdFromIntent, i10);
    }

    private final NativeAppCallAttachmentStore.Attachment getAttachment(UUID uuid, ShareMedia<?, ?> shareMedia) {
        Bitmap bitmap;
        Uri localUrl;
        Uri uri = null;
        Bitmap bitmap2 = null;
        if (shareMedia instanceof SharePhoto) {
            SharePhoto sharePhoto = (SharePhoto) shareMedia;
            bitmap2 = sharePhoto.getBitmap();
            localUrl = sharePhoto.getImageUrl();
        } else {
            if (!(shareMedia instanceof ShareVideo)) {
                bitmap = null;
                return getAttachment(uuid, uri, bitmap);
            }
            localUrl = ((ShareVideo) shareMedia).getLocalUrl();
        }
        Bitmap bitmap3 = bitmap2;
        uri = localUrl;
        bitmap = bitmap3;
        return getAttachment(uuid, uri, bitmap);
    }

    public static final Bundle getBackgroundAssetMediaInfo(ShareStoryContent shareStoryContent, UUID uuid) {
        m.e(uuid, "appCallId");
        Bundle bundle = null;
        if (shareStoryContent != null && shareStoryContent.getBackgroundAsset() != null) {
            ShareMedia<?, ?> backgroundAsset = shareStoryContent.getBackgroundAsset();
            NativeAppCallAttachmentStore.Attachment attachment = INSTANCE.getAttachment(uuid, backgroundAsset);
            if (attachment == null) {
                return null;
            }
            bundle = new Bundle();
            bundle.putString("type", backgroundAsset.getMediaType().name());
            bundle.putString(ShareConstants.MEDIA_URI, attachment.getAttachmentUrl());
            String uriExtension = getUriExtension(attachment.getOriginalUri());
            if (uriExtension != null) {
                Utility utility = Utility.INSTANCE;
                Utility.putNonEmptyString(bundle, ShareConstants.MEDIA_EXTENSION, uriExtension);
            }
            NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
            NativeAppCallAttachmentStore.addAttachments(k.b(attachment));
        }
        return bundle;
    }

    public static final Pair<String, String> getFieldNameAndNamespaceFromFullName(String str) {
        String strSubstring;
        int i10;
        m.e(str, "fullName");
        int iF = q.F(str, ':', 0, false, 6, null);
        if (iF == -1 || str.length() <= (i10 = iF + 1)) {
            strSubstring = null;
        } else {
            strSubstring = str.substring(0, iF);
            m.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            str = str.substring(i10);
            m.d(str, "(this as java.lang.String).substring(startIndex)");
        }
        return new Pair<>(strSubstring, str);
    }

    public static final List<Bundle> getMediaInfos(ShareMediaContent shareMediaContent, UUID uuid) {
        Bundle bundle;
        m.e(uuid, "appCallId");
        List<ShareMedia<?, ?>> media = shareMediaContent == null ? null : shareMediaContent.getMedia();
        if (media == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (ShareMedia<?, ?> shareMedia : media) {
            NativeAppCallAttachmentStore.Attachment attachment = INSTANCE.getAttachment(uuid, shareMedia);
            if (attachment == null) {
                bundle = null;
            } else {
                arrayList.add(attachment);
                bundle = new Bundle();
                bundle.putString("type", shareMedia.getMediaType().name());
                bundle.putString(ShareConstants.MEDIA_URI, attachment.getAttachmentUrl());
            }
            if (bundle != null) {
                arrayList2.add(bundle);
            }
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
        NativeAppCallAttachmentStore.addAttachments(arrayList);
        return arrayList2;
    }

    public static final String getNativeDialogCompletionGesture(Bundle bundle) {
        m.e(bundle, "result");
        return bundle.containsKey(NativeProtocol.RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY) ? bundle.getString(NativeProtocol.RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY) : bundle.getString(NativeProtocol.EXTRA_DIALOG_COMPLETION_GESTURE_KEY);
    }

    public static final List<String> getPhotoUrls(SharePhotoContent sharePhotoContent, UUID uuid) {
        m.e(uuid, "appCallId");
        List<SharePhoto> photos = sharePhotoContent == null ? null : sharePhotoContent.getPhotos();
        if (photos == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = photos.iterator();
        while (it.hasNext()) {
            NativeAppCallAttachmentStore.Attachment attachment = INSTANCE.getAttachment(uuid, (SharePhoto) it.next());
            if (attachment != null) {
                arrayList.add(attachment);
            }
        }
        ArrayList arrayList2 = new ArrayList(i9.m.l(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((NativeAppCallAttachmentStore.Attachment) it2.next()).getAttachmentUrl());
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
        NativeAppCallAttachmentStore.addAttachments(arrayList);
        return arrayList2;
    }

    public static final String getShareDialogPostId(Bundle bundle) {
        m.e(bundle, "result");
        return bundle.containsKey(ShareConstants.RESULT_POST_ID) ? bundle.getString(ShareConstants.RESULT_POST_ID) : bundle.containsKey(ShareConstants.EXTRA_RESULT_POST_ID) ? bundle.getString(ShareConstants.EXTRA_RESULT_POST_ID) : bundle.getString(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID);
    }

    public static final ResultProcessor getShareResultProcessor(FacebookCallback<Sharer.Result> facebookCallback) {
        return new ResultProcessor(facebookCallback) { // from class: com.facebook.share.internal.ShareInternalUtility.getShareResultProcessor.1
            final /* synthetic */ FacebookCallback<Sharer.Result> $callback;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(facebookCallback);
                this.$callback = facebookCallback;
            }

            @Override // com.facebook.share.internal.ResultProcessor
            public void onCancel(AppCall appCall) {
                m.e(appCall, "appCall");
                ShareInternalUtility shareInternalUtility = ShareInternalUtility.INSTANCE;
                ShareInternalUtility.invokeOnCancelCallback(this.$callback);
            }

            @Override // com.facebook.share.internal.ResultProcessor
            public void onError(AppCall appCall, FacebookException facebookException) {
                m.e(appCall, "appCall");
                m.e(facebookException, "error");
                ShareInternalUtility shareInternalUtility = ShareInternalUtility.INSTANCE;
                ShareInternalUtility.invokeOnErrorCallback(this.$callback, facebookException);
            }

            @Override // com.facebook.share.internal.ResultProcessor
            public void onSuccess(AppCall appCall, Bundle bundle) {
                m.e(appCall, "appCall");
                if (bundle != null) {
                    ShareInternalUtility shareInternalUtility = ShareInternalUtility.INSTANCE;
                    String nativeDialogCompletionGesture = ShareInternalUtility.getNativeDialogCompletionGesture(bundle);
                    if (nativeDialogCompletionGesture == null || p.m("post", nativeDialogCompletionGesture, true)) {
                        ShareInternalUtility.invokeOnSuccessCallback(this.$callback, ShareInternalUtility.getShareDialogPostId(bundle));
                    } else if (p.m("cancel", nativeDialogCompletionGesture, true)) {
                        ShareInternalUtility.invokeOnCancelCallback(this.$callback);
                    } else {
                        ShareInternalUtility.invokeOnErrorCallback(this.$callback, new FacebookException(NativeProtocol.ERROR_UNKNOWN_ERROR));
                    }
                }
            }
        };
    }

    public static final Bundle getStickerUrl(ShareStoryContent shareStoryContent, UUID uuid) {
        m.e(uuid, "appCallId");
        if (shareStoryContent == null || shareStoryContent.getStickerAsset() == null) {
            return null;
        }
        new ArrayList().add(shareStoryContent.getStickerAsset());
        NativeAppCallAttachmentStore.Attachment attachment = INSTANCE.getAttachment(uuid, shareStoryContent.getStickerAsset());
        if (attachment == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString(ShareConstants.MEDIA_URI, attachment.getAttachmentUrl());
        String uriExtension = getUriExtension(attachment.getOriginalUri());
        if (uriExtension != null) {
            Utility utility = Utility.INSTANCE;
            Utility.putNonEmptyString(bundle, ShareConstants.MEDIA_EXTENSION, uriExtension);
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
        NativeAppCallAttachmentStore.addAttachments(k.b(attachment));
        return bundle;
    }

    public static final Bundle getTextureUrlBundle(ShareCameraEffectContent shareCameraEffectContent, UUID uuid) {
        m.e(uuid, "appCallId");
        CameraEffectTextures textures = shareCameraEffectContent == null ? null : shareCameraEffectContent.getTextures();
        if (textures == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        for (String str : textures.keySet()) {
            NativeAppCallAttachmentStore.Attachment attachment = INSTANCE.getAttachment(uuid, textures.getTextureUri(str), textures.getTextureBitmap(str));
            if (attachment != null) {
                arrayList.add(attachment);
                bundle.putString(str, attachment.getAttachmentUrl());
            }
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
        NativeAppCallAttachmentStore.addAttachments(arrayList);
        return bundle;
    }

    public static final String getUriExtension(Uri uri) {
        if (uri == null) {
            return null;
        }
        String string = uri.toString();
        m.d(string, "uri.toString()");
        int iK = q.K(string, '.', 0, false, 6, null);
        if (iK == -1) {
            return null;
        }
        String strSubstring = string.substring(iK);
        m.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public static final String getVideoUrl(ShareVideoContent shareVideoContent, UUID uuid) {
        ShareVideo video;
        m.e(uuid, "appCallId");
        Uri localUrl = (shareVideoContent == null || (video = shareVideoContent.getVideo()) == null) ? null : video.getLocalUrl();
        if (localUrl == null) {
            return null;
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
        NativeAppCallAttachmentStore.Attachment attachmentCreateAttachment = NativeAppCallAttachmentStore.createAttachment(uuid, localUrl);
        NativeAppCallAttachmentStore.addAttachments(k.b(attachmentCreateAttachment));
        return attachmentCreateAttachment.getAttachmentUrl();
    }

    public static final boolean handleActivityResult(int i10, int i11, Intent intent, ResultProcessor resultProcessor) {
        FacebookException exceptionFromErrorData;
        AppCall appCallFromActivityResult = INSTANCE.getAppCallFromActivityResult(i10, i11, intent);
        if (appCallFromActivityResult == null) {
            return false;
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
        NativeAppCallAttachmentStore.cleanupAttachmentsForCall(appCallFromActivityResult.getCallId());
        if (resultProcessor == null) {
            return true;
        }
        Bundle successResultsFromIntent = null;
        if (intent != null) {
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            exceptionFromErrorData = NativeProtocol.getExceptionFromErrorData(NativeProtocol.getErrorDataFromResultIntent(intent));
        } else {
            exceptionFromErrorData = null;
        }
        if (exceptionFromErrorData == null) {
            if (intent != null) {
                NativeProtocol nativeProtocol2 = NativeProtocol.INSTANCE;
                successResultsFromIntent = NativeProtocol.getSuccessResultsFromIntent(intent);
            }
            resultProcessor.onSuccess(appCallFromActivityResult, successResultsFromIntent);
        } else if (exceptionFromErrorData instanceof FacebookOperationCanceledException) {
            resultProcessor.onCancel(appCallFromActivityResult);
        } else {
            resultProcessor.onError(appCallFromActivityResult, exceptionFromErrorData);
        }
        return true;
    }

    public static final void invokeCallbackWithError(FacebookCallback<Sharer.Result> facebookCallback, String str) {
        invokeOnErrorCallback(facebookCallback, str);
    }

    public static final void invokeCallbackWithException(FacebookCallback<Sharer.Result> facebookCallback, Exception exc) {
        m.e(exc, "exception");
        if (exc instanceof FacebookException) {
            invokeOnErrorCallback(facebookCallback, (FacebookException) exc);
        } else {
            invokeCallbackWithError(facebookCallback, m.k("Error preparing share content: ", exc.getLocalizedMessage()));
        }
    }

    public static final void invokeCallbackWithResults(FacebookCallback<Sharer.Result> facebookCallback, String str, GraphResponse graphResponse) {
        m.e(graphResponse, "graphResponse");
        FacebookRequestError error = graphResponse.getError();
        if (error == null) {
            invokeOnSuccessCallback(facebookCallback, str);
            return;
        }
        String errorMessage = error.getErrorMessage();
        Utility utility = Utility.INSTANCE;
        if (Utility.isNullOrEmpty(errorMessage)) {
            errorMessage = "Unexpected error sharing.";
        }
        invokeOnErrorCallback(facebookCallback, graphResponse, errorMessage);
    }

    public static final void invokeOnCancelCallback(FacebookCallback<Sharer.Result> facebookCallback) {
        INSTANCE.logShareResult(AnalyticsEvents.PARAMETER_SHARE_OUTCOME_CANCELLED, null);
        if (facebookCallback == null) {
            return;
        }
        facebookCallback.onCancel();
    }

    public static final void invokeOnErrorCallback(FacebookCallback<Sharer.Result> facebookCallback, GraphResponse graphResponse, String str) {
        INSTANCE.logShareResult("error", str);
        if (facebookCallback == null) {
            return;
        }
        facebookCallback.onError(new FacebookGraphResponseException(graphResponse, str));
    }

    public static final void invokeOnSuccessCallback(FacebookCallback<Sharer.Result> facebookCallback, String str) {
        INSTANCE.logShareResult(AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED, null);
        if (facebookCallback == null) {
            return;
        }
        facebookCallback.onSuccess(new Sharer.Result(str));
    }

    private final void logShareResult(String str, String str2) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(FacebookSdk.getApplicationContext());
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsEvents.PARAMETER_SHARE_OUTCOME, str);
        if (str2 != null) {
            bundle.putString("error_message", str2);
        }
        internalAppEventsLogger.logEventImplicitly(AnalyticsEvents.EVENT_SHARE_RESULT, bundle);
    }

    public static final GraphRequest newUploadStagingResourceWithImageRequest(AccessToken accessToken, Bitmap bitmap, GraphRequest.Callback callback) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable(STAGING_PARAM, bitmap);
        return new GraphRequest(accessToken, MY_STAGING_RESOURCES, bundle, HttpMethod.POST, callback, null, 32, null);
    }

    public static final void registerSharerCallback(final int i10, CallbackManager callbackManager, final FacebookCallback<Sharer.Result> facebookCallback) {
        if (!(callbackManager instanceof CallbackManagerImpl)) {
            throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
        }
        ((CallbackManagerImpl) callbackManager).registerCallback(i10, new CallbackManagerImpl.Callback() { // from class: com.facebook.share.internal.b
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public final boolean onActivityResult(int i11, Intent intent) {
                return ShareInternalUtility.m167registerSharerCallback$lambda1(i10, facebookCallback, i11, intent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerSharerCallback$lambda-1, reason: not valid java name */
    public static final boolean m167registerSharerCallback$lambda1(int i10, FacebookCallback facebookCallback, int i11, Intent intent) {
        return handleActivityResult(i10, i11, intent, getShareResultProcessor(facebookCallback));
    }

    public static final void registerStaticShareCallback(final int i10) {
        CallbackManagerImpl.Companion.registerStaticCallback(i10, new CallbackManagerImpl.Callback() { // from class: com.facebook.share.internal.a
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public final boolean onActivityResult(int i11, Intent intent) {
                return ShareInternalUtility.m168registerStaticShareCallback$lambda0(i10, i11, intent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerStaticShareCallback$lambda-0, reason: not valid java name */
    public static final boolean m168registerStaticShareCallback$lambda0(int i10, int i11, Intent intent) {
        return handleActivityResult(i10, i11, intent, getShareResultProcessor(null));
    }

    public static final JSONArray removeNamespacesFromOGJsonArray(JSONArray jSONArray, boolean z10) throws JSONException {
        m.e(jSONArray, "jsonArray");
        JSONArray jSONArray2 = new JSONArray();
        int length = jSONArray.length();
        if (length > 0) {
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                Object objRemoveNamespacesFromOGJsonObject = jSONArray.get(i10);
                if (objRemoveNamespacesFromOGJsonObject instanceof JSONArray) {
                    objRemoveNamespacesFromOGJsonObject = removeNamespacesFromOGJsonArray((JSONArray) objRemoveNamespacesFromOGJsonObject, z10);
                } else if (objRemoveNamespacesFromOGJsonObject instanceof JSONObject) {
                    objRemoveNamespacesFromOGJsonObject = removeNamespacesFromOGJsonObject((JSONObject) objRemoveNamespacesFromOGJsonObject, z10);
                }
                jSONArray2.put(objRemoveNamespacesFromOGJsonObject);
                if (i11 >= length) {
                    break;
                }
                i10 = i11;
            }
        }
        return jSONArray2;
    }

    public static final JSONObject removeNamespacesFromOGJsonObject(JSONObject jSONObject, boolean z10) {
        if (jSONObject == null) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            JSONArray jSONArrayNames = jSONObject.names();
            if (jSONArrayNames == null) {
                return null;
            }
            int i10 = 0;
            int length = jSONArrayNames.length();
            if (length > 0) {
                while (true) {
                    int i11 = i10 + 1;
                    String string = jSONArrayNames.getString(i10);
                    Object objRemoveNamespacesFromOGJsonArray = jSONObject.get(string);
                    if (objRemoveNamespacesFromOGJsonArray instanceof JSONObject) {
                        objRemoveNamespacesFromOGJsonArray = removeNamespacesFromOGJsonObject((JSONObject) objRemoveNamespacesFromOGJsonArray, true);
                    } else if (objRemoveNamespacesFromOGJsonArray instanceof JSONArray) {
                        objRemoveNamespacesFromOGJsonArray = removeNamespacesFromOGJsonArray((JSONArray) objRemoveNamespacesFromOGJsonArray, true);
                    }
                    m.d(string, SDKConstants.PARAM_KEY);
                    Pair<String, String> fieldNameAndNamespaceFromFullName = getFieldNameAndNamespaceFromFullName(string);
                    String str = (String) fieldNameAndNamespaceFromFullName.first;
                    String str2 = (String) fieldNameAndNamespaceFromFullName.second;
                    if (z10) {
                        if (str != null && m.a(str, DeviceRequestsHelper.SDK_HEADER)) {
                            jSONObject2.put(string, objRemoveNamespacesFromOGJsonArray);
                        } else if (str == null || m.a(str, "og")) {
                            jSONObject2.put(str2, objRemoveNamespacesFromOGJsonArray);
                        } else {
                            jSONObject3.put(str2, objRemoveNamespacesFromOGJsonArray);
                        }
                    } else if (str == null || !m.a(str, "fb")) {
                        jSONObject2.put(str2, objRemoveNamespacesFromOGJsonArray);
                    } else {
                        jSONObject2.put(string, objRemoveNamespacesFromOGJsonArray);
                    }
                    if (i11 >= length) {
                        break;
                    }
                    i10 = i11;
                }
            }
            if (jSONObject3.length() > 0) {
                jSONObject2.put("data", jSONObject3);
            }
            return jSONObject2;
        } catch (JSONException unused) {
            throw new FacebookException("Failed to create json object from share content");
        }
    }

    public static final void invokeOnErrorCallback(FacebookCallback<Sharer.Result> facebookCallback, String str) {
        INSTANCE.logShareResult("error", str);
        if (facebookCallback == null) {
            return;
        }
        facebookCallback.onError(new FacebookException(str));
    }

    public static final GraphRequest newUploadStagingResourceWithImageRequest(AccessToken accessToken, File file, GraphRequest.Callback callback) throws FileNotFoundException {
        GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(ParcelFileDescriptor.open(file, 268435456), "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable(STAGING_PARAM, parcelableResourceWithMimeType);
        return new GraphRequest(accessToken, MY_STAGING_RESOURCES, bundle, HttpMethod.POST, callback, null, 32, null);
    }

    public static final void invokeOnErrorCallback(FacebookCallback<Sharer.Result> facebookCallback, FacebookException facebookException) {
        m.e(facebookException, "ex");
        INSTANCE.logShareResult("error", facebookException.getMessage());
        if (facebookCallback == null) {
            return;
        }
        facebookCallback.onError(facebookException);
    }

    private final NativeAppCallAttachmentStore.Attachment getAttachment(UUID uuid, Uri uri, Bitmap bitmap) {
        if (bitmap != null) {
            NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
            return NativeAppCallAttachmentStore.createAttachment(uuid, bitmap);
        }
        if (uri == null) {
            return null;
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore2 = NativeAppCallAttachmentStore.INSTANCE;
        return NativeAppCallAttachmentStore.createAttachment(uuid, uri);
    }

    public static final GraphRequest newUploadStagingResourceWithImageRequest(AccessToken accessToken, Uri uri, GraphRequest.Callback callback) throws FileNotFoundException {
        m.e(uri, "imageUri");
        String path = uri.getPath();
        Utility utility = Utility.INSTANCE;
        if (Utility.isFileUri(uri) && path != null) {
            return newUploadStagingResourceWithImageRequest(accessToken, new File(path), callback);
        }
        if (Utility.isContentUri(uri)) {
            GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(uri, "image/png");
            Bundle bundle = new Bundle(1);
            bundle.putParcelable(STAGING_PARAM, parcelableResourceWithMimeType);
            return new GraphRequest(accessToken, MY_STAGING_RESOURCES, bundle, HttpMethod.POST, callback, null, 32, null);
        }
        throw new FacebookException("The image Uri must be either a file:// or content:// Uri");
    }
}
