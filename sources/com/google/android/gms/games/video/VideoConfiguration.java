package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class VideoConfiguration extends AbstractSafeParcelable {
    public static final Parcelable.Creator<VideoConfiguration> CREATOR = new zzb();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8272o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8273p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8274q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8275r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8276s;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    public static final class Builder {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface ValidCaptureModes {
    }

    @SafeParcelable.Constructor
    public VideoConfiguration(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param boolean z12) {
        Preconditions.a(a4(i10, false));
        Preconditions.a(Z3(i11, false));
        this.f8272o = i10;
        this.f8273p = i11;
        this.f8274q = z10;
        this.f8275r = z11;
        this.f8276s = z12;
    }

    public static boolean Z3(int i10, boolean z10) {
        if (i10 != -1) {
            if (i10 == 0) {
                return true;
            }
            if (i10 != 1) {
                return false;
            }
        }
        return z10;
    }

    public static boolean a4(int i10, boolean z10) {
        if (i10 != -1) {
            z10 = true;
            if (i10 != 0 && i10 != 1 && i10 != 2 && i10 != 3) {
                return false;
            }
        }
        return z10;
    }

    public final boolean V3() {
        return this.f8275r;
    }

    public final int W3() {
        return this.f8273p;
    }

    public final boolean X3() {
        return this.f8276s;
    }

    public final int Y3() {
        return this.f8272o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, Y3());
        SafeParcelWriter.l(parcel, 2, W3());
        SafeParcelWriter.c(parcel, 7, this.f8274q);
        SafeParcelWriter.c(parcel, 8, V3());
        SafeParcelWriter.c(parcel, 9, X3());
        SafeParcelWriter.b(parcel, iA);
    }
}
