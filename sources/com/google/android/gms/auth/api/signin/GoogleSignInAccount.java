package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    private Set<Scope> A = new HashSet();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6720o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6721p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6722q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6723r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6724s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private Uri f6725t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6726u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private long f6727v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6728w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    List<Scope> f6729x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6730y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6731z;
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new zab();

    @VisibleForTesting
    public static Clock B = DefaultClock.d();

    @SafeParcelable.Constructor
    GoogleSignInAccount(@SafeParcelable.Param int i10, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param Uri uri, @SafeParcelable.Param String str5, @SafeParcelable.Param long j10, @SafeParcelable.Param String str6, @SafeParcelable.Param List<Scope> list, @SafeParcelable.Param String str7, @SafeParcelable.Param String str8) {
        this.f6720o = i10;
        this.f6721p = str;
        this.f6722q = str2;
        this.f6723r = str3;
        this.f6724s = str4;
        this.f6725t = uri;
        this.f6726u = str5;
        this.f6727v = j10;
        this.f6728w = str6;
        this.f6729x = list;
        this.f6730y = str7;
        this.f6731z = str8;
    }

    public static GoogleSignInAccount f4(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l10, String str7, Set<Scope> set) {
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l10.longValue(), Preconditions.g(str7), new ArrayList((Collection) Preconditions.k(set)), str5, str6);
    }

    public static GoogleSignInAccount g4(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String strOptString = jSONObject.optString("photoUrl");
        Uri uri = !TextUtils.isEmpty(strOptString) ? Uri.parse(strOptString) : null;
        long j10 = Long.parseLong(jSONObject.getString(SDKConstants.PARAM_EXPIRATION_TIME));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            hashSet.add(new Scope(jSONArray.getString(i10)));
        }
        GoogleSignInAccount googleSignInAccountF4 = f4(jSONObject.optString("id"), jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null, jSONObject.has("email") ? jSONObject.optString("email") : null, jSONObject.has("displayName") ? jSONObject.optString("displayName") : null, jSONObject.has("givenName") ? jSONObject.optString("givenName") : null, jSONObject.has("familyName") ? jSONObject.optString("familyName") : null, uri, Long.valueOf(j10), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        googleSignInAccountF4.f6726u = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
        return googleSignInAccountF4;
    }

    public String V3() {
        return this.f6723r;
    }

    public String W3() {
        return this.f6731z;
    }

    public String X3() {
        return this.f6730y;
    }

    public Set<Scope> Y3() {
        return new HashSet(this.f6729x);
    }

    public String Z3() {
        return this.f6721p;
    }

    public String a4() {
        return this.f6722q;
    }

    public Uri b4() {
        return this.f6725t;
    }

    @KeepForSdk
    public Set<Scope> c4() {
        HashSet hashSet = new HashSet(this.f6729x);
        hashSet.addAll(this.A);
        return hashSet;
    }

    public String d4() {
        return this.f6726u;
    }

    @KeepForSdk
    public boolean e4() {
        return B.a() / 1000 >= this.f6727v + (-300);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f6728w.equals(this.f6728w) && googleSignInAccount.c4().equals(c4());
    }

    public final String h4() {
        return this.f6728w;
    }

    public int hashCode() {
        return ((this.f6728w.hashCode() + 527) * 31) + c4().hashCode();
    }

    public final String i4() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (Z3() != null) {
                jSONObject.put("id", Z3());
            }
            if (a4() != null) {
                jSONObject.put("tokenId", a4());
            }
            if (V3() != null) {
                jSONObject.put("email", V3());
            }
            if (s() != null) {
                jSONObject.put("displayName", s());
            }
            if (X3() != null) {
                jSONObject.put("givenName", X3());
            }
            if (W3() != null) {
                jSONObject.put("familyName", W3());
            }
            Uri uriB4 = b4();
            if (uriB4 != null) {
                jSONObject.put("photoUrl", uriB4.toString());
            }
            if (d4() != null) {
                jSONObject.put("serverAuthCode", d4());
            }
            jSONObject.put(SDKConstants.PARAM_EXPIRATION_TIME, this.f6727v);
            jSONObject.put("obfuscatedIdentifier", this.f6728w);
            JSONArray jSONArray = new JSONArray();
            List<Scope> list = this.f6729x;
            Scope[] scopeArr = (Scope[]) list.toArray(new Scope[list.size()]);
            Arrays.sort(scopeArr, new Comparator() { // from class: com.google.android.gms.auth.api.signin.zaa
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    Parcelable.Creator<GoogleSignInAccount> creator = GoogleSignInAccount.CREATOR;
                    return ((Scope) obj).V3().compareTo(((Scope) obj2).V3());
                }
            });
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.V3());
            }
            jSONObject.put("grantedScopes", jSONArray);
            jSONObject.remove("serverAuthCode");
            return jSONObject.toString();
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    public Account l2() {
        String str = this.f6723r;
        if (str == null) {
            return null;
        }
        return new Account(str, "com.google");
    }

    public String s() {
        return this.f6724s;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f6720o);
        SafeParcelWriter.t(parcel, 2, Z3(), false);
        SafeParcelWriter.t(parcel, 3, a4(), false);
        SafeParcelWriter.t(parcel, 4, V3(), false);
        SafeParcelWriter.t(parcel, 5, s(), false);
        SafeParcelWriter.s(parcel, 6, b4(), i10, false);
        SafeParcelWriter.t(parcel, 7, d4(), false);
        SafeParcelWriter.p(parcel, 8, this.f6727v);
        SafeParcelWriter.t(parcel, 9, this.f6728w, false);
        SafeParcelWriter.x(parcel, 10, this.f6729x, false);
        SafeParcelWriter.t(parcel, 11, X3(), false);
        SafeParcelWriter.t(parcel, 12, W3(), false);
        SafeParcelWriter.b(parcel, iA);
    }
}
