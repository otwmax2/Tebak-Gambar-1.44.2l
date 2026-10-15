package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class ScreenshotEntity extends com.google.android.gms.games.internal.zzb implements Parcelable, Freezable {
    public static final Parcelable.Creator<ScreenshotEntity> CREATOR = new zzc();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f8060o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8061p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8062q;

    @SafeParcelable.Constructor
    public ScreenshotEntity(@SafeParcelable.Param Uri uri, @SafeParcelable.Param int i10, @SafeParcelable.Param int i11) {
        this.f8060o = uri;
        this.f8061p = i10;
        this.f8062q = i11;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ScreenshotEntity)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        ScreenshotEntity screenshotEntity = (ScreenshotEntity) obj;
        return Objects.b(screenshotEntity.f8060o, this.f8060o) && Objects.b(Integer.valueOf(screenshotEntity.f8061p), Integer.valueOf(this.f8061p)) && Objects.b(Integer.valueOf(screenshotEntity.f8062q), Integer.valueOf(this.f8062q));
    }

    public final int hashCode() {
        return Objects.c(this.f8060o, Integer.valueOf(this.f8061p), Integer.valueOf(this.f8062q));
    }

    public final String toString() {
        return Objects.d(this).a("Uri", this.f8060o).a("Width", Integer.valueOf(this.f8061p)).a("Height", Integer.valueOf(this.f8062q)).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f8060o, i10, false);
        SafeParcelWriter.l(parcel, 2, this.f8061p);
        SafeParcelWriter.l(parcel, 3, this.f8062q);
        SafeParcelWriter.b(parcel, iA);
    }
}
