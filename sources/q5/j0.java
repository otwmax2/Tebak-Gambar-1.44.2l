package q5;

import android.app.ApplicationExitInfo;
import android.content.Context;
import com.facebook.internal.Utility;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.concurrent.Executor;
import s5.f0;

/* JADX INFO: compiled from: SessionReportingCoordinator.java */
/* JADX INFO: loaded from: classes2.dex */
public class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t f33916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v5.e f33917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w5.b f33918c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final r5.e f33919d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final r5.m f33920e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f33921f;

    j0(t tVar, v5.e eVar, w5.b bVar, r5.e eVar2, r5.m mVar, b0 b0Var) {
        this.f33916a = tVar;
        this.f33917b = eVar;
        this.f33918c = bVar;
        this.f33919d = eVar2;
        this.f33920e = mVar;
        this.f33921f = b0Var;
    }

    private f0.e.d c(f0.e.d dVar, r5.e eVar, r5.m mVar) {
        f0.e.d.b bVarH = dVar.h();
        String strC = eVar.c();
        if (strC != null) {
            bVarH.d(f0.e.d.AbstractC0245d.a().b(strC).a());
        } else {
            n5.g.f().i("No log data to include with this event.");
        }
        List<f0.c> listM = m(mVar.e());
        List<f0.c> listM2 = m(mVar.f());
        if (!listM.isEmpty() || !listM2.isEmpty()) {
            bVarH.b(dVar.b().i().e(listM).g(listM2).a());
        }
        return bVarH.a();
    }

    private f0.e.d d(f0.e.d dVar) {
        return e(c(dVar, this.f33919d, this.f33920e), this.f33920e);
    }

    private f0.e.d e(f0.e.d dVar, r5.m mVar) {
        List<f0.e.d.AbstractC0246e> listG = mVar.g();
        if (listG.isEmpty()) {
            return dVar;
        }
        f0.e.d.b bVarH = dVar.h();
        bVarH.e(f0.e.d.f.a().b(listG).a());
        return bVarH.a();
    }

    private static f0.a f(ApplicationExitInfo applicationExitInfo) {
        String strG = null;
        try {
            InputStream traceInputStream = applicationExitInfo.getTraceInputStream();
            if (traceInputStream != null) {
                strG = g(traceInputStream);
            }
        } catch (IOException e10) {
            n5.g.f().k("Could not get input trace in application exit info: " + applicationExitInfo.toString() + " Error: " + e10);
        }
        return f0.a.a().c(applicationExitInfo.getImportance()).e(applicationExitInfo.getProcessName()).g(applicationExitInfo.getReason()).i(applicationExitInfo.getTimestamp()).d(applicationExitInfo.getPid()).f(applicationExitInfo.getPss()).h(applicationExitInfo.getRss()).j(strG).a();
    }

    public static String g(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    public static j0 h(Context context, b0 b0Var, v5.f fVar, a aVar, r5.e eVar, r5.m mVar, y5.d dVar, x5.i iVar, g0 g0Var, m mVar2) {
        return new j0(new t(context, b0Var, aVar, dVar, iVar), new v5.e(fVar, iVar, mVar2), w5.b.b(context, iVar, g0Var), eVar, mVar, b0Var);
    }

    private u i(u uVar) {
        if (uVar.b().g() != null) {
            return uVar;
        }
        return u.a(uVar.b().r(this.f33921f.d()), uVar.d(), uVar.c());
    }

    private ApplicationExitInfo l(String str, List<ApplicationExitInfo> list) {
        long jQ = this.f33917b.q(str);
        for (ApplicationExitInfo applicationExitInfo : list) {
            if (applicationExitInfo.getTimestamp() < jQ) {
                return null;
            }
            if (applicationExitInfo.getReason() == 6) {
                return applicationExitInfo;
            }
        }
        return null;
    }

    private static List<f0.c> m(Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(f0.c.a().b(entry.getKey()).c(entry.getValue()).a());
        }
        Collections.sort(arrayList, new Comparator() { // from class: q5.i0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return j0.o((f0.c) obj, (f0.c) obj2);
            }
        });
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int o(f0.c cVar, f0.c cVar2) {
        return cVar.b().compareTo(cVar2.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r(Task<u> task) {
        if (!task.t()) {
            n5.g.f().l("Crashlytics report could not be enqueued to DataTransport", task.o());
            return false;
        }
        u uVarP = task.p();
        n5.g.f().b("Crashlytics report successfully enqueued to DataTransport: " + uVarP.d());
        File fileC = uVarP.c();
        if (fileC.delete()) {
            n5.g.f().b("Deleted report file: " + fileC.getPath());
            return true;
        }
        n5.g.f().k("Crashlytics could not delete report file: " + fileC.getPath());
        return true;
    }

    private void s(Throwable th, Thread thread, String str, String str2, long j10, boolean z10) {
        this.f33917b.y(d(this.f33916a.d(th, thread, str2, j10, 4, 8, z10)), str, str2.equals("crash"));
    }

    public void j(String str, List<e0> list, f0.a aVar) {
        n5.g.f().b("SessionReportingCoordinator#finalizeSessionWithNativeEvent");
        ArrayList arrayList = new ArrayList();
        Iterator<e0> it = list.iterator();
        while (it.hasNext()) {
            f0.d.b bVarC = it.next().c();
            if (bVarC != null) {
                arrayList.add(bVarC);
            }
        }
        this.f33917b.l(str, f0.d.a().b(Collections.unmodifiableList(arrayList)).a(), aVar);
    }

    public void k(long j10, String str) {
        this.f33917b.k(str, j10);
    }

    public boolean n() {
        return this.f33917b.r();
    }

    public SortedSet<String> p() {
        return this.f33917b.p();
    }

    public void q(String str, long j10) {
        this.f33917b.z(this.f33916a.e(str, j10));
    }

    public void t(Throwable th, Thread thread, String str, long j10) {
        n5.g.f().i("Persisting fatal event for session " + str);
        s(th, thread, str, "crash", j10, true);
    }

    public void u(Throwable th, Thread thread, String str, long j10) {
        n5.g.f().i("Persisting non-fatal event for session " + str);
        s(th, thread, str, "error", j10, false);
    }

    public void v(String str, List<ApplicationExitInfo> list, r5.e eVar, r5.m mVar) {
        ApplicationExitInfo applicationExitInfoL = l(str, list);
        if (applicationExitInfoL == null) {
            n5.g.f().i("No relevant ApplicationExitInfo occurred during session: " + str);
            return;
        }
        f0.e.d dVarC = this.f33916a.c(f(applicationExitInfoL));
        n5.g.f().b("Persisting anr for session " + str);
        this.f33917b.y(e(c(dVarC, eVar, mVar), mVar), str, true);
    }

    public void w() {
        this.f33917b.i();
    }

    public Task<Void> x(Executor executor) {
        return y(executor, null);
    }

    public Task<Void> y(Executor executor, String str) {
        List<u> listW = this.f33917b.w();
        ArrayList arrayList = new ArrayList();
        for (u uVar : listW) {
            if (str == null || str.equals(uVar.d())) {
                arrayList.add(this.f33918c.c(i(uVar), str != null).l(executor, new Continuation() { // from class: q5.h0
                    @Override // com.google.android.gms.tasks.Continuation
                    public final Object a(Task task) {
                        return Boolean.valueOf(this.f33900a.r(task));
                    }
                }));
            }
        }
        return Tasks.f(arrayList);
    }
}
