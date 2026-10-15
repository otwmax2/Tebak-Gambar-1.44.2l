package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@SafeParcelable.Class
public class TokenData extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new zzm();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6521o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6522p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final Long f6523q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6524r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6525s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<String> f6526t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6527u;

    @SafeParcelable.Constructor
    TokenData(@SafeParcelable.Param int i10, @SafeParcelable.Param String str, @SafeParcelable.Param Long l10, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param List<String> list, @SafeParcelable.Param String str2) {
        this.f6521o = i10;
        this.f6522p = Preconditions.g(str);
        this.f6523q = l10;
        this.f6524r = z10;
        this.f6525s = z11;
        this.f6526t = list;
        this.f6527u = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.f6522p, tokenData.f6522p) && Objects.b(this.f6523q, tokenData.f6523q) && this.f6524r == tokenData.f6524r && this.f6525s == tokenData.f6525s && Objects.b(this.f6526t, tokenData.f6526t) && Objects.b(this.f6527u, tokenData.f6527u);
    }

    public final int hashCode() {
        return Objects.c(this.f6522p, this.f6523q, Boolean.valueOf(this.f6524r), Boolean.valueOf(this.f6525s), this.f6526t, this.f6527u);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f6521o);
        SafeParcelWriter.t(parcel, 2, this.f6522p, false);
        SafeParcelWriter.q(parcel, 3, this.f6523q, false);
        SafeParcelWriter.c(parcel, 4, this.f6524r);
        SafeParcelWriter.c(parcel, 5, this.f6525s);
        SafeParcelWriter.v(parcel, 6, this.f6526t, false);
        SafeParcelWriter.t(parcel, 7, this.f6527u, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
