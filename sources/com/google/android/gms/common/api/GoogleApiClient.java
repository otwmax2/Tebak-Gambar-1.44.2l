package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.SignInConnectionListener;
import com.google.android.gms.common.api.internal.zada;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@Deprecated
public abstract class GoogleApiClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("sAllClients")
    private static final Set<GoogleApiClient> f6966a = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    @Deprecated
    public static final class Builder {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @Deprecated
    public interface ConnectionCallbacks extends com.google.android.gms.common.api.internal.ConnectionCallbacks {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @Deprecated
    public interface OnConnectionFailedListener extends com.google.android.gms.common.api.internal.OnConnectionFailedListener {
    }

    @KeepForSdk
    public static Set<GoogleApiClient> i() {
        Set<GoogleApiClient> set = f6966a;
        synchronized (set) {
        }
        return set;
    }

    public abstract void d();

    public abstract void e();

    public abstract void f(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    @KeepForSdk
    public <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T g(T t10) {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T h(T t10) {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public Looper j() {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public boolean k(SignInConnectionListener signInConnectionListener) {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public void l() {
        throw new UnsupportedOperationException();
    }

    public abstract void m(OnConnectionFailedListener onConnectionFailedListener);

    public void n(zada zadaVar) {
        throw new UnsupportedOperationException();
    }
}
