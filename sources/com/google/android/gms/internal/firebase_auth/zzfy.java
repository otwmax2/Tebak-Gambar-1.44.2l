package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzfy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfy> CREATOR = new zzgb();

    @SafeParcelable.Field
    private String A;

    @SafeParcelable.Field
    private String B;

    @SafeParcelable.Field
    private boolean C;

    @SafeParcelable.Field
    private String D;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22606o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22607p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22608q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22609r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22610s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22611t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22612u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22613v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f22614w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f22615x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22616y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22617z;

    public zzfy() {
        this.f22614w = true;
        this.f22615x = true;
    }

    public final zzfy V3(boolean z10) {
        this.f22615x = false;
        return this;
    }

    public final zzfy W3(String str) {
        this.B = str;
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f22606o, false);
        SafeParcelWriter.t(parcel, 3, this.f22607p, false);
        SafeParcelWriter.t(parcel, 4, this.f22608q, false);
        SafeParcelWriter.t(parcel, 5, this.f22609r, false);
        SafeParcelWriter.t(parcel, 6, this.f22610s, false);
        SafeParcelWriter.t(parcel, 7, this.f22611t, false);
        SafeParcelWriter.t(parcel, 8, this.f22612u, false);
        SafeParcelWriter.t(parcel, 9, this.f22613v, false);
        SafeParcelWriter.c(parcel, 10, this.f22614w);
        SafeParcelWriter.c(parcel, 11, this.f22615x);
        SafeParcelWriter.t(parcel, 12, this.f22616y, false);
        SafeParcelWriter.t(parcel, 13, this.f22617z, false);
        SafeParcelWriter.t(parcel, 14, this.A, false);
        SafeParcelWriter.t(parcel, 15, this.B, false);
        SafeParcelWriter.c(parcel, 16, this.C);
        SafeParcelWriter.t(parcel, 17, this.D, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    zzfy(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param String str5, @SafeParcelable.Param String str6, @SafeParcelable.Param String str7, @SafeParcelable.Param String str8, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param String str9, @SafeParcelable.Param String str10, @SafeParcelable.Param String str11, @SafeParcelable.Param String str12, @SafeParcelable.Param boolean z12, @SafeParcelable.Param String str13) {
        this.f22606o = str;
        this.f22607p = str2;
        this.f22608q = str3;
        this.f22609r = str4;
        this.f22610s = str5;
        this.f22611t = str6;
        this.f22612u = str7;
        this.f22613v = str8;
        this.f22614w = z10;
        this.f22615x = z11;
        this.f22616y = str9;
        this.f22617z = str10;
        this.A = str11;
        this.B = str12;
        this.C = z12;
        this.D = str13;
    }

    public zzfy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this.f22606o = "http://localhost";
        this.f22608q = str;
        this.f22609r = str2;
        this.f22613v = str5;
        this.f22616y = str6;
        this.B = str7;
        this.D = str8;
        this.f22614w = true;
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(this.f22609r) && TextUtils.isEmpty(this.f22616y)) {
            throw new IllegalArgumentException("idToken, accessToken and authCode cannot all be null");
        }
        this.f22610s = Preconditions.g(str3);
        this.f22611t = null;
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(this.f22608q)) {
            sb.append("id_token=");
            sb.append(this.f22608q);
            sb.append("&");
        }
        if (!TextUtils.isEmpty(this.f22609r)) {
            sb.append("access_token=");
            sb.append(this.f22609r);
            sb.append("&");
        }
        if (!TextUtils.isEmpty(this.f22611t)) {
            sb.append("identifier=");
            sb.append(this.f22611t);
            sb.append("&");
        }
        if (!TextUtils.isEmpty(this.f22613v)) {
            sb.append("oauth_token_secret=");
            sb.append(this.f22613v);
            sb.append("&");
        }
        if (!TextUtils.isEmpty(this.f22616y)) {
            sb.append("code=");
            sb.append(this.f22616y);
            sb.append("&");
        }
        if (!TextUtils.isEmpty(str9)) {
            sb.append("nonce=");
            sb.append(str9);
            sb.append("&");
        }
        sb.append("providerId=");
        sb.append(this.f22610s);
        this.f22612u = sb.toString();
        this.f22615x = true;
    }
}
