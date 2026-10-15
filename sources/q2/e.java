package q2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import q2.c;

/* JADX INFO: compiled from: DefaultConnectivityMonitor.java */
/* JADX INFO: loaded from: classes.dex */
class e implements c {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f33835o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final c.a f33836p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f33837q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f33838r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final BroadcastReceiver f33839s = new a();

    /* JADX INFO: compiled from: DefaultConnectivityMonitor.java */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z10 = e.this.f33837q;
            e eVar = e.this;
            eVar.f33837q = eVar.n(context);
            if (z10 != e.this.f33837q) {
                e.this.f33836p.a(e.this.f33837q);
            }
        }
    }

    public e(Context context, c.a aVar) {
        this.f33835o = context.getApplicationContext();
        this.f33836p = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    private void o() {
        if (this.f33838r) {
            return;
        }
        this.f33837q = n(this.f33835o);
        this.f33835o.registerReceiver(this.f33839s, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.f33838r = true;
    }

    private void p() {
        if (this.f33838r) {
            this.f33835o.unregisterReceiver(this.f33839s);
            this.f33838r = false;
        }
    }

    @Override // q2.h
    public void b() {
        o();
    }

    @Override // q2.h
    public void h() {
        p();
    }

    @Override // q2.h
    public void onDestroy() {
    }
}
