package com.facebook.messenger;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import ba.q;
import com.facebook.FacebookSdk;
import com.facebook.bolts.AppLinks;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.FacebookSignatureValidator;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.messenger.MessengerThreadParams;
import h9.t;
import i9.l;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import q9.b;
import t9.m;

/* JADX INFO: compiled from: MessengerUtils.kt */
/* JADX INFO: loaded from: classes.dex */
public final class MessengerUtils {
    public static final String EXTRA_APP_ID = "com.facebook.orca.extra.APPLICATION_ID";
    public static final String EXTRA_EXTERNAL_URI = "com.facebook.orca.extra.EXTERNAL_URI";
    public static final String EXTRA_IS_COMPOSE = "com.facebook.orca.extra.IS_COMPOSE";
    public static final String EXTRA_IS_REPLY = "com.facebook.orca.extra.IS_REPLY";
    public static final String EXTRA_METADATA = "com.facebook.orca.extra.METADATA";
    public static final String EXTRA_PARTICIPANTS = "com.facebook.orca.extra.PARTICIPANTS";
    public static final String EXTRA_PROTOCOL_VERSION = "com.facebook.orca.extra.PROTOCOL_VERSION";
    public static final String EXTRA_REPLY_TOKEN_KEY = "com.facebook.orca.extra.REPLY_TOKEN";
    public static final String EXTRA_THREAD_TOKEN_KEY = "com.facebook.orca.extra.THREAD_TOKEN";
    public static final MessengerUtils INSTANCE = new MessengerUtils();
    public static final String ORCA_THREAD_CATEGORY_20150314 = "com.facebook.orca.category.PLATFORM_THREAD_20150314";
    public static final String PACKAGE_NAME = "com.facebook.orca";
    public static final int PROTOCOL_VERSION_20150314 = 20150314;
    private static final String TAG = "MessengerUtils";

    private MessengerUtils() {
    }

    private final Set<Integer> getAllAvailableProtocolVersions(Context context) throws IOException {
        ContentResolver contentResolver = context.getContentResolver();
        HashSet hashSet = new HashSet();
        Cursor cursorQuery = contentResolver.query(Uri.parse("content://com.facebook.orca.provider.MessengerPlatformProvider/versions"), new String[]{ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION}, null, null, null);
        if (cursorQuery != null) {
            try {
                int columnIndex = cursorQuery.getColumnIndex(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
                while (cursorQuery.moveToNext()) {
                    hashSet.add(Integer.valueOf(cursorQuery.getInt(columnIndex)));
                }
                t tVar = t.f30301a;
                b.a(cursorQuery, null);
            } finally {
            }
        }
        return hashSet;
    }

    private final List<String> parseParticipants(String str) {
        if (str == null || str.length() == 0) {
            return l.e();
        }
        Object[] array = q.b0(str, new String[]{","}, false, 0, 6, null).toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        String[] strArr = (String[]) array;
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str2 : strArr) {
            int length = str2.length() - 1;
            int i10 = 0;
            boolean z10 = false;
            while (i10 <= length) {
                boolean z11 = m.f(str2.charAt(!z10 ? i10 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    }
                    length--;
                } else if (z11) {
                    i10++;
                } else {
                    z10 = true;
                }
            }
            arrayList.add(str2.subSequence(i10, length + 1).toString());
        }
        return arrayList;
    }

