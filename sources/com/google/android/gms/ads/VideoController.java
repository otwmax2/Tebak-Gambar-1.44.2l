package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzfk;
import com.google.android.gms.internal.ads.zzbza;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class VideoController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5626a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("lock")
    private zzdq f5627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("lock")
    private VideoLifecycleCallbacks f5628c;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public static abstract class VideoLifecycleCallbacks {
        public void a() {
        }

        public void b(boolean z10) {
        }

        public void c() {
        }

        public void d() {
        }

        public void e() {
        }
    }

    public void a(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        zzfk zzfkVar;
        synchronized (this.f5626a) {
            this.f5628c = videoLifecycleCallbacks;
            zzdq zzdqVar = this.f5627b;
            if (zzdqVar != null) {
                if (videoLifecycleCallbacks == null) {
                    zzfkVar = null;
                } else {
                    try {
                        zzfkVar = new zzfk(videoLifecycleCallbacks);
                    } catch (RemoteException e10) {
                        zzbza.e("Unable to call setVideoLifecycleCallbacks on video controller.", e10);
                    }
                }
                zzdqVar.W1(zzfkVar);
            }
        }
    }

    public final zzdq b() {
        zzdq zzdqVar;
        synchronized (this.f5626a) {
            zzdqVar = this.f5627b;
        }
        return zzdqVar;
    }

    public final void c(zzdq zzdqVar) {
        synchronized (this.f5626a) {
            this.f5627b = zzdqVar;
            VideoLifecycleCallbacks videoLifecycleCallbacks = this.f5628c;
            if (videoLifecycleCallbacks != null) {
                a(videoLifecycleCallbacks);
            }
        }
    }
}
