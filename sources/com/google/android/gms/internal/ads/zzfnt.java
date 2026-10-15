package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfnt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f18485a = Logger.getLogger(zzfnt.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzfns f18486b = new zzfns(null);

    private zzfnt() {
    }

    static String a(@CheckForNull String str) {
        return str == null ? BuildConfig.FLAVOR : str;
    }

    static boolean b(@CheckForNull String str) {
        return str == null || str.isEmpty();
    }
}
