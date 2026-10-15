package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@Deprecated
public final class HintRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<HintRequest> CREATOR = new zbe();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    final int f6635o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final CredentialPickerConfig f6636p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6637q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6638r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final String[] f6639s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6640t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6641u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6642v;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private CredentialPickerConfig f6643a = new CredentialPickerConfig.Builder().a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f6644b = false;
    }

    @SafeParcelable.Constructor
    HintRequest(@SafeParcelable.Param int i10, @SafeParcelable.Param CredentialPickerConfig credentialPickerConfig, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param String[] strArr, @SafeParcelable.Param boolean z12, @SafeParcelable.Param String str, @SafeParcelable.Param String str2) {
        this.f6635o = i10;
        this.f6636p = (CredentialPickerConfig) Preconditions.k(credentialPickerConfig);
        this.f6637q = z10;
        this.f6638r = z11;
        this.f6639s = (String[]) Preconditions.k(strArr);
        if (i10 < 2) {
            this.f6640t = true;
            this.f6641u = null;
            this.f6642v = null;
        } else {
            this.f6640t = z12;
            this.f6641u = str;
            this.f6642v = str2;
        }
    }

    public String[] V3() {
        return this.f6639s;
    }

    public CredentialPickerConfig W3() {
        return this.f6636p;
    }

    public String X3() {
        return this.f6642v;
    }

    public String Y3() {
        return this.f6641u;
    }

    public boolean Z3() {
        return this.f6637q;
    }

    public boolean a4() {
        return this.f6640t;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, W3(), i10, false);
        SafeParcelWriter.c(parcel, 2, Z3());
        SafeParcelWriter.c(parcel, 3, this.f6638r);
        SafeParcelWriter.u(parcel, 4, V3(), false);
        SafeParcelWriter.c(parcel, 5, a4());
        SafeParcelWriter.t(parcel, 6, Y3(), false);
        SafeParcelWriter.t(parcel, 7, X3(), false);
        SafeParcelWriter.l(parcel, 1000, this.f6635o);
        SafeParcelWriter.b(parcel, iA);
    }
}
