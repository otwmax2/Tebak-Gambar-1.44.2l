package o1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import i1.j;

/* JADX INFO: compiled from: NetworkStateTracker.java */
/* JADX INFO: loaded from: classes.dex */
public class e extends d<m1.b> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final String f32895j = j.f("NetworkStateTracker");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ConnectivityManager f32896g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b f32897h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f32898i;

    /* JADX INFO: compiled from: NetworkStateTracker.java */
    private class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null || !intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                return;
            }
            j.c().a(e.f32895j, "Network broadcast received", new Throwable[0]);
            e eVar = e.this;
            eVar.d(eVar.g());
        }
    }

    /* JADX INFO: compiled from: NetworkStateTracker.java */
    private class b extends ConnectivityManager.NetworkCallback {
        b() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            j.c().a(e.f32895j, String.format("Network capabilities changed: %s", networkCapabilities), new Throwable[0]);
            e eVar = e.this;
            eVar.d(eVar.g());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            j.c().a(e.f32895j, "Network connection lost", new Throwable[0]);
            e eVar = e.this;
            eVar.d(eVar.g());
        }
    }

    public e(Context context, s1.a aVar) {
        super(context, aVar);
        this.f32896g = (ConnectivityManager) this.f32889b.getSystemService("connectivity");
        if (j()) {
            this.f32897h = new b();
        } else {
            this.f32898i = new a();
        }
    }

    private static boolean j() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @Override // o1.d
    public void e() {
        if (!j()) {
            j.c().a(f32895j, "Registering broadcast receiver", new Throwable[0]);
            this.f32889b.registerReceiver(this.f32898i, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            return;
        }
        try {
            j.c().a(f32895j, "Registering network callback", new Throwable[0]);
            this.f32896g.registerDefaultNetworkCallback(this.f32897h);
        } catch (IllegalArgumentException | SecurityException e10) {
            j.c().b(f32895j, "Received exception while registering network callback", e10);
        }
    }

    @Override // o1.d
    public void f() {
        if (!j()) {
            j.c().a(f32895j, "Unregistering broadcast receiver", new Throwable[0]);
            this.f32889b.unregisterReceiver(this.f32898i);
            return;
        }
        try {
            j.c().a(f32895j, "Unregistering network callback", new Throwable[0]);
            this.f32896g.unregisterNetworkCallback(this.f32897h);
        } catch (IllegalArgumentException | SecurityException e10) {
            j.c().b(f32895j, "Received exception while unregistering network callback", e10);
        }
    }

    m1.b g() {
        NetworkInfo activeNetworkInfo = this.f32896g.getActiveNetworkInfo();
        return new m1.b(activeNetworkInfo != null && activeNetworkInfo.isConnected(), i(), androidx.core.net.a.a(this.f32896g), (activeNetworkInfo == null || activeNetworkInfo.isRoaming()) ? false : true);
    }

    @Override // o1.d
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public m1.b b() {
        return g();
    }

    boolean i() {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        try {
            NetworkCapabilities networkCapabilities = this.f32896g.getNetworkCapabilities(this.f32896g.getActiveNetwork());
            if (networkCapabilities != null) {
                return networkCapabilities.hasCapability(16);
            }
            return false;
        } catch (SecurityException e10) {
            j.c().b(f32895j, "Unable to validate active network", e10);
            return false;
        }
    }
}
