package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface Game extends Parcelable, Freezable<Game> {
    boolean C0();

    String I0();

    String J1();

    Uri O();

    Uri Q3();

    boolean U1();

    boolean a();

    String a1();

    boolean b();

    String c();

    boolean d();

    int d1();

    @Deprecated
    boolean e();

    @Deprecated
    boolean f();

    Uri g();

    String getApplicationId();

    String getDescription();

    @KeepName
    @Deprecated
    String getFeaturedImageUrl();

    @KeepName
    @Deprecated
    String getHiResImageUrl();

    @KeepName
    @Deprecated
    String getIconImageUrl();

    int m2();

    String n2();

    String s();

    boolean t3();
}
