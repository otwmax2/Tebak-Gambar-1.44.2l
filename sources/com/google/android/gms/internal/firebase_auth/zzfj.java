package com.google.android.gms.internal.firebase_auth;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzfj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfj> CREATOR = new zzfi();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22582o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22583p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22584q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22585r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22586s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22587t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22588u;

    public zzfj() {
    }

    public final String V3() {
        return this.f22582o;
    }

    public final String W3() {
        return this.f22583p;
    }

    public final Uri X3() {
        if (TextUtils.isEmpty(this.f22584q)) {
            return null;
        }
        return Uri.parse(this.f22584q);
    }

    public final String Y3() {
        return this.f22585r;
    }

    public final String Z3() {
        return this.f22587t;
    }

    public final String a4() {
        return this.f22588u;
    }

    public final String c() {
        return this.f22586s;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f22582o, false);
        SafeParcelWriter.t(parcel, 3, this.f22583p, false);
        SafeParcelWriter.t(parcel, 4, this.f22584q, false);
        SafeParcelWriter.t(parcel, 5, this.f22585r, false);
        SafeParcelWriter.t(parcel, 6, this.f22586s, false);
        SafeParcelWriter.t(parcel, 7, this.f22587t, false);
        SafeParcelWriter.t(parcel, 8, this.f22588u, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    zzfj(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param String str5, @SafeParcelable.Param String str6, @SafeParcelable.Param String str7) {
        this.f22582o = str;
        this.f22583p = str2;
        this.f22584q = str3;
        this.f22585r = str4;
        this.f22586s = str5;
        this.f22587t = str6;
        this.f22588u = str7;
    }
}
