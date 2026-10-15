package s3;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;

/* JADX INFO: compiled from: AlarmManagerScheduler.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f34480a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t3.d f34481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AlarmManager f34482c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g f34483d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final v3.a f34484e;

    public a(Context context, t3.d dVar, v3.a aVar, g gVar) {
        this(context, dVar, (AlarmManager) context.getSystemService("alarm"), aVar, gVar);
    }

    @Override // s3.y
    public void a(l3.p pVar, int i10, boolean z10) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter("backendName", pVar.b());
        builder.appendQueryParameter("priority", String.valueOf(w3.a.a(pVar.d())));
        if (pVar.c() != null) {
            builder.appendQueryParameter("extras", Base64.encodeToString(pVar.c(), 0));
        }
        Intent intent = new Intent(this.f34480a, (Class<?>) AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra("attemptNumber", i10);
        if (!z10 && c(intent)) {
            p3.a.b("AlarmManagerScheduler", "Upload for context %s is already scheduled. Returning...", pVar);
            return;
        }
        long jB1 = this.f34481b.B1(pVar);
        long jG = this.f34483d.g(pVar.d(), jB1, i10);
        p3.a.c("AlarmManagerScheduler", "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d", pVar, Long.valueOf(jG), Long.valueOf(jB1), Integer.valueOf(i10));
        this.f34482c.set(3, this.f34484e.a() + jG, PendingIntent.getBroadcast(this.f34480a, 0, intent, Build.VERSION.SDK_INT >= 23 ? 67108864 : 0));
    }

    @Override // s3.y
    public void b(l3.p pVar, int i10) {
        a(pVar, i10, false);
    }

    boolean c(Intent intent) {
        return PendingIntent.getBroadcast(this.f34480a, 0, intent, Build.VERSION.SDK_INT >= 23 ? 603979776 : 536870912) != null;
    }

    a(Context context, t3.d dVar, AlarmManager alarmManager, v3.a aVar, g gVar) {
        this.f34480a = context;
        this.f34481b = dVar;
        this.f34482c = alarmManager;
        this.f34484e = aVar;
        this.f34483d = gVar;
    }
}
