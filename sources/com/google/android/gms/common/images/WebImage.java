package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new zah();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f7338o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f7339p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7340q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7341r;

    @SafeParcelable.Constructor
    WebImage(@SafeParcelable.Param int i10, @SafeParcelable.Param Uri uri, @SafeParcelable.Param int i11, @SafeParcelable.Param int i12) {
        this.f7338o = i10;
        this.f7339p = uri;
        this.f7340q = i11;
        this.f7341r = i12;
    }

    public int V3() {
        return this.f7341r;
    }

    public Uri W3() {
        return this.f7339p;
    }

    public int X3() {
        return this.f7340q;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof WebImage)) {
            WebImage webImage = (WebImage) obj;
            if (Objects.b(this.f7339p, webImage.f7339p) && this.f7340q == webImage.f7340q && this.f7341r == webImage.f7341r) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.c(this.f7339p, Integer.valueOf(this.f7340q), Integer.valueOf(this.f7341r));
    }

    public String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.f7340q), Integer.valueOf(this.f7341r), this.f7339p.toString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f7338o);
        SafeParcelWriter.s(parcel, 2, W3(), i10, false);
        SafeParcelWriter.l(parcel, 3, X3());
        SafeParcelWriter.l(parcel, 4, V3());
        SafeParcelWriter.b(parcel, iA);
    }
}
