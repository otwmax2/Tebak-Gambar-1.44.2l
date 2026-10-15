package com.google.android.gms.internal.appset;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-appset@@16.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzl implements AppSetIdClient {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AppSetIdClient f21225e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f21226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f21227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f21228c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ExecutorService f21229d;

    zzl(Context context) {
        this.f21227b = false;
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f21228c = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.f21229d = Executors.newSingleThreadExecutor();
        this.f21226a = context;
        if (this.f21227b) {
            return;
        }
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleAtFixedRate(new zzj(this, null), 0L, 86400L, TimeUnit.SECONDS);
        this.f21227b = true;
    }

    static synchronized AppSetIdClient d(Context context) {
        Preconditions.l(context, "Context must not be null");
        if (f21225e == null) {
            f21225e = new zzl(context.getApplicationContext());
        }
        return f21225e;
    }

    protected static final void f(Context context) {
        if (!g(context).edit().remove("app_set_id").commit()) {
            String strValueOf = String.valueOf(context.getPackageName());
            Log.e("AppSet", strValueOf.length() != 0 ? "Failed to clear app set ID generated for App ".concat(strValueOf) : new String("Failed to clear app set ID generated for App "));
        }
        if (g(context).edit().remove("app_set_id_last_used_time").commit()) {
            return;
        }
        String strValueOf2 = String.valueOf(context.getPackageName());
        Log.e("AppSet", strValueOf2.length() != 0 ? "Failed to clear app set ID last used time for App ".concat(strValueOf2) : new String("Failed to clear app set ID last used time for App "));
    }

    private static final SharedPreferences g(Context context) {
        return context.getSharedPreferences("app_set_id_storage", 0);
    }

    private static final void h(Context context) throws zzk {
        if (g(context).edit().putLong("app_set_id_last_used_time", DefaultClock.d().a()).commit()) {
            return;
        }
        String strValueOf = String.valueOf(context.getPackageName());
        Log.e("AppSet", strValueOf.length() != 0 ? "Failed to store app set ID last used time for App ".concat(strValueOf) : new String("Failed to store app set ID last used time for App "));
        throw new zzk("Failed to store the app set ID last used time.");
    }

    @Override // com.google.android.gms.appset.AppSetIdClient
    public final Task<AppSetIdInfo> a() {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f21229d.execute(new Runnable() { // from class: com.google.android.gms.internal.appset.zzh
            @Override // java.lang.Runnable
            public final void run() {
                this.f21222o.e(taskCompletionSource);
            }
        });
        return taskCompletionSource.a();
    }

    protected final long b() {
        long j10 = g(this.f21226a).getLong("app_set_id_last_used_time", -1L);
        if (j10 != -1) {
            return j10 + 33696000000L;
        }
        return -1L;
    }

    final /* synthetic */ void e(TaskCompletionSource taskCompletionSource) {
        String string = g(this.f21226a).getString("app_set_id", null);
        long jB = b();
        if (string == null || DefaultClock.d().a() > jB) {
            string = UUID.randomUUID().toString();
            try {
                Context context = this.f21226a;
                if (!g(context).edit().putString("app_set_id", string).commit()) {
                    String strValueOf = String.valueOf(context.getPackageName());
                    Log.e("AppSet", strValueOf.length() != 0 ? "Failed to store app set ID generated for App ".concat(strValueOf) : new String("Failed to store app set ID generated for App "));
                    throw new zzk("Failed to store the app set ID.");
                }
                h(context);
                Context context2 = this.f21226a;
                if (!g(context2).edit().putLong("app_set_id_creation_time", DefaultClock.d().a()).commit()) {
                    String strValueOf2 = String.valueOf(context2.getPackageName());
                    Log.e("AppSet", strValueOf2.length() != 0 ? "Failed to store app set ID creation time for App ".concat(strValueOf2) : new String("Failed to store app set ID creation time for App "));
                    throw new zzk("Failed to store the app set ID creation time.");
                }
            } catch (zzk e10) {
                taskCompletionSource.b(e10);
                return;
            }
        } else {
            try {
                h(this.f21226a);
            } catch (zzk e11) {
                taskCompletionSource.b(e11);
                return;
            }
        }
        taskCompletionSource.c(new AppSetIdInfo(string, 1));
    }
}