    private final void shareToMessenger20150314(Activity activity, int i10, ShareToMessengerParams shareToMessengerParams) {
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setFlags(1);
            intent.setPackage(PACKAGE_NAME);
            intent.putExtra("android.intent.extra.STREAM", shareToMessengerParams.getUri());
            intent.setType(shareToMessengerParams.getMimeType());
            intent.putExtra(EXTRA_PROTOCOL_VERSION, PROTOCOL_VERSION_20150314);
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            intent.putExtra(EXTRA_APP_ID, FacebookSdk.getApplicationId());
            intent.putExtra(EXTRA_METADATA, shareToMessengerParams.getMetaData());
            intent.putExtra(EXTRA_EXTERNAL_URI, shareToMessengerParams.getExternalUri());
            activity.startActivityForResult(intent, i10);
        } catch (ActivityNotFoundException unused) {
            activity.startActivity(activity.getPackageManager().getLaunchIntentForPackage(PACKAGE_NAME));
        }
    }

    private final void startViewUri(Context context, String str) {
        context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    public final void finishShareToMessenger(Activity activity, ShareToMessengerParams shareToMessengerParams) {
        m.e(activity, "activity");
        m.e(shareToMessengerParams, "shareToMessengerParams");
        Intent intent = activity.getIntent();
        Set<String> categories = intent.getCategories();
        if (categories == null) {
            activity.setResult(0, null);
            activity.finish();
            return;
        }
        if (!categories.contains(ORCA_THREAD_CATEGORY_20150314)) {
            activity.setResult(0, null);
            activity.finish();
            return;
        }
        AppLinks appLinks = AppLinks.INSTANCE;
        m.d(intent, "originalIntent");
        Bundle appLinkExtras = AppLinks.getAppLinkExtras(intent);
        Intent intent2 = new Intent();
        if (appLinkExtras == null || !categories.contains(ORCA_THREAD_CATEGORY_20150314)) {
            throw new RuntimeException();
        }
        intent2.putExtra(EXTRA_PROTOCOL_VERSION, PROTOCOL_VERSION_20150314);
        intent2.putExtra(EXTRA_THREAD_TOKEN_KEY, appLinkExtras.getString(EXTRA_THREAD_TOKEN_KEY));
        intent2.setDataAndType(shareToMessengerParams.getUri(), shareToMessengerParams.getMimeType());
        intent2.setFlags(1);
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        intent2.putExtra(EXTRA_APP_ID, FacebookSdk.getApplicationId());
        intent2.putExtra(EXTRA_METADATA, shareToMessengerParams.getMetaData());
        intent2.putExtra(EXTRA_EXTERNAL_URI, shareToMessengerParams.getExternalUri());
        activity.setResult(-1, intent2);
        activity.finish();
    }

    public final MessengerThreadParams getMessengerThreadParamsForIntent(Intent intent) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            m.e(intent, SDKConstants.PARAM_INTENT);
            Set<String> categories = intent.getCategories();
            if (categories != null && categories.contains(ORCA_THREAD_CATEGORY_20150314)) {
                AppLinks appLinks = AppLinks.INSTANCE;
                Bundle appLinkExtras = AppLinks.getAppLinkExtras(intent);
                String string = appLinkExtras == null ? null : appLinkExtras.getString(EXTRA_THREAD_TOKEN_KEY);
                String string2 = appLinkExtras == null ? null : appLinkExtras.getString(EXTRA_METADATA);
                String string3 = appLinkExtras == null ? null : appLinkExtras.getString(EXTRA_PARTICIPANTS);
                Boolean boolValueOf = appLinkExtras == null ? null : Boolean.valueOf(appLinkExtras.getBoolean(EXTRA_IS_REPLY));
                Boolean boolValueOf2 = appLinkExtras == null ? null : Boolean.valueOf(appLinkExtras.getBoolean(EXTRA_IS_COMPOSE));
                Boolean bool = Boolean.TRUE;
                MessengerThreadParams.Origin origin = m.a(boolValueOf, bool) ? MessengerThreadParams.Origin.REPLY_FLOW : m.a(boolValueOf2, bool) ? MessengerThreadParams.Origin.COMPOSE_FLOW : MessengerThreadParams.Origin.UNKNOWN;
                if (string != null && string2 != null) {
                    return new MessengerThreadParams(origin, string, string2, parseParticipants(string3));
                }
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public final boolean hasMessengerInstalled(Context context) {
        m.e(context, "context");
        FacebookSignatureValidator facebookSignatureValidator = FacebookSignatureValidator.INSTANCE;
        return FacebookSignatureValidator.validateSignature(context, PACKAGE_NAME);
    }

    public final void openMessengerInPlayStore(Context context) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            m.e(context, "context");
            try {
                startViewUri(context, "market://details?id=com.facebook.orca");
            } catch (ActivityNotFoundException unused) {
                startViewUri(context, "http://play.google.com/store/apps/details?id=com.facebook.orca");
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void shareToMessenger(Activity activity, int i10, ShareToMessengerParams shareToMessengerParams) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            m.e(activity, "activity");
            m.e(shareToMessengerParams, "shareToMessengerParams");
            if (!hasMessengerInstalled(activity)) {
                openMessengerInPlayStore(activity);
            } else if (getAllAvailableProtocolVersions(activity).contains(Integer.valueOf(PROTOCOL_VERSION_20150314))) {
                shareToMessenger20150314(activity, i10, shareToMessengerParams);
            } else {
                openMessengerInPlayStore(activity);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
