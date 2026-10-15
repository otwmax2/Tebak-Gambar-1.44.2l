package com.facebook.internal;

import com.facebook.FacebookRequestError;
import i9.d0;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: FacebookRequestErrorClassification.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FacebookRequestErrorClassification {
    public static final Companion Companion = new Companion(null);
    public static final int EC_APP_NOT_INSTALLED = 412;
    public static final int EC_APP_TOO_MANY_CALLS = 4;
    public static final int EC_INVALID_SESSION = 102;
    public static final int EC_INVALID_TOKEN = 190;
    public static final int EC_RATE = 9;
    public static final int EC_SERVICE_UNAVAILABLE = 2;
    public static final int EC_TOO_MANY_USER_ACTION_CALLS = 341;
    public static final int EC_USER_TOO_MANY_CALLS = 17;
    public static final int ESC_APP_INACTIVE = 493;
    public static final int ESC_APP_NOT_INSTALLED = 458;
    public static final String KEY_LOGIN_RECOVERABLE = "login_recoverable";
    public static final String KEY_NAME = "name";
    public static final String KEY_OTHER = "other";
    public static final String KEY_RECOVERY_MESSAGE = "recovery_message";
    public static final String KEY_TRANSIENT = "transient";
    private static FacebookRequestErrorClassification defaultInstance;
    private final Map<Integer, Set<Integer>> loginRecoverableErrors;
    private final String loginRecoverableRecoveryMessage;
    private final Map<Integer, Set<Integer>> otherErrors;
    private final String otherRecoveryMessage;
    private final Map<Integer, Set<Integer>> transientErrors;
    private final String transientRecoveryMessage;

    /* JADX INFO: compiled from: FacebookRequestErrorClassification.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        public static /* synthetic */ void getDefaultErrorClassification$annotations() {
        }

        private final FacebookRequestErrorClassification getDefaultErrorClassificationImpl() {
            return new FacebookRequestErrorClassification(null, d0.e(h9.q.a(2, null), h9.q.a(4, null), h9.q.a(9, null), h9.q.a(17, null), h9.q.a(Integer.valueOf(FacebookRequestErrorClassification.EC_TOO_MANY_USER_ACTION_CALLS), null)), d0.e(h9.q.a(102, null), h9.q.a(Integer.valueOf(FacebookRequestErrorClassification.EC_INVALID_TOKEN), null), h9.q.a(Integer.valueOf(FacebookRequestErrorClassification.EC_APP_NOT_INSTALLED), null)), null, null, null);
        }

        private final Map<Integer, Set<Integer>> parseJSONDefinition(JSONObject jSONObject) {
            int iOptInt;
            HashSet hashSet;
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("items");
            if (jSONArrayOptJSONArray.length() == 0) {
                return null;
            }
            HashMap map = new HashMap();
            int length = jSONArrayOptJSONArray.length();
            if (length > 0) {
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                    if (jSONObjectOptJSONObject != null && (iOptInt = jSONObjectOptJSONObject.optInt("code")) != 0) {
                        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("subcodes");
                        if (jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray2.length() <= 0) {
                            hashSet = null;
                        } else {
                            hashSet = new HashSet();
                            int length2 = jSONArrayOptJSONArray2.length();
                            if (length2 > 0) {
                                int i12 = 0;
                                while (true) {
                                    int i13 = i12 + 1;
                                    int iOptInt2 = jSONArrayOptJSONArray2.optInt(i12);
                                    if (iOptInt2 != 0) {
                                        hashSet.add(Integer.valueOf(iOptInt2));
                                    }
                                    if (i13 >= length2) {
                                        break;
                                    }
                                    i12 = i13;
                                }
                            }
                        }
                        map.put(Integer.valueOf(iOptInt), hashSet);
                    }
                    if (i11 >= length) {
                        break;
                    }
                    i10 = i11;
                }
            }
            return map;
        }

        public final FacebookRequestErrorClassification createFromJSON(JSONArray jSONArray) {
            Map<Integer, Set<Integer>> map;
            Map<Integer, Set<Integer>> map2;
            Map<Integer, Set<Integer>> map3;
            String str;
            String str2;
            String str3;
            String strOptString;
            if (jSONArray == null) {
                return null;
            }
            int i10 = 0;
            int length = jSONArray.length();
            if (length > 0) {
                Map<Integer, Set<Integer>> jSONDefinition = null;
                Map<Integer, Set<Integer>> jSONDefinition2 = null;
                Map<Integer, Set<Integer>> jSONDefinition3 = null;
                String strOptString2 = null;
                String strOptString3 = null;
                String strOptString4 = null;
                while (true) {
                    int i11 = i10 + 1;
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                    if (jSONObjectOptJSONObject != null && (strOptString = jSONObjectOptJSONObject.optString("name")) != null) {
                        if (ba.p.m(strOptString, "other", true)) {
                            strOptString2 = jSONObjectOptJSONObject.optString(FacebookRequestErrorClassification.KEY_RECOVERY_MESSAGE, null);
                            jSONDefinition = parseJSONDefinition(jSONObjectOptJSONObject);
                        } else if (ba.p.m(strOptString, FacebookRequestErrorClassification.KEY_TRANSIENT, true)) {
                            strOptString3 = jSONObjectOptJSONObject.optString(FacebookRequestErrorClassification.KEY_RECOVERY_MESSAGE, null);
                            jSONDefinition2 = parseJSONDefinition(jSONObjectOptJSONObject);
                        } else if (ba.p.m(strOptString, FacebookRequestErrorClassification.KEY_LOGIN_RECOVERABLE, true)) {
                            strOptString4 = jSONObjectOptJSONObject.optString(FacebookRequestErrorClassification.KEY_RECOVERY_MESSAGE, null);
                            jSONDefinition3 = parseJSONDefinition(jSONObjectOptJSONObject);
                        }
                    }
                    if (i11 >= length) {
                        break;
                    }
                    i10 = i11;
                }
                map = jSONDefinition;
                map2 = jSONDefinition2;
                map3 = jSONDefinition3;
                str = strOptString2;
                str2 = strOptString3;
                str3 = strOptString4;
            } else {
                map = null;
                map2 = null;
                map3 = null;
                str = null;
                str2 = null;
                str3 = null;
            }
            return new FacebookRequestErrorClassification(map, map2, map3, str, str2, str3);
        }

        public final synchronized FacebookRequestErrorClassification getDefaultErrorClassification() {
            FacebookRequestErrorClassification facebookRequestErrorClassification;
            if (FacebookRequestErrorClassification.defaultInstance == null) {
                FacebookRequestErrorClassification.defaultInstance = getDefaultErrorClassificationImpl();
            }
            facebookRequestErrorClassification = FacebookRequestErrorClassification.defaultInstance;
            if (facebookRequestErrorClassification == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.facebook.internal.FacebookRequestErrorClassification");
            }
            return facebookRequestErrorClassification;
        }
    }

    /* JADX INFO: compiled from: FacebookRequestErrorClassification.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FacebookRequestError.Category.valuesCustom().length];
            iArr[FacebookRequestError.Category.OTHER.ordinal()] = 1;
            iArr[FacebookRequestError.Category.LOGIN_RECOVERABLE.ordinal()] = 2;
            iArr[FacebookRequestError.Category.TRANSIENT.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FacebookRequestErrorClassification(Map<Integer, ? extends Set<Integer>> map, Map<Integer, ? extends Set<Integer>> map2, Map<Integer, ? extends Set<Integer>> map3, String str, String str2, String str3) {
        this.otherErrors = map;
        this.transientErrors = map2;
        this.loginRecoverableErrors = map3;
        this.otherRecoveryMessage = str;
        this.transientRecoveryMessage = str2;
        this.loginRecoverableRecoveryMessage = str3;
    }

    public static final FacebookRequestErrorClassification createFromJSON(JSONArray jSONArray) {
        return Companion.createFromJSON(jSONArray);
    }

    public static final synchronized FacebookRequestErrorClassification getDefaultErrorClassification() {
        return Companion.getDefaultErrorClassification();
    }

    public final FacebookRequestError.Category classify(int i10, int i11, boolean z10) {
        Set<Integer> set;
        Set<Integer> set2;
        Set<Integer> set3;
        if (z10) {
            return FacebookRequestError.Category.TRANSIENT;
        }
        Map<Integer, Set<Integer>> map = this.otherErrors;
        if (map != null && map.containsKey(Integer.valueOf(i10)) && ((set3 = this.otherErrors.get(Integer.valueOf(i10))) == null || set3.contains(Integer.valueOf(i11)))) {
            return FacebookRequestError.Category.OTHER;
        }
        Map<Integer, Set<Integer>> map2 = this.loginRecoverableErrors;
        if (map2 != null && map2.containsKey(Integer.valueOf(i10)) && ((set2 = this.loginRecoverableErrors.get(Integer.valueOf(i10))) == null || set2.contains(Integer.valueOf(i11)))) {
            return FacebookRequestError.Category.LOGIN_RECOVERABLE;
        }
        Map<Integer, Set<Integer>> map3 = this.transientErrors;
        return (map3 != null && map3.containsKey(Integer.valueOf(i10)) && ((set = this.transientErrors.get(Integer.valueOf(i10))) == null || set.contains(Integer.valueOf(i11)))) ? FacebookRequestError.Category.TRANSIENT : FacebookRequestError.Category.OTHER;
    }

    public final Map<Integer, Set<Integer>> getLoginRecoverableErrors() {
        return this.loginRecoverableErrors;
    }

    public final Map<Integer, Set<Integer>> getOtherErrors() {
        return this.otherErrors;
    }

    public final String getRecoveryMessage(FacebookRequestError.Category category) {
        int i10 = category == null ? -1 : WhenMappings.$EnumSwitchMapping$0[category.ordinal()];
        if (i10 == 1) {
            return this.otherRecoveryMessage;
        }
        if (i10 == 2) {
            return this.loginRecoverableRecoveryMessage;
        }
        if (i10 != 3) {
            return null;
        }
        return this.transientRecoveryMessage;
    }

    public final Map<Integer, Set<Integer>> getTransientErrors() {
        return this.transientErrors;
    }
}
