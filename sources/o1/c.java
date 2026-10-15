package o1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import i1.j;

/* JADX INFO: compiled from: BroadcastReceiverConstraintTracker.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c<T> extends d<T> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f32884h = j.f("BrdcstRcvrCnstrntTrckr");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final BroadcastReceiver f32885g;

    /* JADX INFO: compiled from: BroadcastReceiverConstraintTracker.java */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                c.this.h(context, intent);
            }
        }
    }

    public c(Context context, s1.a aVar) {
        super(context, aVar);
        this.f32885g = new a();
    }

    @Override // o1.d
    public void e() {
        j.c().a(f32884h, String.format("%s: registering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f32889b.registerReceiver(this.f32885g, g());
    }

    @Override // o1.d
    public void f() {
        j.c().a(f32884h, String.format("%s: unregistering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f32889b.unregisterReceiver(this.f32885g);
    }

    public abstract IntentFilter g();

    public abstract void h(Context context, Intent intent);
}
