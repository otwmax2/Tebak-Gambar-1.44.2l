package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@Deprecated
public final class CredentialRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CredentialRequest> CREATOR = new zbc();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    final int f6623o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6624p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String[] f6625q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final CredentialPickerConfig f6626r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final CredentialPickerConfig f6627s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6628t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6629u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6630v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6631w;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f6632a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f6633b = null;
    }

    @SafeParcelable.Constructor
    CredentialRequest(@SafeParcelable.Param int i10, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String[] strArr, @SafeParcelable.Param CredentialPickerConfig credentialPickerConfig, @SafeParcelable.Param CredentialPickerConfig credentialPickerConfig2, @SafeParcelable.Param boolean z11, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param boolean z12) {
        this.f6623o = i10;
        this.f6624p = z10;
        this.f6625q = (String[]) Preconditions.k(strArr);
        this.f6626r = credentialPickerConfig == null ? new CredentialPickerConfig.Builder().a() : credentialPickerConfig;
        this.f6627s = credentialPickerConfig2 == null ? new CredentialPickerConfig.Builder().a() : credentialPickerConfig2;
        if (i10 < 3) {
            this.f6628t = true;
            this.f6629u = null;
            this.f6630v = null;
        } else {
            this.f6628t = z11;
            this.f6629u = str;
            this.f6630v = str2;
        }
        this.f6631w = z12;
    }

    public String[] V3() {
        return this.f6625q;
    }

    public CredentialPickerConfig W3() {
        return this.f6627s;
    }

    public CredentialPickerConfig X3() {
        return this.f6626r;
    }

    public String Y3() {
        return this.f6630v;
    }

    public String Z3() {
        return this.f6629u;
    }

    public boolean a4() {
        return this.f6628t;
    }

    public boolean b4() {
        return this.f6624p;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.c(parcel, 1, b4());
        SafeParcelWriter.u(parcel, 2, V3(), false);
        SafeParcelWriter.s(parcel, 3, X3(), i10, false);
        SafeParcelWriter.s(parcel, 4, W3(), i10, false);
        SafeParcelWriter.c(parcel, 5, a4());
        SafeParcelWriter.t(parcel, 6, Z3(), false);
        SafeParcelWriter.t(parcel, 7, Y3(), false);
        SafeParcelWriter.c(parcel, 8, this.f6631w);
        SafeParcelWriter.l(parcel, 1000, this.f6623o);
        SafeParcelWriter.b(parcel, iA);
    }
}
