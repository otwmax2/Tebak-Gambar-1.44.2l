package com.google.android.gms.games.internal.experience;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.games.Game;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public interface ExperienceEvent extends Parcelable, Freezable<ExperienceEvent> {
    String I();

    long O0();

    long T();

    Uri g();

    @KeepName
    @Deprecated
    String getIconImageUrl();

    String i0();

    String j1();

    long k3();

    int o();

    int s2();

    Game u();
}
