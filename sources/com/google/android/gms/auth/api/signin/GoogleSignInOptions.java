package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.login.LoginConfiguration;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.auth.api.signin.internal.HashAccumulator;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {
    public static final GoogleSignInOptions A;
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;

    @VisibleForTesting
    public static final Scope E;

    @VisibleForTesting
    public static final Scope F;
    private static Comparator<Scope> G;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final GoogleSignInOptions f6734z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6735o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final ArrayList<Scope> f6736p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private Account f6737q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f6738r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6739s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6740t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6741u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6742v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private ArrayList<GoogleSignInOptionsExtensionParcelable> f6743w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6744x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Map<Integer, GoogleSignInOptionsExtensionParcelable> f6745y;

    @VisibleForTesting
    public static final Scope B = new Scope("profile");

    @VisibleForTesting
    public static final Scope C = new Scope("email");

    @VisibleForTesting
    public static final Scope D = new Scope(LoginConfiguration.OPENID);

    static {
        Scope scope = new Scope("https://www.googleapis.com/auth/games_lite");
        E = scope;
        F = new Scope("https://www.googleapis.com/auth/games");
        Builder builder = new Builder();
        builder.c();
        builder.e();
        f6734z = builder.a();
        Builder builder2 = new Builder();
        builder2.f(scope, new Scope[0]);
        A = builder2.a();
        CREATOR = new zae();
        G = new a();
    }

    @SafeParcelable.Constructor
    GoogleSignInOptions(@SafeParcelable.Param int i10, @SafeParcelable.Param ArrayList<Scope> arrayList, @SafeParcelable.Param Account account, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param boolean z12, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param ArrayList<GoogleSignInOptionsExtensionParcelable> arrayList2, @SafeParcelable.Param String str3) {
        this(i10, arrayList, account, z10, z11, z12, str, str2, o4(arrayList2), str3);
    }

    public static GoogleSignInOptions d4(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            hashSet.add(new Scope(jSONArray.getString(i10)));
        }
        String strOptString = jSONObject.has("accountName") ? jSONObject.optString("accountName") : null;
        return new GoogleSignInOptions(3, (ArrayList<Scope>) new ArrayList(hashSet), !TextUtils.isEmpty(strOptString) ? new Account(strOptString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.has("serverClientId") ? jSONObject.optString("serverClientId") : null, jSONObject.has("hostedDomain") ? jSONObject.optString("hostedDomain") : null, new HashMap(), (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<Integer, GoogleSignInOptionsExtensionParcelable> o4(List<GoogleSignInOptionsExtensionParcelable> list) {
        HashMap map = new HashMap();
        if (list == null) {
            return map;
        }
        for (GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable : list) {
            map.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.o()), googleSignInOptionsExtensionParcelable);
        }
        return map;
    }

    @KeepForSdk
    public ArrayList<GoogleSignInOptionsExtensionParcelable> V3() {
        return this.f6743w;
    }

    @KeepForSdk
    public String W3() {
        return this.f6744x;
    }

    @KeepForSdk
    public ArrayList<Scope> X3() {
        return new ArrayList<>(this.f6736p);
    }

    @KeepForSdk
    public String Y3() {
        return this.f6741u;
    }

    @KeepForSdk
    public boolean Z3() {
        return this.f6740t;
    }

    @KeepForSdk
    public boolean a4() {
        return this.f6738r;
    }

    @KeepForSdk
    public boolean b4() {
        return this.f6739s;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0052 A[Catch: ClassCastException -> 0x0090, TryCatch #0 {ClassCastException -> 0x0090, blocks: (B:5:0x0004, B:7:0x000e, B:10:0x0018, B:12:0x0028, B:15:0x0035, B:17:0x0039, B:22:0x004a, B:24:0x0052, B:30:0x006a, B:32:0x0072, B:34:0x007a, B:36:0x0082, B:27:0x005d, B:20:0x0040), top: B:42:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005d A[Catch: ClassCastException -> 0x0090, TryCatch #0 {ClassCastException -> 0x0090, blocks: (B:5:0x0004, B:7:0x000e, B:10:0x0018, B:12:0x0028, B:15:0x0035, B:17:0x0039, B:22:0x004a, B:24:0x0052, B:30:0x006a, B:32:0x0072, B:34:0x007a, B:36:0x0082, B:27:0x005d, B:20:0x0040), top: B:42:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008e A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r4 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r4     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList<com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable> r1 = r3.f6743w     // Catch: java.lang.ClassCastException -> L90
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L90
            if (r1 > 0) goto L90
            java.util.ArrayList<com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable> r1 = r4.f6743w     // Catch: java.lang.ClassCastException -> L90
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L90
            if (r1 <= 0) goto L18
            goto L90
        L18:
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r1 = r3.f6736p     // Catch: java.lang.ClassCastException -> L90
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r2 = r4.X3()     // Catch: java.lang.ClassCastException -> L90
            int r2 = r2.size()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r1 = r3.f6736p     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r2 = r4.X3()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.containsAll(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L35
            goto L90
        L35:
            android.accounts.Account r1 = r3.f6737q     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L40
            android.accounts.Account r1 = r4.l2()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L90
            goto L4a
        L40:
            android.accounts.Account r2 = r4.l2()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L90
        L4a:
            java.lang.String r1 = r3.f6741u     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L5d
            java.lang.String r1 = r4.Y3()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L90
            goto L6a
        L5d:
            java.lang.String r1 = r3.f6741u     // Catch: java.lang.ClassCastException -> L90
            java.lang.String r2 = r4.Y3()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L6a
            goto L90
        L6a:
            boolean r1 = r3.f6740t     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.Z3()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            boolean r1 = r3.f6738r     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.a4()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            boolean r1 = r3.f6739s     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.b4()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            java.lang.String r1 = r3.f6744x     // Catch: java.lang.ClassCastException -> L90
            java.lang.String r4 = r4.W3()     // Catch: java.lang.ClassCastException -> L90
            boolean r4 = android.text.TextUtils.equals(r1, r4)     // Catch: java.lang.ClassCastException -> L90
            if (r4 == 0) goto L90
            r4 = 1
            return r4
        L90:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public final String h4() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.f6736p, G);
            Iterator<Scope> it = this.f6736p.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().V3());
            }
            jSONObject.put("scopes", jSONArray);
            Account account = this.f6737q;
            if (account != null) {
                jSONObject.put("accountName", account.name);
            }
            jSONObject.put("idTokenRequested", this.f6738r);
            jSONObject.put("forceCodeForRefreshToken", this.f6740t);
            jSONObject.put("serverAuthRequested", this.f6739s);
            if (!TextUtils.isEmpty(this.f6741u)) {
                jSONObject.put("serverClientId", this.f6741u);
            }
            if (!TextUtils.isEmpty(this.f6742v)) {
                jSONObject.put("hostedDomain", this.f6742v);
            }
            return jSONObject.toString();
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.f6736p;
        int size = arrayList2.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(arrayList2.get(i10).V3());
        }
        Collections.sort(arrayList);
        HashAccumulator hashAccumulator = new HashAccumulator();
        hashAccumulator.a(arrayList);
        hashAccumulator.a(this.f6737q);
        hashAccumulator.a(this.f6741u);
        hashAccumulator.c(this.f6740t);
        hashAccumulator.c(this.f6738r);
        hashAccumulator.c(this.f6739s);
        hashAccumulator.a(this.f6744x);
        return hashAccumulator.b();
    }

    @KeepForSdk
    public Account l2() {
        return this.f6737q;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f6735o);
        SafeParcelWriter.x(parcel, 2, X3(), false);
        SafeParcelWriter.s(parcel, 3, l2(), i10, false);
        SafeParcelWriter.c(parcel, 4, a4());
        SafeParcelWriter.c(parcel, 5, b4());
        SafeParcelWriter.c(parcel, 6, Z3());
        SafeParcelWriter.t(parcel, 7, Y3(), false);
        SafeParcelWriter.t(parcel, 8, this.f6742v, false);
        SafeParcelWriter.x(parcel, 9, V3(), false);
        SafeParcelWriter.t(parcel, 10, W3(), false);
        SafeParcelWriter.b(parcel, iA);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Set<Scope> f6746a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f6747b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f6748c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f6749d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f6750e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Account f6751f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f6752g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Map<Integer, GoogleSignInOptionsExtensionParcelable> f6753h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f6754i;

        public Builder() {
            this.f6746a = new HashSet();
            this.f6753h = new HashMap();
        }

        private final String i(String str) {
            Preconditions.g(str);
            String str2 = this.f6750e;
            boolean z10 = true;
            if (str2 != null && !str2.equals(str)) {
                z10 = false;
            }
            Preconditions.b(z10, "two different server client ids provided");
            return str;
        }

        public GoogleSignInOptions a() {
            if (this.f6746a.contains(GoogleSignInOptions.F)) {
                Set<Scope> set = this.f6746a;
                Scope scope = GoogleSignInOptions.E;
                if (set.contains(scope)) {
                    this.f6746a.remove(scope);
                }
            }
            if (this.f6749d && (this.f6751f == null || !this.f6746a.isEmpty())) {
                c();
            }
            return new GoogleSignInOptions(new ArrayList(this.f6746a), this.f6751f, this.f6749d, this.f6747b, this.f6748c, this.f6750e, this.f6752g, this.f6753h, this.f6754i);
        }

        public Builder b() {
            this.f6746a.add(GoogleSignInOptions.C);
            return this;
        }

        public Builder c() {
            this.f6746a.add(GoogleSignInOptions.D);
            return this;
        }

        public Builder d(String str) {
            this.f6749d = true;
            i(str);
            this.f6750e = str;
            return this;
        }

        public Builder e() {
            this.f6746a.add(GoogleSignInOptions.B);
            return this;
        }

        public Builder f(Scope scope, Scope... scopeArr) {
            this.f6746a.add(scope);
            this.f6746a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public Builder g(String str) {
            this.f6751f = new Account(Preconditions.g(str), "com.google");
            return this;
        }

        @KeepForSdk
        public Builder h(String str) {
            this.f6754i = str;
            return this;
        }

        public Builder(GoogleSignInOptions googleSignInOptions) {
            this.f6746a = new HashSet();
            this.f6753h = new HashMap();
            Preconditions.k(googleSignInOptions);
            this.f6746a = new HashSet(googleSignInOptions.f6736p);
            this.f6747b = googleSignInOptions.f6739s;
            this.f6748c = googleSignInOptions.f6740t;
            this.f6749d = googleSignInOptions.f6738r;
            this.f6750e = googleSignInOptions.f6741u;
            this.f6751f = googleSignInOptions.f6737q;
            this.f6752g = googleSignInOptions.f6742v;
            this.f6753h = GoogleSignInOptions.o4(googleSignInOptions.f6743w);
            this.f6754i = googleSignInOptions.f6744x;
        }
    }

    private GoogleSignInOptions(int i10, ArrayList<Scope> arrayList, Account account, boolean z10, boolean z11, boolean z12, String str, String str2, Map<Integer, GoogleSignInOptionsExtensionParcelable> map, String str3) {
        this.f6735o = i10;
        this.f6736p = arrayList;
        this.f6737q = account;
        this.f6738r = z10;
        this.f6739s = z11;
        this.f6740t = z12;
        this.f6741u = str;
        this.f6742v = str2;
        this.f6743w = new ArrayList<>(map.values());
        this.f6745y = map;
        this.f6744x = str3;
    }
}
