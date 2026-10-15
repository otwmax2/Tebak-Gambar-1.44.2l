package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzatz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f9945a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("activityTrackerLock")
    private zzatx f9946b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("activityTrackerLock")
    private boolean f9947c = false;

    public final Activity a() {
        synchronized (this.f9945a) {
            zzatx zzatxVar = this.f9946b;
            if (zzatxVar == null) {
                return null;
            }
            return zzatxVar.a();
        }
    }

    public final Context b() {
        synchronized (this.f9945a) {
            zzatx zzatxVar = this.f9946b;
            if (zzatxVar == null) {
                return null;
            }
            return zzatxVar.b();
        }
    }

    public final void c(zzaty zzatyVar) {
        synchronized (this.f9945a) {
            if (this.f9946b == null) {
                this.f9946b = new zzatx();
            }
            this.f9946b.f(zzatyVar);
        }
    }

    public final void d(Context context) {
        synchronized (this.f9945a) {
            if (!this.f9947c) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = context;
                }
                Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                if (application == null) {
                    zzbza.g("Can not cast Context to Application");
                    return;
                }
                if (this.f9946b == null) {
                    this.f9946b = new zzatx();
                }
                this.f9946b.g(application, context);
                this.f9947c = true;
            }
        }
    }

    public final void e(zzaty zzatyVar) {
        synchronized (this.f9945a) {
            zzatx zzatxVar = this.f9946b;
            if (zzatxVar == null) {
                return;
            }
            zzatxVar.h(zzatyVar);
        }
    }
}
