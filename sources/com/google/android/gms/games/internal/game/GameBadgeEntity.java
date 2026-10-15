package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.DowngradeableSafeParcel;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class GameBadgeEntity extends GamesDowngradeableSafeParcel implements zza {
    public static final Parcelable.Creator<GameBadgeEntity> CREATOR = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private int f8056q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private String f8057r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private String f8058s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private Uri f8059t;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static final class a extends zzb {
        a() {
        }

        @Override // com.google.android.gms.games.internal.game.zzb
        /* JADX INFO: renamed from: a */
        public final GameBadgeEntity createFromParcel(Parcel parcel) {
            if (GamesDowngradeableSafeParcel.Y3(DowngradeableSafeParcel.W3()) || DowngradeableSafeParcel.V3(GameBadgeEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            int i10 = parcel.readInt();
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            return new GameBadgeEntity(i10, string, string2, string3 == null ? null : Uri.parse(string3));
        }

        @Override // com.google.android.gms.games.internal.game.zzb, android.os.Parcelable.Creator
        public final /* synthetic */ GameBadgeEntity createFromParcel(Parcel parcel) {
            return createFromParcel(parcel);
        }
    }

    @SafeParcelable.Constructor
    GameBadgeEntity(@SafeParcelable.Param int i10, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param Uri uri) {
        this.f8056q = i10;
        this.f8057r = str;
        this.f8058s = str2;
        this.f8059t = uri;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zza)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zza zzaVar = (zza) obj;
        return Objects.b(Integer.valueOf(zzaVar.o()), getTitle()) && Objects.b(zzaVar.getDescription(), g());
    }

    @Override // com.google.android.gms.games.internal.game.zza
    public final Uri g() {
        return this.f8059t;
    }

    @Override // com.google.android.gms.games.internal.game.zza
    public final String getDescription() {
        return this.f8058s;
    }

    @Override // com.google.android.gms.games.internal.game.zza
    public final String getTitle() {
        return this.f8057r;
    }

    public final int hashCode() {
        return Objects.c(Integer.valueOf(o()), getTitle(), getDescription(), g());
    }

    @Override // com.google.android.gms.games.internal.game.zza
    public final int o() {
        return this.f8056q;
    }

    public final String toString() {
        return Objects.d(this).a("Type", Integer.valueOf(o())).a("Title", getTitle()).a("Description", getDescription()).a("IconImageUri", g()).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        if (X3()) {
            parcel.writeInt(this.f8056q);
            parcel.writeString(this.f8057r);
            parcel.writeString(this.f8058s);
            Uri uri = this.f8059t;
            parcel.writeString(uri == null ? null : uri.toString());
            return;
        }
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f8056q);
        SafeParcelWriter.t(parcel, 2, this.f8057r, false);
        SafeParcelWriter.t(parcel, 3, this.f8058s, false);
        SafeParcelWriter.s(parcel, 4, this.f8059t, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
