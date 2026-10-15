package com.google.android.gms.ads.internal.client;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbfw;
import com.google.android.gms.internal.ads.zzbfx;
import com.google.android.gms.internal.ads.zzbqz;
import com.google.android.gms.internal.ads.zzbvi;
import com.google.android.gms.internal.ads.zzbyt;
import com.google.android.gms.internal.ads.zzbzg;
import java.util.Random;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzay {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final zzay f5786f = new zzay();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbyt f5787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzaw f5788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5789c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbzg f5790d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Random f5791e;

    protected zzay() {
        zzbyt zzbytVar = new zzbyt();
        zzaw zzawVar = new zzaw(new zzk(), new zzi(), new zzeq(), new zzbfw(), new zzbvi(), new zzbqz(), new zzbfx());
        String strI = zzbyt.i();
        zzbzg zzbzgVar = new zzbzg(0, ModuleDescriptor.MODULE_VERSION, true, false, false);
        Random random = new Random();
        this.f5787a = zzbytVar;
        this.f5788b = zzawVar;
        this.f5789c = strI;
        this.f5790d = zzbzgVar;
        this.f5791e = random;
    }

    public static zzaw a() {
        return f5786f.f5788b;
    }

    public static zzbyt b() {
        return f5786f.f5787a;
    }

    public static zzbzg c() {
        return f5786f.f5790d;
    }

    public static String d() {
        return f5786f.f5789c;
    }

    public static Random e() {
        return f5786f.f5791e;
    }
}
