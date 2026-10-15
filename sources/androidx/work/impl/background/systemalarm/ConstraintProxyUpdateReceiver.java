package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import i1.j;
import j1.i;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f4408a = j.f("ConstrntProxyUpdtRecvr");

    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Intent f4409o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Context f4410p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ BroadcastReceiver.PendingResult f4411q;

        a(Intent intent, Context context, BroadcastReceiver.PendingResult pendingResult) {
            this.f4409o = intent;
            this.f4410p = context;
            this.f4411q = pendingResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean booleanExtra = this.f4409o.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra2 = this.f4409o.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                boolean booleanExtra3 = this.f4409o.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra4 = this.f4409o.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                j.c().a(ConstraintProxyUpdateReceiver.f4408a, String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2), Boolean.valueOf(booleanExtra3), Boolean.valueOf(booleanExtra4)), new Throwable[0]);
                r1.d.a(this.f4410p, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                r1.d.a(this.f4410p, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                r1.d.a(this.f4410p, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                r1.d.a(this.f4410p, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                this.f4411q.finish();
            }
        }
    }

    public static Intent a(Context context, boolean z10, boolean z11, boolean z12, boolean z13) {
        Intent intent = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
        intent.setComponent(new ComponentName(context, (Class<?>) ConstraintProxyUpdateReceiver.class));
        intent.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z10).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z11).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z12).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z13);
        return intent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if ("androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            i.l(context).q().b(new a(intent, context, goAsync()));
        } else {
            j.c().a(f4408a, String.format("Ignoring unknown action %s", action), new Throwable[0]);
        }
    }
}
