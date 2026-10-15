package j1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import androidx.work.WorkerParameters;
import androidx.work.a;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.ForceStopRunnable;
import i1.j;
import i1.m;
import i1.p;
import i1.t;
import i1.u;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: WorkManagerImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class i extends t {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f30617j = i1.j.f("WorkManagerImpl");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static i f30618k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static i f30619l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Object f30620m = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f30621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private androidx.work.a f30622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WorkDatabase f30623c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private s1.a f30624d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<e> f30625e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f30626f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private r1.e f30627g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f30628h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private BroadcastReceiver.PendingResult f30629i;

    public i(Context context, androidx.work.a aVar, s1.a aVar2) {
        this(context, aVar, aVar2, context.getResources().getBoolean(p.f30368a));
    }

    public static void f(Context context, androidx.work.a aVar) {
        synchronized (f30620m) {
            i iVar = f30618k;
            if (iVar != null && f30619l != null) {
                throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
            }
            if (iVar == null) {
                Context applicationContext = context.getApplicationContext();
                if (f30619l == null) {
                    f30619l = new i(applicationContext, aVar, new s1.b(aVar.l()));
                }
                f30618k = f30619l;
            }
        }
    }

    @Deprecated
    public static i k() {
        synchronized (f30620m) {
            i iVar = f30618k;
            if (iVar != null) {
                return iVar;
            }
            return f30619l;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static i l(Context context) {
        i iVarK;
        synchronized (f30620m) {
            iVarK = k();
            if (iVarK == null) {
                Context applicationContext = context.getApplicationContext();
                if (!(applicationContext instanceof a.c)) {
                    throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                }
                f(applicationContext, ((a.c) applicationContext).a());
                iVarK = l(applicationContext);
            }
        }
        return iVarK;
    }

    private void r(Context context, androidx.work.a aVar, s1.a aVar2, WorkDatabase workDatabase, List<e> list, d dVar) {
        Context applicationContext = context.getApplicationContext();
        this.f30621a = applicationContext;
        this.f30622b = aVar;
        this.f30624d = aVar2;
        this.f30623c = workDatabase;
        this.f30625e = list;
        this.f30626f = dVar;
        this.f30627g = new r1.e(workDatabase);
        this.f30628h = false;
        if (Build.VERSION.SDK_INT >= 24 && applicationContext.isDeviceProtectedStorage()) {
            throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
        }
        this.f30624d.b(new ForceStopRunnable(applicationContext, this));
    }

    @Override // i1.t
    public m a(String str) {
        r1.a aVarD = r1.a.d(str, this);
        this.f30624d.b(aVarD);
        return aVarD.e();
    }

    @Override // i1.t
    public m c(List<? extends u> list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
        }
        return new g(this, list).a();
    }

    public m g(UUID uuid) {
        r1.a aVarB = r1.a.b(uuid, this);
        this.f30624d.b(aVarB);
        return aVarB.e();
    }

    public List<e> h(Context context, androidx.work.a aVar, s1.a aVar2) {
        return Arrays.asList(f.a(context, this), new k1.b(context, aVar, aVar2, this));
    }

    public Context i() {
        return this.f30621a;
    }

    public androidx.work.a j() {
        return this.f30622b;
    }

    public r1.e m() {
        return this.f30627g;
    }

    public d n() {
        return this.f30626f;
    }

    public List<e> o() {
        return this.f30625e;
    }

    public WorkDatabase p() {
        return this.f30623c;
    }

    public s1.a q() {
        return this.f30624d;
    }

    public void s() {
        synchronized (f30620m) {
            this.f30628h = true;
            BroadcastReceiver.PendingResult pendingResult = this.f30629i;
            if (pendingResult != null) {
                pendingResult.finish();
                this.f30629i = null;
            }
        }
    }

    public void t() {
        if (Build.VERSION.SDK_INT >= 23) {
            l1.b.b(i());
        }
        p().L().u();
        f.b(j(), p(), o());
    }

    public void u(BroadcastReceiver.PendingResult pendingResult) {
        synchronized (f30620m) {
            this.f30629i = pendingResult;
            if (this.f30628h) {
                pendingResult.finish();
                this.f30629i = null;
            }
        }
    }

    public void v(String str) {
        w(str, null);
    }

    public void w(String str, WorkerParameters.a aVar) {
        this.f30624d.b(new r1.h(this, str, aVar));
    }

    public void x(String str) {
        this.f30624d.b(new r1.i(this, str, true));
    }

    public void y(String str) {
        this.f30624d.b(new r1.i(this, str, false));
    }

    public i(Context context, androidx.work.a aVar, s1.a aVar2, boolean z10) {
        this(context, aVar, aVar2, WorkDatabase.C(context.getApplicationContext(), aVar2.getBackgroundExecutor(), z10));
    }

    public i(Context context, androidx.work.a aVar, s1.a aVar2, WorkDatabase workDatabase) {
        Context applicationContext = context.getApplicationContext();
        i1.j.e(new j.a(aVar.j()));
        List<e> listH = h(applicationContext, aVar, aVar2);
        r(context, aVar, aVar2, workDatabase, listH, new d(context, aVar, aVar2, workDatabase, listH));
    }
}
