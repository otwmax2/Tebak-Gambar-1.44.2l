package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.facebook.internal.Validate;
import com.facebook.share.internal.ShareConstants;
import java.nio.charset.Charset;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: AuthenticationTokenHeader.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AuthenticationTokenHeader implements Parcelable {
    private final String alg;
    private final String kid;
    private final String typ;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<AuthenticationTokenHeader> CREATOR = new Parcelable.Creator<AuthenticationTokenHeader>() { // from class: com.facebook.AuthenticationTokenHeader$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AuthenticationTokenHeader createFromParcel(Parcel parcel) {
            t9.m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
            return new AuthenticationTokenHeader(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AuthenticationTokenHeader[] newArray(int i10) {
            return new AuthenticationTokenHeader[i10];
        }
    };

    /* JADX INFO: compiled from: AuthenticationTokenHeader.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    public AuthenticationTokenHeader(String str) throws JSONException {
        t9.m.e(str, "encodedHeaderString");
        if (!isValidHeader(str)) {
            throw new IllegalArgumentException("Invalid Header".toString());
        }
        byte[] bArrDecode = Base64.decode(str, 0);
        t9.m.d(bArrDecode, "decodedBytes");
        JSONObject jSONObject = new JSONObject(new String(bArrDecode, ba.d.f4713b));
        String string = jSONObject.getString("alg");
        t9.m.d(string, "jsonObj.getString(\"alg\")");
        this.alg = string;
        String string2 = jSONObject.getString("typ");
        t9.m.d(string2, "jsonObj.getString(\"typ\")");
        this.typ = string2;
        String string3 = jSONObject.getString("kid");
        t9.m.d(string3, "jsonObj.getString(\"kid\")");
        this.kid = string3;
    }

    private final boolean isValidHeader(String str) {
        Validate validate = Validate.INSTANCE;
        Validate.notEmpty(str, "encodedHeaderString");
        byte[] bArrDecode = Base64.decode(str, 0);
        t9.m.d(bArrDecode, "decodedBytes");
        try {
            JSONObject jSONObject = new JSONObject(new String(bArrDecode, ba.d.f4713b));
            String strOptString = jSONObject.optString("alg");
            t9.m.d(strOptString, "alg");
            boolean z10 = (strOptString.length() > 0) && t9.m.a(strOptString, "RS256");
            String strOptString2 = jSONObject.optString("kid");
            t9.m.d(strOptString2, "jsonObj.optString(\"kid\")");
            boolean z11 = strOptString2.length() > 0;
            String strOptString3 = jSONObject.optString("typ");
            t9.m.d(strOptString3, "jsonObj.optString(\"typ\")");
            return z10 && z11 && (strOptString3.length() > 0);
        } catch (JSONException unused) {
            return false;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationTokenHeader)) {
            return false;
        }
        AuthenticationTokenHeader authenticationTokenHeader = (AuthenticationTokenHeader) obj;
        return t9.m.a(this.alg, authenticationTokenHeader.alg) && t9.m.a(this.typ, authenticationTokenHeader.typ) && t9.m.a(this.kid, authenticationTokenHeader.kid);
    }

    public final String getAlg() {
        return this.alg;
    }

    public final String getKid() {
        return this.kid;
    }

    public final String getTyp() {
        return this.typ;
    }

    public int hashCode() {
        return ((((527 + this.alg.hashCode()) * 31) + this.typ.hashCode()) * 31) + this.kid.hashCode();
    }

    public final String toEnCodedString() {
        String string = toString();
        Charset charset = ba.d.f4713b;
        Objects.requireNonNull(string, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = string.getBytes(charset);
        t9.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
        String strEncodeToString = Base64.encodeToString(bytes, 0);
        t9.m.d(strEncodeToString, "encodeToString(claimsJsonString.toByteArray(), Base64.DEFAULT)");
        return strEncodeToString;
    }

    public final JSONObject toJSONObject$facebook_core_release() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("alg", this.alg);
        jSONObject.put("typ", this.typ);
        jSONObject.put("kid", this.kid);
        return jSONObject;
    }

    public String toString() {
        String string = toJSONObject$facebook_core_release().toString();
        t9.m.d(string, "headerJsonObject.toString()");
        return string;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        t9.m.e(parcel, "dest");
        parcel.writeString(this.alg);
        parcel.writeString(this.typ);
        parcel.writeString(this.kid);
    }

    public AuthenticationTokenHeader(Parcel parcel) {
        t9.m.e(parcel, "parcel");
        String string = parcel.readString();
        Validate validate = Validate.INSTANCE;
        this.alg = Validate.notNullOrEmpty(string, "alg");
        this.typ = Validate.notNullOrEmpty(parcel.readString(), "typ");
        this.kid = Validate.notNullOrEmpty(parcel.readString(), "kid");
    }

    public AuthenticationTokenHeader(JSONObject jSONObject) throws JSONException {
        t9.m.e(jSONObject, "jsonObject");
        String string = jSONObject.getString("alg");
        t9.m.d(string, "jsonObject.getString(\"alg\")");
        this.alg = string;
        String string2 = jSONObject.getString("typ");
        t9.m.d(string2, "jsonObject.getString(\"typ\")");
        this.typ = string2;
        String string3 = jSONObject.getString("kid");
        t9.m.d(string3, "jsonObject.getString(\"kid\")");
        this.kid = string3;
    }

    public AuthenticationTokenHeader(String str, String str2, String str3) {
        t9.m.e(str, "alg");
        t9.m.e(str2, "typ");
        t9.m.e(str3, "kid");
        this.alg = str;
        this.typ = str2;
        this.kid = str3;
    }
}
