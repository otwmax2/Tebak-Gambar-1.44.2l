package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.InputStream;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzavn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzavn> CREATOR = new zzavo();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @GuardedBy("this")
    @SafeParcelable.Field
    private ParcelFileDescriptor f10019o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @GuardedBy("this")
    @SafeParcelable.Field
    private final boolean f10020p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @GuardedBy("this")
    @SafeParcelable.Field
    private final boolean f10021q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @GuardedBy("this")
    @SafeParcelable.Field
    private final long f10022r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @GuardedBy("this")
    @SafeParcelable.Field
    private final boolean f10023s;

    public zzavn() {
        this(null, false, false, 0L, false);
    }

    public final synchronized long V3() {
        return this.f10022r;
    }

    final synchronized ParcelFileDescriptor W3() {
        return this.f10019o;
    }

    public final synchronized InputStream X3() {
        if (this.f10019o == null) {
            return null;
        }
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.f10019o);
        this.f10019o = null;
        return autoCloseInputStream;
    }

    public final synchronized boolean Y3() {
        return this.f10021q;
    }

    public final synchronized boolean b() {
        return this.f10019o != null;
    }

    public final synchronized boolean d() {
        return this.f10020p;
    }

    public final synchronized boolean e() {
        return this.f10023s;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, W3(), i10, false);
        SafeParcelWriter.c(parcel, 3, d());
        SafeParcelWriter.c(parcel, 4, Y3());
        SafeParcelWriter.p(parcel, 5, V3());
        SafeParcelWriter.c(parcel, 6, e());
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    public zzavn(@SafeParcelable.Param ParcelFileDescriptor parcelFileDescriptor, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param long j10, @SafeParcelable.Param boolean z12) {
        this.f10019o = parcelFileDescriptor;
        this.f10020p = z10;
        this.f10021q = z11;
        this.f10022r = j10;
        this.f10023s = z12;
    }
}
