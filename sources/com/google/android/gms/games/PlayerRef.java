package com.google.android.gms.games;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ParcelCreator"})
public final class PlayerRef extends zzh implements Player {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final com.google.android.gms.games.internal.player.zzd f8011r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final PlayerLevelInfo f8012s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final com.google.android.gms.games.internal.player.zzb f8013t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzn f8014u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzb f8015v;

    public PlayerRef(DataHolder dataHolder, int i10) {
        this(dataHolder, i10, null);
    }

    @Override // com.google.android.gms.games.Player
    public final PlayerLevelInfo F1() {
        return this.f8012s;
    }

    @Override // com.google.android.gms.games.Player
    public final PlayerRelationshipInfo H2() {
        zzn zznVar = this.f8014u;
        if ((zznVar.H0() == -1 && zznVar.r() == null && zznVar.p() == null) ? false : true) {
            return this.f8014u;
        }
        return null;
    }

    @Override // com.google.android.gms.games.Player
    public final long J0() {
        return w(this.f8011r.f8093g);
    }

    @Override // com.google.android.gms.games.Player
    public final String J3() {
        return x(this.f8011r.f8087a);
    }

    @Override // com.google.android.gms.games.Player
    public final Uri N0() {
        return A(this.f8011r.E);
    }

    @Override // com.google.android.gms.games.Player
    public final Uri O() {
        return A(this.f8011r.f8091e);
    }

    @Override // com.google.android.gms.games.Player
    public final Uri a0() {
        return A(this.f8011r.C);
    }

    @Override // com.google.android.gms.games.Player
    public final CurrentPlayerInfo b1() {
        if (this.f8015v.E()) {
            return this.f8015v;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final boolean equals(Object obj) {
        return PlayerEntity.b4(this, obj);
    }

    @Override // com.google.android.gms.games.Player
    public final Uri g() {
        return A(this.f8011r.f8089c);
    }

    @Override // com.google.android.gms.games.Player
    public final String getBannerImageLandscapeUrl() {
        return x(this.f8011r.D);
    }

    @Override // com.google.android.gms.games.Player
    public final String getBannerImagePortraitUrl() {
        return x(this.f8011r.F);
    }

    @Override // com.google.android.gms.games.Player
    public final String getHiResImageUrl() {
        return x(this.f8011r.f8092f);
    }

    @Override // com.google.android.gms.games.Player
    public final String getIconImageUrl() {
        return x(this.f8011r.f8090d);
    }

    @Override // com.google.android.gms.games.Player
    public final String getName() {
        return x(this.f8011r.B);
    }

    @Override // com.google.android.gms.games.Player
    public final String getTitle() {
        return x(this.f8011r.f8103q);
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final int hashCode() {
        return PlayerEntity.a4(this);
    }

    @Override // com.google.android.gms.games.Player
    public final String i() {
        return x(this.f8011r.A);
    }

    @Override // com.google.android.gms.games.Player
    public final boolean j() {
        return h(this.f8011r.f8112z);
    }

    @Override // com.google.android.gms.games.Player
    public final boolean k() {
        return h(this.f8011r.f8105s);
    }

    @Override // com.google.android.gms.games.Player
    public final int l() {
        return v(this.f8011r.f8094h);
    }

    @Override // com.google.android.gms.games.Player
    public final com.google.android.gms.games.internal.player.zza m() {
        if (z(this.f8011r.f8106t)) {
            return null;
        }
        return this.f8013t;
    }

    @Override // com.google.android.gms.games.Player
    public final long n() {
        String str = this.f8011r.J;
        if (!y(str) || z(str)) {
            return -1L;
        }
        return w(str);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* synthetic */ Player p3() {
        return new PlayerEntity(this);
    }

    @Override // com.google.android.gms.games.Player
    public final String s() {
        return x(this.f8011r.f8088b);
    }

    public final String toString() {
        return PlayerEntity.e4(this);
    }

    @Override // com.google.android.gms.games.Player
    public final long v1() {
        if (!y(this.f8011r.f8095i) || z(this.f8011r.f8095i)) {
            return -1L;
        }
        return w(this.f8011r.f8095i);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        ((PlayerEntity) ((Player) p3())).writeToParcel(parcel, i10);
    }

    private PlayerRef(DataHolder dataHolder, int i10, String str) {
        super(dataHolder, i10);
        com.google.android.gms.games.internal.player.zzd zzdVar = new com.google.android.gms.games.internal.player.zzd(null);
        this.f8011r = zzdVar;
        this.f8013t = new com.google.android.gms.games.internal.player.zzb(dataHolder, i10, zzdVar);
        this.f8014u = new zzn(dataHolder, i10, zzdVar);
        this.f8015v = new zzb(dataHolder, i10, zzdVar);
        if (!((z(zzdVar.f8096j) || w(zzdVar.f8096j) == -1) ? false : true)) {
            this.f8012s = null;
            return;
        }
        int iV = v(zzdVar.f8097k);
        int iV2 = v(zzdVar.f8100n);
        PlayerLevel playerLevel = new PlayerLevel(iV, w(zzdVar.f8098l), w(zzdVar.f8099m));
        this.f8012s = new PlayerLevelInfo(w(zzdVar.f8096j), w(zzdVar.f8102p), playerLevel, iV != iV2 ? new PlayerLevel(iV2, w(zzdVar.f8099m), w(zzdVar.f8101o)) : playerLevel);
    }
}
