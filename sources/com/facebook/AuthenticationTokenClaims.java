package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.share.internal.ShareConstants;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.b0;

/* JADX INFO: compiled from: AuthenticationTokenClaims.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AuthenticationTokenClaims implements Parcelable {
    public static final String JSON_KEY_AUD = "aud";
    public static final String JSON_KEY_EMAIL = "email";
    public static final String JSON_KEY_EXP = "exp";
    public static final String JSON_KEY_FAMILY_NAME = "family_name";
    public static final String JSON_KEY_GIVEN_NAME = "given_name";
    public static final String JSON_KEY_IAT = "iat";
    public static final String JSON_KEY_ISS = "iss";
    public static final String JSON_KEY_JIT = "jti";
    public static final String JSON_KEY_MIDDLE_NAME = "middle_name";
    public static final String JSON_KEY_NAME = "name";
    public static final String JSON_KEY_NONCE = "nonce";
    public static final String JSON_KEY_PICTURE = "picture";
    public static final String JSON_KEY_SUB = "sub";
    public static final String JSON_KEY_USER_AGE_RANGE = "user_age_range";
    public static final String JSON_KEY_USER_BIRTHDAY = "user_birthday";
    public static final String JSON_KEY_USER_FRIENDS = "user_friends";
    public static final String JSON_KEY_USER_GENDER = "user_gender";
    public static final String JSON_KEY_USER_HOMETOWN = "user_hometown";
    public static final String JSON_KEY_USER_LINK = "user_link";
    public static final String JSON_KEY_USER_LOCATION = "user_location";
    public static final long MAX_TIME_SINCE_TOKEN_ISSUED = 600000;
    private final String aud;
    private final String email;
    private final long exp;
    private final String familyName;
    private final String givenName;
    private final long iat;
    private final String iss;
    private final String jti;
    private final String middleName;
    private final String name;
    private final String nonce;
    private final String picture;
    private final String sub;
    private final Map<String, Integer> userAgeRange;
    private final String userBirthday;
    private final Set<String> userFriends;
    private final String userGender;
    private final Map<String, String> userHometown;
    private final String userLink;
    private final Map<String, String> userLocation;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<AuthenticationTokenClaims> CREATOR = new Parcelable.Creator<AuthenticationTokenClaims>() { // from class: com.facebook.AuthenticationTokenClaims$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AuthenticationTokenClaims createFromParcel(Parcel parcel) {
            t9.m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
            return new AuthenticationTokenClaims(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AuthenticationTokenClaims[] newArray(int i10) {
            return new AuthenticationTokenClaims[i10];
        }
    };

    /* JADX INFO: compiled from: AuthenticationTokenClaims.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        public final AuthenticationTokenClaims createFromJSONObject$facebook_core_release(JSONObject jSONObject) throws JSONException {
            List<String> listJsonArrayToStringList;
            Map<String, Object> mapConvertJSONObjectToHashMap;
            Map<String, String> mapConvertJSONObjectToStringMap;
            t9.m.e(jSONObject, "jsonObject");
            String string = jSONObject.getString(AuthenticationTokenClaims.JSON_KEY_JIT);
            String string2 = jSONObject.getString(AuthenticationTokenClaims.JSON_KEY_ISS);
            String string3 = jSONObject.getString(AuthenticationTokenClaims.JSON_KEY_AUD);
            String string4 = jSONObject.getString("nonce");
            long j10 = jSONObject.getLong(AuthenticationTokenClaims.JSON_KEY_EXP);
            long j11 = jSONObject.getLong(AuthenticationTokenClaims.JSON_KEY_IAT);
            String string5 = jSONObject.getString(AuthenticationTokenClaims.JSON_KEY_SUB);
            String nullableString$facebook_core_release = getNullableString$facebook_core_release(jSONObject, "name");
            String nullableString$facebook_core_release2 = getNullableString$facebook_core_release(jSONObject, AuthenticationTokenClaims.JSON_KEY_GIVEN_NAME);
            String nullableString$facebook_core_release3 = getNullableString$facebook_core_release(jSONObject, AuthenticationTokenClaims.JSON_KEY_MIDDLE_NAME);
            String nullableString$facebook_core_release4 = getNullableString$facebook_core_release(jSONObject, AuthenticationTokenClaims.JSON_KEY_FAMILY_NAME);
            String nullableString$facebook_core_release5 = getNullableString$facebook_core_release(jSONObject, "email");
            String nullableString$facebook_core_release6 = getNullableString$facebook_core_release(jSONObject, "picture");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(AuthenticationTokenClaims.JSON_KEY_USER_FRIENDS);
            String nullableString$facebook_core_release7 = getNullableString$facebook_core_release(jSONObject, AuthenticationTokenClaims.JSON_KEY_USER_BIRTHDAY);
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AuthenticationTokenClaims.JSON_KEY_USER_AGE_RANGE);
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(AuthenticationTokenClaims.JSON_KEY_USER_HOMETOWN);
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject(AuthenticationTokenClaims.JSON_KEY_USER_LOCATION);
            String nullableString$facebook_core_release8 = getNullableString$facebook_core_release(jSONObject, AuthenticationTokenClaims.JSON_KEY_USER_GENDER);
            String nullableString$facebook_core_release9 = getNullableString$facebook_core_release(jSONObject, AuthenticationTokenClaims.JSON_KEY_USER_LINK);
            t9.m.d(string, AuthenticationTokenClaims.JSON_KEY_JIT);
            t9.m.d(string2, AuthenticationTokenClaims.JSON_KEY_ISS);
            t9.m.d(string3, AuthenticationTokenClaims.JSON_KEY_AUD);
            t9.m.d(string4, "nonce");
            t9.m.d(string5, AuthenticationTokenClaims.JSON_KEY_SUB);
            Map<String, String> mapConvertJSONObjectToStringMap2 = null;
            if (jSONArrayOptJSONArray == null) {
                listJsonArrayToStringList = null;
            } else {
                Utility utility = Utility.INSTANCE;
                listJsonArrayToStringList = Utility.jsonArrayToStringList(jSONArrayOptJSONArray);
            }
            if (jSONObjectOptJSONObject == null) {
                mapConvertJSONObjectToHashMap = null;
            } else {
                Utility utility2 = Utility.INSTANCE;
                mapConvertJSONObjectToHashMap = Utility.convertJSONObjectToHashMap(jSONObjectOptJSONObject);
            }
            if (jSONObjectOptJSONObject2 == null) {
                mapConvertJSONObjectToStringMap = null;
            } else {
                Utility utility3 = Utility.INSTANCE;
                mapConvertJSONObjectToStringMap = Utility.convertJSONObjectToStringMap(jSONObjectOptJSONObject2);
            }
            if (jSONObjectOptJSONObject3 != null) {
                Utility utility4 = Utility.INSTANCE;
                mapConvertJSONObjectToStringMap2 = Utility.convertJSONObjectToStringMap(jSONObjectOptJSONObject3);
            }
            return new AuthenticationTokenClaims(string, string2, string3, string4, j10, j11, string5, nullableString$facebook_core_release, nullableString$facebook_core_release2, nullableString$facebook_core_release3, nullableString$facebook_core_release4, nullableString$facebook_core_release5, nullableString$facebook_core_release6, listJsonArrayToStringList, nullableString$facebook_core_release7, mapConvertJSONObjectToHashMap, mapConvertJSONObjectToStringMap, mapConvertJSONObjectToStringMap2, nullableString$facebook_core_release8, nullableString$facebook_core_release9);
        }

        public final String getNullableString$facebook_core_release(JSONObject jSONObject, String str) {
            t9.m.e(jSONObject, "<this>");
            t9.m.e(str, "name");
            if (jSONObject.has(str)) {
                return jSONObject.getString(str);
            }
            return null;
        }
    }

    public AuthenticationTokenClaims(String str, String str2) throws JSONException {
        Set<String> setUnmodifiableSet;
        Map<String, Integer> mapUnmodifiableMap;
        Map<String, String> mapUnmodifiableMap2;
        t9.m.e(str, "encodedClaims");
        t9.m.e(str2, "expectedNonce");
        Validate validate = Validate.INSTANCE;
        Validate.notEmpty(str, "encodedClaims");
        byte[] bArrDecode = Base64.decode(str, 8);
        t9.m.d(bArrDecode, "decodedBytes");
        JSONObject jSONObject = new JSONObject(new String(bArrDecode, ba.d.f4713b));
        if (!isValidClaims(jSONObject, str2)) {
            throw new IllegalArgumentException("Invalid claims".toString());
        }
        String string = jSONObject.getString(JSON_KEY_JIT);
        t9.m.d(string, "jsonObj.getString(JSON_KEY_JIT)");
        this.jti = string;
        String string2 = jSONObject.getString(JSON_KEY_ISS);
        t9.m.d(string2, "jsonObj.getString(JSON_KEY_ISS)");
        this.iss = string2;
        String string3 = jSONObject.getString(JSON_KEY_AUD);
        t9.m.d(string3, "jsonObj.getString(JSON_KEY_AUD)");
        this.aud = string3;
        String string4 = jSONObject.getString("nonce");
        t9.m.d(string4, "jsonObj.getString(JSON_KEY_NONCE)");
        this.nonce = string4;
        this.exp = jSONObject.getLong(JSON_KEY_EXP);
        this.iat = jSONObject.getLong(JSON_KEY_IAT);
        String string5 = jSONObject.getString(JSON_KEY_SUB);
        t9.m.d(string5, "jsonObj.getString(JSON_KEY_SUB)");
        this.sub = string5;
        Companion companion = Companion;
        this.name = companion.getNullableString$facebook_core_release(jSONObject, "name");
        this.givenName = companion.getNullableString$facebook_core_release(jSONObject, JSON_KEY_GIVEN_NAME);
        this.middleName = companion.getNullableString$facebook_core_release(jSONObject, JSON_KEY_MIDDLE_NAME);
        this.familyName = companion.getNullableString$facebook_core_release(jSONObject, JSON_KEY_FAMILY_NAME);
        this.email = companion.getNullableString$facebook_core_release(jSONObject, "email");
        this.picture = companion.getNullableString$facebook_core_release(jSONObject, "picture");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(JSON_KEY_USER_FRIENDS);
        Map<String, String> mapUnmodifiableMap3 = null;
        if (jSONArrayOptJSONArray == null) {
            setUnmodifiableSet = null;
        } else {
            Utility utility = Utility.INSTANCE;
            setUnmodifiableSet = Collections.unmodifiableSet(Utility.jsonArrayToSet(jSONArrayOptJSONArray));
        }
        this.userFriends = setUnmodifiableSet;
        this.userBirthday = companion.getNullableString$facebook_core_release(jSONObject, JSON_KEY_USER_BIRTHDAY);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(JSON_KEY_USER_AGE_RANGE);
        if (jSONObjectOptJSONObject == null) {
            mapUnmodifiableMap = null;
        } else {
            Utility utility2 = Utility.INSTANCE;
            mapUnmodifiableMap = Collections.unmodifiableMap(Utility.convertJSONObjectToHashMap(jSONObjectOptJSONObject));
        }
        this.userAgeRange = mapUnmodifiableMap;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(JSON_KEY_USER_HOMETOWN);
        if (jSONObjectOptJSONObject2 == null) {
            mapUnmodifiableMap2 = null;
        } else {
            Utility utility3 = Utility.INSTANCE;
            mapUnmodifiableMap2 = Collections.unmodifiableMap(Utility.convertJSONObjectToStringMap(jSONObjectOptJSONObject2));
        }
        this.userHometown = mapUnmodifiableMap2;
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject(JSON_KEY_USER_LOCATION);
        if (jSONObjectOptJSONObject3 != null) {
            Utility utility4 = Utility.INSTANCE;
            mapUnmodifiableMap3 = Collections.unmodifiableMap(Utility.convertJSONObjectToStringMap(jSONObjectOptJSONObject3));
        }
        this.userLocation = mapUnmodifiableMap3;
        this.userGender = companion.getNullableString$facebook_core_release(jSONObject, JSON_KEY_USER_GENDER);
        this.userLink = companion.getNullableString$facebook_core_release(jSONObject, JSON_KEY_USER_LINK);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5) {
        this(str, str2, str3, str4, j10, j11, str5, null, null, null, null, null, null, null, null, null, null, null, null, null, 1048448, null);
        t9.m.e(str, JSON_KEY_JIT);
        t9.m.e(str2, JSON_KEY_ISS);
        t9.m.e(str3, JSON_KEY_AUD);
        t9.m.e(str4, "nonce");
        t9.m.e(str5, JSON_KEY_SUB);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6) {
        this(str, str2, str3, str4, j10, j11, str5, str6, null, null, null, null, null, null, null, null, null, null, null, null, 1048320, null);
        t9.m.e(str, JSON_KEY_JIT);
        t9.m.e(str2, JSON_KEY_ISS);
        t9.m.e(str3, JSON_KEY_AUD);
        t9.m.e(str4, "nonce");
        t9.m.e(str5, JSON_KEY_SUB);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6, String str7) {
        this(str, str2, str3, str4, j10, j11, str5, str6, str7, null, null, null, null, null, null, null, null, null, null, null, 1048064, null);
        t9.m.e(str, JSON_KEY_JIT);
        t9.m.e(str2, JSON_KEY_ISS);
        t9.m.e(str3, JSON_KEY_AUD);
        t9.m.e(str4, "nonce");
        t9.m.e(str5, JSON_KEY_SUB);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6, String str7, String str8) {
        this(str, str2, str3, str4, j10, j11, str5, str6, str7, str8, null, null, null, null, null, null, null, null, null, null, 1047552, null);
        t9.m.e(str, JSON_KEY_JIT);
        t9.m.e(str2, JSON_KEY_ISS);
        t9.m.e(str3, JSON_KEY_AUD);
        t9.m.e(str4, "nonce");
        t9.m.e(str5, JSON_KEY_SUB);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6, String str7, String str8, String str9) {
        this(str, str2, str3, str4, j10, j11, str5, str6, str7, str8, str9, null, null, null, null, null, null, null, null, null, 1046528, null);
        t9.m.e(str, JSON_KEY_JIT);
        t9.m.e(str2, JSON_KEY_ISS);
        t9.m.e(str3, JSON_KEY_AUD);
        t9.m.e(str4, "nonce");
        t9.m.e(str5, JSON_KEY_SUB);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6, String str7, String str8, String str9, String str10) {
        this(str, str2, str3, str4, j10, j11, str5, str6, str7, str8, str9, str10, null, null, null, null, null, null, null, null, 1044480, null);
        t9.m.e(str, JSON_KEY_JIT);
        t9.m.e(str2, JSON_KEY_ISS);
        t9.m.e(str3, JSON_KEY_AUD);
        t9.m.e(str4, "nonce");
        t9.m.e(str5, JSON_KEY_SUB);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this(str, str2, str3, str4, j10, j11, str5, str6, str7, str8, str9, str10, str11, null, null, null, null, null, null, null, 1040384, null);
        t9.m.e(str, JSON_KEY_JIT);
        t9.m.e(str2, JSON_KEY_ISS);
        t9.m.e(str3, JSON_KEY_AUD);
        t9.m.e(str4, "nonce");
        t9.m.e(str5, JSON_KEY_SUB);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6, String str7, String str8, String str9, String str10, String str11, Collection<String> collection) {
        this(str, str2, str3, str4, j10, j11, str5, str6, str7, str8, str9, str10, str11, collection, null, null, null, null, null, null, 1032192, null);
        t9.m.e(str, JSON_KEY_JIT);
        t9.m.e(str2, JSON_KEY_ISS);
        t9.m.e(str3, JSON_KEY_AUD);
        t9.m.e(str4, "nonce");
        t9.m.e(str5, JSON_KEY_SUB);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6, String str7, String str8, String str9, String str10, String str11, Collection<String> collection, String str12) {
        this(str, str2, str3, str4, j10, j11, str5, str6, str7, str8, str9, str10, str11, collection, str12, null, null, null, null, null, 1015808, null);
        t9.m.e(str, JSON_KEY_JIT);
        t9.m.e(str2, JSON_KEY_ISS);
        t9.m.e(str3, JSON_KEY_AUD);
        t9.m.e(str4, "nonce");
        t9.m.e(str5, JSON_KEY_SUB);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6, String str7, String str8, String str9, String str10, String str11, Collection<String> collection, String str12, Map<String, Integer> map) {
        this(str, str2, str3, str4, j10, j11, str5, str6, str7, str8, str9, str10, str11, collection, str12, map, null, null, null, null, 983040, null);
        t9.m.e(str, JSON_KEY_JIT);
        t9.m.e(str2, JSON_KEY_ISS);
        t9.m.e(str3, JSON_KEY_AUD);
        t9.m.e(str4, "nonce");
        t9.m.e(str5, JSON_KEY_SUB);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6, String str7, String str8, String str9, String str10, String str11, Collection<String> collection, String str12, Map<String, Integer> map, Map<String, String> map2) {
        this(str, str2, str3, str4, j10, j11, str5, str6, str7, str8, str9, str10, str11, collection, str12, map, map2, null, null, null, 917504, null);
        t9.m.e(str, JSON_KEY_JIT);
        t9.m.e(str2, JSON_KEY_ISS);
        t9.m.e(str3, JSON_KEY_AUD);
        t9.m.e(str4, "nonce");
        t9.m.e(str5, JSON_KEY_SUB);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6, String str7, String str8, String str9, String str10, String str11, Collection<String> collection, String str12, Map<String, Integer> map, Map<String, String> map2, Map<String, String> map3) {
        this(str, str2, str3, str4, j10, j11, str5, str6, str7, str8, str9, str10, str11, collection, str12, map, map2, map3, null, null, 786432, null);
        t9.m.e(str, JSON_KEY_JIT);
        t9.m.e(str2, JSON_KEY_ISS);
        t9.m.e(str3, JSON_KEY_AUD);
        t9.m.e(str4, "nonce");
        t9.m.e(str5, JSON_KEY_SUB);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6, String str7, String str8, String str9, String str10, String str11, Collection<String> collection, String str12, Map<String, Integer> map, Map<String, String> map2, Map<String, String> map3, String str13) {
        this(str, str2, str3, str4, j10, j11, str5, str6, str7, str8, str9, str10, str11, collection, str12, map, map2, map3, str13, null, 524288, null);
        t9.m.e(str, JSON_KEY_JIT);
        t9.m.e(str2, JSON_KEY_ISS);
        t9.m.e(str3, JSON_KEY_AUD);
        t9.m.e(str4, "nonce");
        t9.m.e(str5, JSON_KEY_SUB);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean isValidClaims(org.json.JSONObject r9, java.lang.String r10) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.AuthenticationTokenClaims.isValidClaims(org.json.JSONObject, java.lang.String):boolean");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationTokenClaims)) {
            return false;
        }
        AuthenticationTokenClaims authenticationTokenClaims = (AuthenticationTokenClaims) obj;
        return t9.m.a(this.jti, authenticationTokenClaims.jti) && t9.m.a(this.iss, authenticationTokenClaims.iss) && t9.m.a(this.aud, authenticationTokenClaims.aud) && t9.m.a(this.nonce, authenticationTokenClaims.nonce) && this.exp == authenticationTokenClaims.exp && this.iat == authenticationTokenClaims.iat && t9.m.a(this.sub, authenticationTokenClaims.sub) && t9.m.a(this.name, authenticationTokenClaims.name) && t9.m.a(this.givenName, authenticationTokenClaims.givenName) && t9.m.a(this.middleName, authenticationTokenClaims.middleName) && t9.m.a(this.familyName, authenticationTokenClaims.familyName) && t9.m.a(this.email, authenticationTokenClaims.email) && t9.m.a(this.picture, authenticationTokenClaims.picture) && t9.m.a(this.userFriends, authenticationTokenClaims.userFriends) && t9.m.a(this.userBirthday, authenticationTokenClaims.userBirthday) && t9.m.a(this.userAgeRange, authenticationTokenClaims.userAgeRange) && t9.m.a(this.userHometown, authenticationTokenClaims.userHometown) && t9.m.a(this.userLocation, authenticationTokenClaims.userLocation) && t9.m.a(this.userGender, authenticationTokenClaims.userGender) && t9.m.a(this.userLink, authenticationTokenClaims.userLink);
    }

    public final String getAud() {
        return this.aud;
    }

    public final String getEmail() {
        return this.email;
    }

    public final long getExp() {
        return this.exp;
    }

    public final String getFamilyName() {
        return this.familyName;
    }

    public final String getGivenName() {
        return this.givenName;
    }

    public final long getIat() {
        return this.iat;
    }

    public final String getIss() {
        return this.iss;
    }

    public final String getJti() {
        return this.jti;
    }

    public final String getMiddleName() {
        return this.middleName;
    }

    public final String getName() {
        return this.name;
    }

    public final String getNonce() {
        return this.nonce;
    }

    public final String getPicture() {
        return this.picture;
    }

    public final String getSub() {
        return this.sub;
    }

    public final Map<String, Integer> getUserAgeRange() {
        return this.userAgeRange;
    }

    public final String getUserBirthday() {
        return this.userBirthday;
    }

    public final Set<String> getUserFriends() {
        return this.userFriends;
    }

    public final String getUserGender() {
        return this.userGender;
    }

    public final Map<String, String> getUserHometown() {
        return this.userHometown;
    }

    public final String getUserLink() {
        return this.userLink;
    }

    public final Map<String, String> getUserLocation() {
        return this.userLocation;
    }

    public int hashCode() {
        int iHashCode = (((((((((((((527 + this.jti.hashCode()) * 31) + this.iss.hashCode()) * 31) + this.aud.hashCode()) * 31) + this.nonce.hashCode()) * 31) + e.a(this.exp)) * 31) + e.a(this.iat)) * 31) + this.sub.hashCode()) * 31;
        String str = this.name;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.givenName;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.middleName;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.familyName;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.email;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.picture;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Set<String> set = this.userFriends;
        int iHashCode8 = (iHashCode7 + (set == null ? 0 : set.hashCode())) * 31;
        String str7 = this.userBirthday;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Map<String, Integer> map = this.userAgeRange;
        int iHashCode10 = (iHashCode9 + (map == null ? 0 : map.hashCode())) * 31;
        Map<String, String> map2 = this.userHometown;
        int iHashCode11 = (iHashCode10 + (map2 == null ? 0 : map2.hashCode())) * 31;
        Map<String, String> map3 = this.userLocation;
        int iHashCode12 = (iHashCode11 + (map3 == null ? 0 : map3.hashCode())) * 31;
        String str8 = this.userGender;
        int iHashCode13 = (iHashCode12 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.userLink;
        return iHashCode13 + (str9 != null ? str9.hashCode() : 0);
    }

    public final String toEnCodedString() {
        String string = toString();
        Charset charset = ba.d.f4713b;
        Objects.requireNonNull(string, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = string.getBytes(charset);
        t9.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
        String strEncodeToString = Base64.encodeToString(bytes, 8);
        t9.m.d(strEncodeToString, "encodeToString(claimsJsonString.toByteArray(), Base64.URL_SAFE)");
        return strEncodeToString;
    }

    public final JSONObject toJSONObject$facebook_core_release() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(JSON_KEY_JIT, this.jti);
        jSONObject.put(JSON_KEY_ISS, this.iss);
        jSONObject.put(JSON_KEY_AUD, this.aud);
        jSONObject.put("nonce", this.nonce);
        jSONObject.put(JSON_KEY_EXP, this.exp);
        jSONObject.put(JSON_KEY_IAT, this.iat);
        String str = this.sub;
        if (str != null) {
            jSONObject.put(JSON_KEY_SUB, str);
        }
        String str2 = this.name;
        if (str2 != null) {
            jSONObject.put("name", str2);
        }
        String str3 = this.givenName;
        if (str3 != null) {
            jSONObject.put(JSON_KEY_GIVEN_NAME, str3);
        }
        String str4 = this.middleName;
        if (str4 != null) {
            jSONObject.put(JSON_KEY_MIDDLE_NAME, str4);
        }
        String str5 = this.familyName;
        if (str5 != null) {
            jSONObject.put(JSON_KEY_FAMILY_NAME, str5);
        }
        String str6 = this.email;
        if (str6 != null) {
            jSONObject.put("email", str6);
        }
        String str7 = this.picture;
        if (str7 != null) {
            jSONObject.put("picture", str7);
        }
        if (this.userFriends != null) {
            jSONObject.put(JSON_KEY_USER_FRIENDS, new JSONArray((Collection) this.userFriends));
        }
        String str8 = this.userBirthday;
        if (str8 != null) {
            jSONObject.put(JSON_KEY_USER_BIRTHDAY, str8);
        }
        if (this.userAgeRange != null) {
            jSONObject.put(JSON_KEY_USER_AGE_RANGE, new JSONObject(this.userAgeRange));
        }
        if (this.userHometown != null) {
            jSONObject.put(JSON_KEY_USER_HOMETOWN, new JSONObject(this.userHometown));
        }
        if (this.userLocation != null) {
            jSONObject.put(JSON_KEY_USER_LOCATION, new JSONObject(this.userLocation));
        }
        String str9 = this.userGender;
        if (str9 != null) {
            jSONObject.put(JSON_KEY_USER_GENDER, str9);
        }
        String str10 = this.userLink;
        if (str10 != null) {
            jSONObject.put(JSON_KEY_USER_LINK, str10);
        }
        return jSONObject;
    }

    public String toString() {
        String string = toJSONObject$facebook_core_release().toString();
        t9.m.d(string, "claimsJsonObject.toString()");
        return string;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        t9.m.e(parcel, "dest");
        parcel.writeString(this.jti);
        parcel.writeString(this.iss);
        parcel.writeString(this.aud);
        parcel.writeString(this.nonce);
        parcel.writeLong(this.exp);
        parcel.writeLong(this.iat);
        parcel.writeString(this.sub);
        parcel.writeString(this.name);
        parcel.writeString(this.givenName);
        parcel.writeString(this.middleName);
        parcel.writeString(this.familyName);
        parcel.writeString(this.email);
        parcel.writeString(this.picture);
        if (this.userFriends == null) {
            parcel.writeStringList(null);
        } else {
            parcel.writeStringList(new ArrayList(this.userFriends));
        }
        parcel.writeString(this.userBirthday);
        parcel.writeMap(this.userAgeRange);
        parcel.writeMap(this.userHometown);
        parcel.writeMap(this.userLocation);
        parcel.writeString(this.userGender);
        parcel.writeString(this.userLink);
    }

    public /* synthetic */ AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6, String str7, String str8, String str9, String str10, String str11, Collection collection, String str12, Map map, Map map2, Map map3, String str13, String str14, int i10, t9.g gVar) {
        this(str, str2, str3, str4, j10, j11, str5, (i10 & 128) != 0 ? null : str6, (i10 & 256) != 0 ? null : str7, (i10 & 512) != 0 ? null : str8, (i10 & 1024) != 0 ? null : str9, (i10 & 2048) != 0 ? null : str10, (i10 & 4096) != 0 ? null : str11, (i10 & Utility.DEFAULT_STREAM_BUFFER_SIZE) != 0 ? null : collection, (i10 & 16384) != 0 ? null : str12, (32768 & i10) != 0 ? null : map, (65536 & i10) != 0 ? null : map2, (131072 & i10) != 0 ? null : map3, (262144 & i10) != 0 ? null : str13, (i10 & 524288) != 0 ? null : str14);
    }

    public AuthenticationTokenClaims(String str, String str2, String str3, String str4, long j10, long j11, String str5, String str6, String str7, String str8, String str9, String str10, String str11, Collection<String> collection, String str12, Map<String, Integer> map, Map<String, String> map2, Map<String, String> map3, String str13, String str14) {
        t9.m.e(str, JSON_KEY_JIT);
        t9.m.e(str2, JSON_KEY_ISS);
        t9.m.e(str3, JSON_KEY_AUD);
        t9.m.e(str4, "nonce");
        t9.m.e(str5, JSON_KEY_SUB);
        Validate validate = Validate.INSTANCE;
        Validate.notEmpty(str, JSON_KEY_JIT);
        Validate.notEmpty(str2, JSON_KEY_ISS);
        Validate.notEmpty(str3, JSON_KEY_AUD);
        Validate.notEmpty(str4, "nonce");
        Validate.notEmpty(str5, JSON_KEY_SUB);
        this.jti = str;
        this.iss = str2;
        this.aud = str3;
        this.nonce = str4;
        this.exp = j10;
        this.iat = j11;
        this.sub = str5;
        this.name = str6;
        this.givenName = str7;
        this.middleName = str8;
        this.familyName = str9;
        this.email = str10;
        this.picture = str11;
        this.userFriends = collection != null ? Collections.unmodifiableSet(new HashSet(collection)) : null;
        this.userBirthday = str12;
        this.userAgeRange = map != null ? Collections.unmodifiableMap(new HashMap(map)) : null;
        this.userHometown = map2 != null ? Collections.unmodifiableMap(new HashMap(map2)) : null;
        this.userLocation = map3 != null ? Collections.unmodifiableMap(new HashMap(map3)) : null;
        this.userGender = str13;
        this.userLink = str14;
    }

    public AuthenticationTokenClaims(Parcel parcel) {
        t9.m.e(parcel, "parcel");
        String string = parcel.readString();
        Validate validate = Validate.INSTANCE;
        this.jti = Validate.notNullOrEmpty(string, JSON_KEY_JIT);
        this.iss = Validate.notNullOrEmpty(parcel.readString(), JSON_KEY_ISS);
        this.aud = Validate.notNullOrEmpty(parcel.readString(), JSON_KEY_AUD);
        this.nonce = Validate.notNullOrEmpty(parcel.readString(), "nonce");
        this.exp = parcel.readLong();
        this.iat = parcel.readLong();
        this.sub = Validate.notNullOrEmpty(parcel.readString(), JSON_KEY_SUB);
        this.name = parcel.readString();
        this.givenName = parcel.readString();
        this.middleName = parcel.readString();
        this.familyName = parcel.readString();
        this.email = parcel.readString();
        this.picture = parcel.readString();
        ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
        this.userFriends = arrayListCreateStringArrayList != null ? Collections.unmodifiableSet(new HashSet(arrayListCreateStringArrayList)) : null;
        this.userBirthday = parcel.readString();
        HashMap hashMap = parcel.readHashMap(t9.l.f35547a.getClass().getClassLoader());
        hashMap = hashMap instanceof HashMap ? hashMap : null;
        this.userAgeRange = hashMap != null ? Collections.unmodifiableMap(hashMap) : null;
        b0 b0Var = b0.f35528a;
        HashMap hashMap2 = parcel.readHashMap(b0Var.getClass().getClassLoader());
        hashMap2 = hashMap2 instanceof HashMap ? hashMap2 : null;
        this.userHometown = hashMap2 != null ? Collections.unmodifiableMap(hashMap2) : null;
        HashMap hashMap3 = parcel.readHashMap(b0Var.getClass().getClassLoader());
        hashMap3 = hashMap3 instanceof HashMap ? hashMap3 : null;
        this.userLocation = hashMap3 != null ? Collections.unmodifiableMap(hashMap3) : null;
        this.userGender = parcel.readString();
        this.userLink = parcel.readString();
    }
}
