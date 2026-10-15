package com.facebook.appevents;

import android.os.Build;
import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.eventdeactivation.EventDeactivationManager;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.appevents.internal.Constants;
import com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import h9.t;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import t9.b0;

/* JADX INFO: compiled from: AppEvent.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AppEvent implements Serializable {
    private static final int MAX_IDENTIFIER_LENGTH = 40;
    private static final long serialVersionUID = 1;
    private final String checksum;
    private final boolean inBackground;
    private final boolean isImplicit;
    private final JSONObject jsonObject;
    private final String name;
    public static final Companion Companion = new Companion(null);
    private static final HashSet<String> validatedIdentifiers = new HashSet<>();

    /* JADX INFO: compiled from: AppEvent.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String md5Checksum(String str) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                Charset charsetForName = Charset.forName("UTF-8");
                t9.m.d(charsetForName, "Charset.forName(charsetName)");
                if (str == null) {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
                byte[] bytes = str.getBytes(charsetForName);
                t9.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
                messageDigest.update(bytes, 0, bytes.length);
                byte[] bArrDigest = messageDigest.digest();
                t9.m.d(bArrDigest, "digest.digest()");
                AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
                return AppEventUtility.bytesToHex(bArrDigest);
            } catch (UnsupportedEncodingException e10) {
                Utility utility = Utility.INSTANCE;
                Utility.logd("Failed to generate checksum: ", e10);
                return AppEventsConstants.EVENT_PARAM_VALUE_YES;
            } catch (NoSuchAlgorithmException e11) {
                Utility utility2 = Utility.INSTANCE;
                Utility.logd("Failed to generate checksum: ", e11);
                return AppEventsConstants.EVENT_PARAM_VALUE_NO;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void validateIdentifier(String str) {
            boolean zContains;
            if (str != null) {
                if (!(str.length() == 0) && str.length() <= 40) {
                    synchronized (AppEvent.validatedIdentifiers) {
                        zContains = AppEvent.validatedIdentifiers.contains(str);
                        t tVar = t.f30301a;
                    }
                    if (zContains) {
                        return;
                    }
                    if (new ba.f("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$").a(str)) {
                        synchronized (AppEvent.validatedIdentifiers) {
                            AppEvent.validatedIdentifiers.add(str);
                        }
                        return;
                    } else {
                        b0 b0Var = b0.f35528a;
                        String str2 = String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", Arrays.copyOf(new Object[]{str}, 1));
                        t9.m.d(str2, "java.lang.String.format(format, *args)");
                        throw new FacebookException(str2);
                    }
                }
            }
            if (str == null) {
                str = "<None Provided>";
            }
            b0 b0Var2 = b0.f35528a;
            String str3 = String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", Arrays.copyOf(new Object[]{str, 40}, 2));
            t9.m.d(str3, "java.lang.String.format(locale, format, *args)");
            throw new FacebookException(str3);
        }
    }

    /* JADX INFO: compiled from: AppEvent.kt */
    public static final class SerializationProxyV2 implements Serializable {
        public static final Companion Companion = new Companion(null);
        private static final long serialVersionUID = 20160803001L;
        private final String checksum;
        private final boolean inBackground;
        private final boolean isImplicit;
        private final String jsonString;

        /* JADX INFO: compiled from: AppEvent.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(t9.g gVar) {
                this();
            }
        }

        public SerializationProxyV2(String str, boolean z10, boolean z11, String str2) {
            t9.m.e(str, "jsonString");
            this.jsonString = str;
            this.isImplicit = z10;
            this.inBackground = z11;
            this.checksum = str2;
        }

        private final Object readResolve() throws ObjectStreamException, JSONException {
            return new AppEvent(this.jsonString, this.isImplicit, this.inBackground, this.checksum, null);
        }
    }

    public AppEvent(String str, String str2, Double d10, Bundle bundle, boolean z10, boolean z11, UUID uuid) throws JSONException, FacebookException {
        t9.m.e(str, "contextName");
        t9.m.e(str2, "eventName");
        this.isImplicit = z10;
        this.inBackground = z11;
        this.name = str2;
        this.jsonObject = getJSONObjectForAppEvent(str, str2, d10, bundle, uuid);
        this.checksum = calculateChecksum();
    }

    public /* synthetic */ AppEvent(String str, boolean z10, boolean z11, String str2, t9.g gVar) {
        this(str, z10, z11, str2);
    }

    private final String calculateChecksum() {
        if (Build.VERSION.SDK_INT > 19) {
            Companion companion = Companion;
            String string = this.jsonObject.toString();
            t9.m.d(string, "jsonObject.toString()");
            return companion.md5Checksum(string);
        }
        ArrayList<String> arrayList = new ArrayList();
        Iterator<String> itKeys = this.jsonObject.keys();
        while (itKeys.hasNext()) {
            arrayList.add(itKeys.next());
        }
        i9.p.m(arrayList);
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            sb.append(str);
            sb.append(" = ");
            sb.append(this.jsonObject.optString(str));
            sb.append('\n');
        }
        Companion companion2 = Companion;
        String string2 = sb.toString();
        t9.m.d(string2, "sb.toString()");
        return companion2.md5Checksum(string2);
    }

    private final JSONObject getJSONObjectForAppEvent(String str, String str2, Double d10, Bundle bundle, UUID uuid) throws JSONException {
        Companion companion = Companion;
        companion.validateIdentifier(str2);
        JSONObject jSONObject = new JSONObject();
        RestrictiveDataManager restrictiveDataManager = RestrictiveDataManager.INSTANCE;
        String strProcessEvent = RestrictiveDataManager.processEvent(str2);
        jSONObject.put(Constants.EVENT_NAME_EVENT_KEY, strProcessEvent);
        jSONObject.put(Constants.EVENT_NAME_MD5_EVENT_KEY, companion.md5Checksum(strProcessEvent));
        jSONObject.put(Constants.LOG_TIME_APP_EVENT_KEY, System.currentTimeMillis() / ((long) 1000));
        jSONObject.put("_ui", str);
        if (uuid != null) {
            jSONObject.put("_session_id", uuid);
        }
        if (bundle != null) {
            Map<String, String> mapValidateParameters = validateParameters(bundle);
            for (String str3 : mapValidateParameters.keySet()) {
                jSONObject.put(str3, mapValidateParameters.get(str3));
            }
        }
        if (d10 != null) {
            jSONObject.put(AppEventsConstants.EVENT_PARAM_VALUE_TO_SUM, d10.doubleValue());
        }
        if (this.inBackground) {
            jSONObject.put("_inBackground", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
        if (this.isImplicit) {
            jSONObject.put("_implicitlyLogged", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        } else {
            Logger.Companion companion2 = Logger.Companion;
            LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
            String string = jSONObject.toString();
            t9.m.d(string, "eventObject.toString()");
            companion2.log(loggingBehavior, "AppEvents", "Created app event '%s'", string);
        }
        return jSONObject;
    }

    private final Map<String, String> validateParameters(Bundle bundle) {
        HashMap map = new HashMap();
        for (String str : bundle.keySet()) {
            Companion companion = Companion;
            t9.m.d(str, SDKConstants.PARAM_KEY);
            companion.validateIdentifier(str);
            Object obj = bundle.get(str);
            if (!(obj instanceof String) && !(obj instanceof Number)) {
                b0 b0Var = b0.f35528a;
                String str2 = String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", Arrays.copyOf(new Object[]{obj, str}, 2));
                t9.m.d(str2, "java.lang.String.format(format, *args)");
                throw new FacebookException(str2);
            }
            map.put(str, obj.toString());
        }
        IntegrityManager integrityManager = IntegrityManager.INSTANCE;
        IntegrityManager.processParameters(map);
        RestrictiveDataManager restrictiveDataManager = RestrictiveDataManager.INSTANCE;
        RestrictiveDataManager.processParameters(map, this.name);
        EventDeactivationManager eventDeactivationManager = EventDeactivationManager.INSTANCE;
        EventDeactivationManager.processDeprecatedParameters(map, this.name);
        return map;
    }

    private final Object writeReplace() throws ObjectStreamException {
        String string = this.jsonObject.toString();
        t9.m.d(string, "jsonObject.toString()");
        return new SerializationProxyV2(string, this.isImplicit, this.inBackground, this.checksum);
    }

    public final boolean getIsImplicit() {
        return this.isImplicit;
    }

    public final JSONObject getJSONObject() {
        return this.jsonObject;
    }

    public final JSONObject getJsonObject() {
        return this.jsonObject;
    }

    public final String getName() {
        return this.name;
    }

    public final boolean isChecksumValid() {
        if (this.checksum == null) {
            return true;
        }
        return t9.m.a(calculateChecksum(), this.checksum);
    }

    public final boolean isImplicit() {
        return this.isImplicit;
    }

    public String toString() {
        b0 b0Var = b0.f35528a;
        String str = String.format("\"%s\", implicit: %b, json: %s", Arrays.copyOf(new Object[]{this.jsonObject.optString(Constants.EVENT_NAME_EVENT_KEY), Boolean.valueOf(this.isImplicit), this.jsonObject.toString()}, 3));
        t9.m.d(str, "java.lang.String.format(format, *args)");
        return str;
    }

    private AppEvent(String str, boolean z10, boolean z11, String str2) {
        JSONObject jSONObject = new JSONObject(str);
        this.jsonObject = jSONObject;
        this.isImplicit = z10;
        String strOptString = jSONObject.optString(Constants.EVENT_NAME_EVENT_KEY);
        t9.m.d(strOptString, "jsonObject.optString(Constants.EVENT_NAME_EVENT_KEY)");
        this.name = strOptString;
        this.checksum = str2;
        this.inBackground = z11;
    }
}
