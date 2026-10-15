package com.vungle.warren.utility;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.core.content.b;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkProvider {
    public static final int TYPE_NONE = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f28561i = "NetworkProvider";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static NetworkProvider f28562j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f28563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConnectivityManager f28564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicInteger f28565c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ConnectivityManager.NetworkCallback f28566d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set<NetworkListener> f28567e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f28568f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Handler f28569g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Runnable f28570h;

    public interface NetworkListener {
        void onChanged(int i10);
    }

    private NetworkProvider(Context context) {
        AtomicInteger atomicInteger = new AtomicInteger();
        this.f28565c = atomicInteger;
        this.f28567e = new CopyOnWriteArraySet();
        this.f28569g = new Handler(Looper.getMainLooper());
        this.f28570h = new Runnable() { // from class: com.vungle.warren.utility.NetworkProvider.3
            @Override // java.lang.Runnable
            public void run() {
                if (NetworkProvider.this.f28567e.isEmpty()) {
                    return;
                }
                NetworkProvider.this.onNetworkChanged();
                NetworkProvider.this.f28569g.postDelayed(NetworkProvider.this.f28570h, 30000L);
            }
        };
        Context applicationContext = context.getApplicationContext();
        this.f28563a = applicationContext;
        this.f28564b = (ConnectivityManager) applicationContext.getSystemService("connectivity");
        atomicInteger.set(getCurrentNetworkType());
    }

    @SuppressLint({"newApi"})
    private ConnectivityManager.NetworkCallback d() {
        ConnectivityManager.NetworkCallback networkCallback = this.f28566d;
        if (networkCallback != null) {
            return networkCallback;
        }
        ConnectivityManager.NetworkCallback networkCallback2 = new ConnectivityManager.NetworkCallback() { // from class: com.vungle.warren.utility.NetworkProvider.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                super.onAvailable(network);
                NetworkProvider.this.onNetworkChanged();
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                super.onLost(network);
                NetworkProvider.this.onNetworkChanged();
            }
        };
        this.f28566d = networkCallback2;
        return networkCallback2;
    }

    private void e(final int i10) {
        this.f28569g.post(new Runnable() { // from class: com.vungle.warren.utility.NetworkProvider.2
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = NetworkProvider.this.f28567e.iterator();
                while (it.hasNext()) {
                    ((NetworkListener) it.next()).onChanged(i10);
                }
            }
        });
    }

    @SuppressLint({"newApi"})
    private synchronized void f(boolean z10) {
        if (this.f28568f == z10) {
            return;
        }
        this.f28568f = z10;
        ConnectivityManager connectivityManager = this.f28564b;
        if (connectivityManager != null) {
            try {
                if (z10) {
                    NetworkRequest.Builder builder = new NetworkRequest.Builder();
                    builder.addCapability(12);
                    this.f28564b.registerNetworkCallback(builder.build(), d());
                } else {
                    connectivityManager.unregisterNetworkCallback(d());
                }
            } catch (Exception e10) {
                Log.e(f28561i, e10.getMessage());
            }
        }
    }

    public static synchronized NetworkProvider getInstance(Context context) {
        if (f28562j == null) {
            f28562j = new NetworkProvider(context);
        }
        return f28562j;
    }

    public void addListener(NetworkListener networkListener) {
        this.f28567e.add(networkListener);
        f(true);
    }

    public int getCurrentNetworkType() {
        int type = -1;
        if (this.f28564b == null || b.a(this.f28563a, "android.permission.ACCESS_NETWORK_STATE") != 0) {
            this.f28565c.set(-1);
            return -1;
        }
        NetworkInfo activeNetworkInfo = this.f28564b.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
            type = activeNetworkInfo.getType();
        }
        int andSet = this.f28565c.getAndSet(type);
        if (type != andSet) {
            Log.d(f28561i, "on network changed: " + andSet + "->" + type);
            e(type);
        }
        f(!this.f28567e.isEmpty());
        return type;
    }

    public void onNetworkChanged() {
        getCurrentNetworkType();
    }

    public void removeListener(NetworkListener networkListener) {
        this.f28567e.remove(networkListener);
        f(!this.f28567e.isEmpty());
    }
}
