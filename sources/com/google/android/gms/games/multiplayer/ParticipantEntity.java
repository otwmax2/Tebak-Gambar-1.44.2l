package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.DowngradeableSafeParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.RetainForClient;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@RetainForClient
@SafeParcelable.Class
@SafeParcelable.Reserved
@Deprecated
public final class ParticipantEntity extends GamesDowngradeableSafeParcel {
    public static final Parcelable.Creator<ParticipantEntity> CREATOR = new a();

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
    static final class a extends zza {
        a() {
        }

        @Override // com.google.android.gms.games.multiplayer.zza
        /* JADX INFO: renamed from: a */
        public final ParticipantEntity createFromParcel(Parcel parcel) {
            return (GamesDowngradeableSafeParcel.Y3(DowngradeableSafeParcel.W3()) || DowngradeableSafeParcel.V3(ParticipantEntity.class.getCanonicalName())) ? super.createFromParcel(parcel) : new ParticipantEntity();
        }

        @Override // com.google.android.gms.games.multiplayer.zza, android.os.Parcelable.Creator
        public final /* synthetic */ ParticipantEntity createFromParcel(Parcel parcel) {
            return createFromParcel(parcel);
        }
    }

    @SafeParcelable.Constructor
    ParticipantEntity() {
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        if (!X3()) {
            SafeParcelWriter.b(parcel, SafeParcelWriter.a(parcel));
            return;
        }
        parcel.writeString("unsupported");
        parcel.writeString("unsupported");
        parcel.writeString(null);
        parcel.writeString(null);
        parcel.writeInt(0);
        parcel.writeString("unsupported");
        parcel.writeInt(0);
        parcel.writeInt(0);
    }
}
