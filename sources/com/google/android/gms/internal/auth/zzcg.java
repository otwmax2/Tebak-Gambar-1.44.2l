package com.google.android.gms.internal.auth;

import android.net.Uri;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import o.a;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcg implements zzck {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<Uri, zzcg> f21408d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String[] f21409e = {SDKConstants.PARAM_KEY, SDKConstants.PARAM_VALUE};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f21410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Map<String, String> f21411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<zzch> f21412c;

    public final void a() {
        synchronized (this.f21410a) {
            this.f21411b = null;
            zzcz.a();
        }
        synchronized (this) {
            Iterator<zzch> it = this.f21412c.iterator();
            while (it.hasNext()) {
                it.next().zza();
            }
        }
    }
}
