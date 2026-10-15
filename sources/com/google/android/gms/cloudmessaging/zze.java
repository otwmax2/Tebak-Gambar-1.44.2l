package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.cloudmessaging.zzf;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zze {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("MessengerIpcClient.class")
    private static zze f6886e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f6887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f6888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private c f6889c = new c(this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private int f6890d = 1;

    private zze(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f6888b = scheduledExecutorService;
        this.f6887a = context.getApplicationContext();
    }

    private final synchronized int a() {
        int i10;
        i10 = this.f6890d;
        this.f6890d = i10 + 1;
        return i10;
    }

    public static synchronized zze c(Context context) {
        if (f6886e == null) {
            f6886e = new zze(context, com.google.android.gms.internal.cloudmessaging.zza.a().a(1, new NamedThreadFactory("MessengerIpcClient"), zzf.f21672b));
        }
        return f6886e;
    }

    private final synchronized <T> Task<T> e(m<T> mVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(mVar);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 9);
            sb.append("Queueing ");
            sb.append(strValueOf);
            Log.d("MessengerIpcClient", sb.toString());
        }
        if (!this.f6889c.e(mVar)) {
            c cVar = new c(this);
            this.f6889c = cVar;
            cVar.e(mVar);
        }
        return mVar.f6871b.a();
    }

    public final Task<Void> d(int i10, Bundle bundle) {
        return e(new k(a(), 2, bundle));
    }

    public final Task<Bundle> f(int i10, Bundle bundle) {
        return e(new n(a(), 1, bundle));
    }
}
