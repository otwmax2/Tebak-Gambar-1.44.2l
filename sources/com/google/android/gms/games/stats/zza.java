package com.google.android.gms.games.stats;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.Asserts;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zza extends DataBufferRef implements PlayerStats {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Bundle f8261r;

    zza(DataHolder dataHolder, int i10) {
        super(dataHolder, i10);
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final Bundle A1() {
        Bundle bundle = this.f8261r;
        if (bundle != null) {
            return bundle;
        }
        this.f8261r = new Bundle();
        String strX = x("unknown_raw_keys");
        String strX2 = x("unknown_raw_values");
        if (strX != null && strX2 != null) {
            String[] strArrSplit = strX.split(",");
            String[] strArrSplit2 = strX2.split(",");
            Asserts.c(strArrSplit.length <= strArrSplit2.length, "Invalid raw arguments!");
            for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                this.f8261r.putString(strArrSplit[i10], strArrSplit2[i10]);
            }
        }
        return this.f8261r;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final float G0() {
        return t("spend_percentile");
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final float T3() {
        return t("ave_session_length_minutes");
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final float U() {
        return t("churn_probability");
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final float Z0() {
        if (y("total_spend_next_28_days")) {
            return t("total_spend_next_28_days");
        }
        return -1.0f;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final float e2() {
        return t("num_sessions_percentile");
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final boolean equals(Object obj) {
        return PlayerStatsEntity.W3(this, obj);
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final int hashCode() {
        return PlayerStatsEntity.V3(this);
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final float j2() {
        if (y("spend_probability")) {
            return t("spend_probability");
        }
        return -1.0f;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final int k2() {
        return v("num_purchases");
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* synthetic */ PlayerStats p3() {
        return new PlayerStatsEntity(this);
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final float r3() {
        if (y("high_spender_probability")) {
            return t("high_spender_probability");
        }
        return -1.0f;
    }

    public final String toString() {
        return PlayerStatsEntity.X3(this);
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final int u3() {
        return v("days_since_last_played");
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final int v0() {
        return v("num_sessions");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        ((PlayerStatsEntity) ((PlayerStats) p3())).writeToParcel(parcel, i10);
    }
}
