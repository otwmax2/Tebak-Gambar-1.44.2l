package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;
import i1.j;
import i1.l;
import i1.t;

/* JADX INFO: loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f4458a = j.f("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        j.c().a(f4458a, "Requesting diagnostics", new Throwable[0]);
        try {
            t.e(context).b(l.d(DiagnosticsWorker.class));
        } catch (IllegalStateException e10) {
            j.c().b(f4458a, "WorkManager is not initialized", e10);
        }
    }
}
