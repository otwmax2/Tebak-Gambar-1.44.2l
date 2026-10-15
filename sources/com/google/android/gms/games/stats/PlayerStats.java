package com.google.android.gms.games.stats;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface PlayerStats extends Parcelable, Freezable<PlayerStats> {
    Bundle A1();

    float G0();

    float T3();

    @Deprecated
    float U();

    @Deprecated
    float Z0();

    float e2();

    @Deprecated
    float j2();

    int k2();

    @Deprecated
    float r3();

    int u3();

    int v0();
}
