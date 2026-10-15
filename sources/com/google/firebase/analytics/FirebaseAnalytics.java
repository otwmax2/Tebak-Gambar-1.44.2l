package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzee;
import com.google.android.gms.measurement.internal.zzio;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.installations.c;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class FirebaseAnalytics {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile FirebaseAnalytics f26233b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzee f26234a;

    public FirebaseAnalytics(zzee zzeeVar) {
        Preconditions.k(zzeeVar);
        this.f26234a = zzeeVar;
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (f26233b == null) {
            synchronized (FirebaseAnalytics.class) {
                if (f26233b == null) {
                    f26233b = new FirebaseAnalytics(zzee.v(context, null, null, null, null));
                }
            }
        }
        return f26233b;
    }

    @Keep
    public static zzio getScionFrontendApiImplementation(Context context, Bundle bundle) {
        zzee zzeeVarV = zzee.v(context, null, null, null, bundle);
        if (zzeeVarV == null) {
            return null;
        }
        return new a(zzeeVarV);
    }

    public void a(String str, Bundle bundle) {
        this.f26234a.K(str, bundle);
    }

    public void b(String str) {
        this.f26234a.g(str);
    }

    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) Tasks.b(c.q().a(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            throw new IllegalStateException(e10);
        } catch (ExecutionException e11) {
            throw new IllegalStateException(e11.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Keep
    @Deprecated
    public void setCurrentScreen(Activity activity, String str, String str2) {
        this.f26234a.e(activity, str, str2);
    }
}
