package com.google.android.gms.games.event;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.games.Player;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public interface Event extends Parcelable, Freezable<Event> {
    String F3();

    Uri g();

    String getDescription();

    @KeepName
    @Deprecated
    String getIconImageUrl();

    String getName();

    long getValue();

    boolean isVisible();

    Player n0();

    String v2();
}
