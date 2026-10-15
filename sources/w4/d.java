package w4;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import v4.p;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class d<StateT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final v4.a f35987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final IntentFilter f35988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f35989c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final Set<a<StateT>> f35990d = new HashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f35991e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f35992f = false;

    protected d(v4.a aVar, IntentFilter intentFilter, Context context) {
        this.f35987a = aVar;
        this.f35988b = intentFilter;
        this.f35989c = p.a(context);
    }

    private final void b() {
        c cVar;
        if ((this.f35992f || !this.f35990d.isEmpty()) && this.f35991e == null) {
            c cVar2 = new c(this, null);
            this.f35991e = cVar2;
            this.f35989c.registerReceiver(cVar2, this.f35988b);
        }
        if (this.f35992f || !this.f35990d.isEmpty() || (cVar = this.f35991e) == null) {
            return;
        }
        this.f35989c.unregisterReceiver(cVar);
        this.f35991e = null;
    }

    protected abstract void a(Context context, Intent intent);

    public final synchronized void c(boolean z10) {
        this.f35992f = z10;
        b();
    }

    public final synchronized void d(StateT statet) {
        Iterator it = new HashSet(this.f35990d).iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(statet);
        }
    }

    public final synchronized boolean e() {
        return this.f35991e != null;
    }
}
