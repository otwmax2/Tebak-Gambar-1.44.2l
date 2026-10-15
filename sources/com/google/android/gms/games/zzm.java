package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzm extends com.google.android.gms.games.internal.zzb implements PlayerRelationshipInfo {
    public static final Parcelable.Creator<zzm> CREATOR = new zzl();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private int f8279o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private String f8280p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private String f8281q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private String f8282r;

    public zzm(PlayerRelationshipInfo playerRelationshipInfo) {
        this.f8279o = playerRelationshipInfo.H0();
        this.f8280p = playerRelationshipInfo.r();
        this.f8281q = playerRelationshipInfo.p();
        this.f8282r = playerRelationshipInfo.q();
    }

    static int V3(PlayerRelationshipInfo playerRelationshipInfo) {
        return Objects.c(Integer.valueOf(playerRelationshipInfo.H0()), playerRelationshipInfo.r(), playerRelationshipInfo.p(), playerRelationshipInfo.q());
    }

    static boolean W3(PlayerRelationshipInfo playerRelationshipInfo, Object obj) {
        if (!(obj instanceof PlayerRelationshipInfo)) {
            return false;
        }
        if (obj == playerRelationshipInfo) {
            return true;
        }
        PlayerRelationshipInfo playerRelationshipInfo2 = (PlayerRelationshipInfo) obj;
        return playerRelationshipInfo2.H0() == playerRelationshipInfo.H0() && Objects.b(playerRelationshipInfo2.r(), playerRelationshipInfo.r()) && Objects.b(playerRelationshipInfo2.p(), playerRelationshipInfo.p()) && Objects.b(playerRelationshipInfo2.q(), playerRelationshipInfo.q());
    }

    static String X3(PlayerRelationshipInfo playerRelationshipInfo) {
        Objects.ToStringHelper toStringHelperD = Objects.d(playerRelationshipInfo);
        toStringHelperD.a("FriendStatus", Integer.valueOf(playerRelationshipInfo.H0()));
        if (playerRelationshipInfo.r() != null) {
            toStringHelperD.a("Nickname", playerRelationshipInfo.r());
        }
        if (playerRelationshipInfo.p() != null) {
            toStringHelperD.a("InvitationNickname", playerRelationshipInfo.p());
        }
        if (playerRelationshipInfo.q() != null) {
            toStringHelperD.a("NicknameAbuseReportToken", playerRelationshipInfo.p());
        }
        return toStringHelperD.toString();
    }

    @Override // com.google.android.gms.games.PlayerRelationshipInfo
    public final int H0() {
        return this.f8279o;
    }

    public final boolean equals(Object obj) {
        return W3(this, obj);
    }

    public final int hashCode() {
        return V3(this);
    }

    @Override // com.google.android.gms.games.PlayerRelationshipInfo
    public final String p() {
        return this.f8281q;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ PlayerRelationshipInfo p3() {
        return this;
    }

    @Override // com.google.android.gms.games.PlayerRelationshipInfo
    public final String q() {
        return this.f8282r;
    }

    @Override // com.google.android.gms.games.PlayerRelationshipInfo
    public final String r() {
        return this.f8280p;
    }

    public final String toString() {
        return X3(this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, H0());
        SafeParcelWriter.t(parcel, 2, this.f8280p, false);
        SafeParcelWriter.t(parcel, 3, this.f8281q, false);
        SafeParcelWriter.t(parcel, 4, this.f8282r, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    public zzm(@SafeParcelable.Param int i10, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3) {
        this.f8279o = i10;
        this.f8280p = str;
        this.f8281q = str2;
        this.f8282r = str3;
    }
}
