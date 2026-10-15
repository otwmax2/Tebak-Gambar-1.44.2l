package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@Deprecated
public final class CredentialPickerConfig extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new zbb();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    final int f6616o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6617p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6618q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f6619r;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f6620a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f6621b = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f6622c = 1;

        public CredentialPickerConfig a() {
            return new CredentialPickerConfig(2, this.f6620a, this.f6621b, false, this.f6622c);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface Prompt {
    }

    @SafeParcelable.Constructor
    CredentialPickerConfig(@SafeParcelable.Param int i10, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param boolean z12, @SafeParcelable.Param int i11) {
        this.f6616o = i10;
        this.f6617p = z10;
        this.f6618q = z11;
        if (i10 < 2) {
            this.f6619r = true == z12 ? 3 : 1;
        } else {
            this.f6619r = i11;
        }
    }

    @Deprecated
    public boolean V3() {
        return this.f6619r == 3;
    }

    public boolean W3() {
        return this.f6617p;
    }

    public boolean X3() {
        return this.f6618q;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.c(parcel, 1, W3());
        SafeParcelWriter.c(parcel, 2, X3());
        SafeParcelWriter.c(parcel, 3, V3());
        SafeParcelWriter.l(parcel, 4, this.f6619r);
        SafeParcelWriter.l(parcel, 1000, this.f6616o);
        SafeParcelWriter.b(parcel, iA);
    }
}
