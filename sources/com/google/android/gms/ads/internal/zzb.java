package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbst;
import com.google.android.gms.internal.ads.zzbwb;
import com.vungle.mediation.BuildConfig;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f6203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f6204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbwb f6205c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbst f6206d = new zzbst(false, Collections.emptyList());

    public zzb(Context context, zzbwb zzbwbVar, zzbst zzbstVar) {
        this.f6203a = context;
        this.f6205c = zzbwbVar;
    }

    private final boolean d() {
        zzbwb zzbwbVar = this.f6205c;
        return (zzbwbVar != null && zzbwbVar.zza().f11406t) || this.f6206d.f11256o;
    }

    public final void a() {
        this.f6204b = true;
    }

    public final void b(String str) {
        List<String> list;
        if (d()) {
            if (str == null) {
                str = BuildConfig.FLAVOR;
            }
            zzbwb zzbwbVar = this.f6205c;
            if (zzbwbVar != null) {
                zzbwbVar.a(str, null, 3);
                return;
            }
            zzbst zzbstVar = this.f6206d;
            if (!zzbstVar.f11256o || (list = zzbstVar.f11257p) == null) {
                return;
            }
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2)) {
                    String strReplace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                    zzt.r();
                    com.google.android.gms.ads.internal.util.zzs.h(this.f6203a, BuildConfig.FLAVOR, strReplace);
                }
            }
        }
    }

    public final boolean c() {
        return !d() || this.f6204b;
    }
}
