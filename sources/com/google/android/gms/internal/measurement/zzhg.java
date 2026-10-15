package com.google.android.gms.internal.measurement;

import android.net.Uri;
import com.vungle.mediation.BuildConfig;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f23531a;

    zzhg(Map map) {
        this.f23531a = map;
    }

    @Nullable
    public final String a(@Nullable Uri uri, @Nullable String str, @Nullable String str2, String str3) {
        if (uri == null) {
            return null;
        }
        Map map = (Map) this.f23531a.get(uri.toString());
        if (map == null) {
            return null;
        }
        return (String) map.get(BuildConfig.FLAVOR.concat(String.valueOf(str3)));
    }
}
