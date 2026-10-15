package com.google.android.gms.games.internal.player;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Players;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class
@SafeParcelable.Reserved
public class ProfileSettingsEntity extends com.google.android.gms.games.internal.zzb implements Players.zza {
    public static final Parcelable.Creator<ProfileSettingsEntity> CREATOR = new zze();

    @SafeParcelable.Field
    private final int A;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final Status f8072o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8073p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8074q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8075r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8076s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final StockProfileImageEntity f8077t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8078u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8079v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8080w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8081x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8082y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f8083z;

    @SafeParcelable.Constructor
    ProfileSettingsEntity(@SafeParcelable.Param Status status, @SafeParcelable.Param String str, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param boolean z12, @SafeParcelable.Param StockProfileImageEntity stockProfileImageEntity, @SafeParcelable.Param boolean z13, @SafeParcelable.Param boolean z14, @SafeParcelable.Param int i10, @SafeParcelable.Param boolean z15, @SafeParcelable.Param boolean z16, @SafeParcelable.Param int i11, @SafeParcelable.Param int i12) {
        this.f8072o = status;
        this.f8073p = str;
        this.f8074q = z10;
        this.f8075r = z11;
        this.f8076s = z12;
        this.f8077t = stockProfileImageEntity;
        this.f8078u = z13;
        this.f8079v = z14;
        this.f8080w = i10;
        this.f8081x = z15;
        this.f8082y = z16;
        this.f8083z = i11;
        this.A = i12;
    }

    @Override // com.google.android.gms.games.Players.zza
    public final int A() {
        return this.f8080w;
    }

    @Override // com.google.android.gms.games.Players.zza
    public final boolean C() {
        return this.f8078u;
    }

    @Override // com.google.android.gms.games.Players.zza
    public final int C3() {
        return this.f8083z;
    }

    @Override // com.google.android.gms.games.Players.zza
    public final boolean E() {
        return this.f8081x;
    }

    @Override // com.google.android.gms.games.Players.zza
    public final boolean N() {
        return this.f8082y;
    }

    @Override // com.google.android.gms.games.Players.zza
    public final int Q() {
        return this.A;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status V2() {
        return this.f8072o;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Players.zza)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Players.zza zzaVar = (Players.zza) obj;
        return Objects.b(this.f8073p, zzaVar.i()) && Objects.b(Boolean.valueOf(this.f8074q), Boolean.valueOf(zzaVar.t())) && Objects.b(Boolean.valueOf(this.f8075r), Boolean.valueOf(zzaVar.k())) && Objects.b(Boolean.valueOf(this.f8076s), Boolean.valueOf(zzaVar.x())) && Objects.b(this.f8072o, zzaVar.V2()) && Objects.b(this.f8077t, zzaVar.v()) && Objects.b(Boolean.valueOf(this.f8078u), Boolean.valueOf(zzaVar.C())) && Objects.b(Boolean.valueOf(this.f8079v), Boolean.valueOf(zzaVar.y())) && this.f8080w == zzaVar.A() && this.f8081x == zzaVar.E() && this.f8082y == zzaVar.N() && this.f8083z == zzaVar.C3() && this.A == zzaVar.Q();
    }

    public int hashCode() {
        return Objects.c(this.f8073p, Boolean.valueOf(this.f8074q), Boolean.valueOf(this.f8075r), Boolean.valueOf(this.f8076s), this.f8072o, this.f8077t, Boolean.valueOf(this.f8078u), Boolean.valueOf(this.f8079v), Integer.valueOf(this.f8080w), Boolean.valueOf(this.f8081x), Boolean.valueOf(this.f8082y), Integer.valueOf(this.f8083z), Integer.valueOf(this.A));
    }

    @Override // com.google.android.gms.games.Players.zza
    public final String i() {
        return this.f8073p;
    }

    @Override // com.google.android.gms.games.Players.zza
    public final boolean k() {
        return this.f8075r;
    }

    @Override // com.google.android.gms.games.Players.zza
    public final boolean t() {
        return this.f8074q;
    }

    public String toString() {
        Objects.ToStringHelper toStringHelperA = Objects.d(this).a("GamerTag", this.f8073p).a("IsGamerTagExplicitlySet", Boolean.valueOf(this.f8074q)).a("IsProfileVisible", Boolean.valueOf(this.f8075r)).a("IsVisibilityExplicitlySet", Boolean.valueOf(this.f8076s)).a("Status", this.f8072o).a("StockProfileImage", this.f8077t).a("IsProfileDiscoverable", Boolean.valueOf(this.f8078u)).a("AutoSignIn", Boolean.valueOf(this.f8079v)).a("httpErrorCode", Integer.valueOf(this.f8080w)).a("IsSettingsChangesProhibited", Boolean.valueOf(this.f8081x));
        char[] cArr = {128, 171, 171, 174, 182, 133, 177, 168, 164, 173, 163, 136, 173, 181, 168, 179, 164, 178};
        for (int i10 = 0; i10 < 18; i10++) {
            cArr[i10] = (char) (cArr[i10] - '?');
        }
        Objects.ToStringHelper toStringHelperA2 = toStringHelperA.a(new String(cArr), Boolean.valueOf(this.f8082y)).a("ProfileVisibility", Integer.valueOf(this.f8083z));
        char[] cArr2 = {166, 171, 174, 161, 160, 171, 158, 165, 177, 168, 164, 173, 163, 178, 158, 171, 168, 178, 179, 158, 181, 168, 178, 168, 161, 168, 171, 168, 179, 184};
        for (int i11 = 0; i11 < 30; i11++) {
            cArr2[i11] = (char) (cArr2[i11] - '?');
        }
        return toStringHelperA2.a(new String(cArr2), Integer.valueOf(this.A)).toString();
    }

    @Override // com.google.android.gms.games.Players.zza
    public final StockProfileImage v() {
        return this.f8077t;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, V2(), i10, false);
        SafeParcelWriter.t(parcel, 2, this.f8073p, false);
        SafeParcelWriter.c(parcel, 3, this.f8074q);
        SafeParcelWriter.c(parcel, 4, this.f8075r);
        SafeParcelWriter.c(parcel, 5, this.f8076s);
        SafeParcelWriter.s(parcel, 6, this.f8077t, i10, false);
        SafeParcelWriter.c(parcel, 7, this.f8078u);
        SafeParcelWriter.c(parcel, 8, this.f8079v);
        SafeParcelWriter.l(parcel, 9, this.f8080w);
        SafeParcelWriter.c(parcel, 10, this.f8081x);
        SafeParcelWriter.c(parcel, 11, this.f8082y);
        SafeParcelWriter.l(parcel, 12, this.f8083z);
        SafeParcelWriter.l(parcel, 13, this.A);
        SafeParcelWriter.b(parcel, iA);
    }

    @Override // com.google.android.gms.games.Players.zza
    public final boolean x() {
        return this.f8076s;
    }

    @Override // com.google.android.gms.games.Players.zza
    public final boolean y() {
        return this.f8079v;
    }
}
