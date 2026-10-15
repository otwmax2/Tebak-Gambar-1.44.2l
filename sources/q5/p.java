package q5;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.util.Base64;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.SortedSet;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import q5.v;
import s5.f0;
import s5.g0;

/* JADX INFO: compiled from: CrashlyticsController.java */
/* JADX INFO: loaded from: classes2.dex */
class p {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static final FilenameFilter f33945t = new FilenameFilter() { // from class: q5.o
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return p.K(file, str);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f33946a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x f33947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s f33948c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final r5.m f33949d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n f33950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f33951f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final v5.f f33952g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final q5.a f33953h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final r5.e f33954i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final n5.a f33955j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final o5.a f33956k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final m f33957l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final j0 f33958m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private v f33959n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private x5.i f33960o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final TaskCompletionSource<Boolean> f33961p = new TaskCompletionSource<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final TaskCompletionSource<Boolean> f33962q = new TaskCompletionSource<>();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final TaskCompletionSource<Void> f33963r = new TaskCompletionSource<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final AtomicBoolean f33964s = new AtomicBoolean(false);

    /* JADX INFO: compiled from: CrashlyticsController.java */
    class a implements v.a {
        a() {
        }

        @Override // q5.v.a
        public void a(x5.i iVar, Thread thread, Throwable th) {
            p.this.H(iVar, thread, th);
        }
    }

    /* JADX INFO: compiled from: CrashlyticsController.java */
    class b implements Callable<Task<Void>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f33966a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Throwable f33967b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Thread f33968c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ x5.i f33969d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f33970e;

        /* JADX INFO: compiled from: CrashlyticsController.java */
        class a implements SuccessContinuation<x5.d, Void> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Executor f33972a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f33973b;

            a(Executor executor, String str) {
                this.f33972a = executor;
                this.f33973b = str;
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Task<Void> a(x5.d dVar) throws Exception {
                if (dVar == null) {
                    n5.g.f().k("Received null app settings, cannot send reports at crash time.");
                    return Tasks.e(null);
                }
                Task[] taskArr = new Task[2];
                taskArr[0] = p.this.N();
                taskArr[1] = p.this.f33958m.y(this.f33972a, b.this.f33970e ? this.f33973b : null);
                return Tasks.g(taskArr);
            }
        }

        b(long j10, Throwable th, Thread thread, x5.i iVar, boolean z10) {
            this.f33966a = j10;
            this.f33967b = th;
            this.f33968c = thread;
            this.f33969d = iVar;
            this.f33970e = z10;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Task<Void> call() throws Exception {
            long jF = p.F(this.f33966a);
            String strB = p.this.B();
            if (strB == null) {
                n5.g.f().d("Tried to write a fatal exception while no session was open.");
                return Tasks.e(null);
            }
            p.this.f33948c.a();
            p.this.f33958m.t(this.f33967b, this.f33968c, strB, jF);
            p.this.w(this.f33966a);
            p.this.t(this.f33969d);
            p.this.v(new q5.h(p.this.f33951f).toString(), Boolean.valueOf(this.f33970e));
            if (!p.this.f33947b.d()) {
                return Tasks.e(null);
            }
            Executor executorC = p.this.f33950e.c();
            return this.f33969d.a().v(executorC, new a(executorC, strB));
        }
    }

    /* JADX INFO: compiled from: CrashlyticsController.java */
    class c implements SuccessContinuation<Void, Boolean> {
        c() {
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Task<Boolean> a(Void r12) throws Exception {
            return Tasks.e(Boolean.TRUE);
        }
    }

    /* JADX INFO: compiled from: CrashlyticsController.java */
    class d implements SuccessContinuation<Boolean, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Task f33976a;

        /* JADX INFO: compiled from: CrashlyticsController.java */
        class a implements Callable<Task<Void>> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Boolean f33978a;

            /* JADX INFO: renamed from: q5.p$d$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: CrashlyticsController.java */
            class C0221a implements SuccessContinuation<x5.d, Void> {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ Executor f33980a;

                C0221a(Executor executor) {
                    this.f33980a = executor;
                }

                @Override // com.google.android.gms.tasks.SuccessContinuation
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public Task<Void> a(x5.d dVar) throws Exception {
                    if (dVar == null) {
                        n5.g.f().k("Received null app settings at app startup. Cannot send cached reports");
                        return Tasks.e(null);
                    }
                    p.this.N();
                    p.this.f33958m.x(this.f33980a);
                    p.this.f33963r.e(null);
                    return Tasks.e(null);
                }
            }

            a(Boolean bool) {
                this.f33978a = bool;
            }

            @Override // java.util.concurrent.Callable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Task<Void> call() throws Exception {
                if (this.f33978a.booleanValue()) {
                    n5.g.f().b("Sending cached crash reports...");
                    p.this.f33947b.c(this.f33978a.booleanValue());
                    Executor executorC = p.this.f33950e.c();
                    return d.this.f33976a.v(executorC, new C0221a(executorC));
                }
                n5.g.f().i("Deleting cached crash reports...");
                p.r(p.this.L());
                p.this.f33958m.w();
                p.this.f33963r.e(null);
                return Tasks.e(null);
            }
        }

        d(Task task) {
            this.f33976a = task;
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Task<Void> a(Boolean bool) throws Exception {
            return p.this.f33950e.i(new a(bool));
        }
    }

    /* JADX INFO: compiled from: CrashlyticsController.java */
    class e implements Callable<Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f33982a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f33983b;

        e(long j10, String str) {
            this.f33982a = j10;
            this.f33983b = str;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            if (p.this.J()) {
                return null;
            }
            p.this.f33954i.g(this.f33982a, this.f33983b);
            return null;
        }
    }

    /* JADX INFO: compiled from: CrashlyticsController.java */
    class f implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ long f33985o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Throwable f33986p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ Thread f33987q;

        f(long j10, Throwable th, Thread thread) {
            this.f33985o = j10;
            this.f33986p = th;
            this.f33987q = thread;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (p.this.J()) {
                return;
            }
            long jF = p.F(this.f33985o);
            String strB = p.this.B();
            if (strB == null) {
                n5.g.f().k("Tried to write a non-fatal exception while no session was open.");
            } else {
                p.this.f33958m.u(this.f33986p, this.f33987q, strB, jF);
            }
        }
    }

    /* JADX INFO: compiled from: CrashlyticsController.java */
    class g implements Callable<Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f33989a;

        g(String str) {
            this.f33989a = str;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            p.this.v(this.f33989a, Boolean.FALSE);
            return null;
        }
    }

    /* JADX INFO: compiled from: CrashlyticsController.java */
    class h implements Callable<Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f33991a;

        h(long j10) {
            this.f33991a = j10;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            Bundle bundle = new Bundle();
            bundle.putInt("fatal", 1);
            bundle.putLong("timestamp", this.f33991a);
            p.this.f33956k.a("_ae", bundle);
            return null;
        }
    }

    p(Context context, n nVar, b0 b0Var, x xVar, v5.f fVar, s sVar, q5.a aVar, r5.m mVar, r5.e eVar, j0 j0Var, n5.a aVar2, o5.a aVar3, m mVar2) {
        this.f33946a = context;
        this.f33950e = nVar;
        this.f33951f = b0Var;
        this.f33947b = xVar;
        this.f33952g = fVar;
        this.f33948c = sVar;
        this.f33953h = aVar;
        this.f33949d = mVar;
        this.f33954i = eVar;
        this.f33955j = aVar2;
        this.f33956k = aVar3;
        this.f33957l = mVar2;
        this.f33958m = j0Var;
    }

    private static boolean A() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String B() {
        SortedSet<String> sortedSetP = this.f33958m.p();
        if (sortedSetP.isEmpty()) {
            return null;
        }
        return sortedSetP.first();
    }

    private static long C() {
        return F(System.currentTimeMillis());
    }

    static List<e0> D(n5.h hVar, String str, v5.f fVar, byte[] bArr) {
        File fileO = fVar.o(str, "user-data");
        File fileO2 = fVar.o(str, "keys");
        File fileO3 = fVar.o(str, "rollouts-state");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new q5.g("logs_file", "logs", bArr));
        arrayList.add(new a0("crash_meta_file", "metadata", hVar.g()));
        arrayList.add(new a0("session_meta_file", "session", hVar.f()));
        arrayList.add(new a0("app_meta_file", "app", hVar.a()));
        arrayList.add(new a0("device_meta_file", DeviceRequestsHelper.DEVICE_INFO_DEVICE, hVar.c()));
        arrayList.add(new a0("os_meta_file", "os", hVar.b()));
        arrayList.add(P(hVar));
        arrayList.add(new a0("user_meta_file", "user", fileO));
        arrayList.add(new a0("keys_file", "keys", fileO2));
        arrayList.add(new a0("rollouts_file", "rollouts", fileO3));
        return arrayList;
    }

    private InputStream E(String str) {
        ClassLoader classLoader = getClass().getClassLoader();
        if (classLoader == null) {
            n5.g.f().k("Couldn't get Class Loader");
            return null;
        }
        InputStream resourceAsStream = classLoader.getResourceAsStream(str);
        if (resourceAsStream != null) {
            return resourceAsStream;
        }
        n5.g.f().g("No version control information found");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long F(long j10) {
        return j10 / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean K(File file, String str) {
        return str.startsWith(".ae");
    }

    private Task<Void> M(long j10) {
        if (A()) {
            n5.g.f().k("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
            return Tasks.e(null);
        }
        n5.g.f().b("Logging app exception event to Firebase Analytics");
        return Tasks.c(new ScheduledThreadPoolExecutor(1), new h(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task<Void> N() {
        ArrayList arrayList = new ArrayList();
        for (File file : L()) {
            try {
                arrayList.add(M(Long.parseLong(file.getName().substring(3))));
            } catch (NumberFormatException unused) {
                n5.g.f().k("Could not parse app exception timestamp from file " + file.getName());
            }
            file.delete();
        }
        return Tasks.f(arrayList);
    }

    private static boolean O(String str, File file, f0.a aVar) {
        if (file == null || !file.exists()) {
            n5.g.f().k("No minidump data found for session " + str);
        }
        if (aVar == null) {
            n5.g.f().g("No Tombstones data found for session " + str);
        }
        return (file == null || !file.exists()) && aVar == null;
    }

    private static e0 P(n5.h hVar) {
        File fileE = hVar.e();
        return (fileE == null || !fileE.exists()) ? new q5.g("minidump_file", "minidump", new byte[]{0}) : new a0("minidump_file", "minidump", fileE);
    }

    private static byte[] R(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    private Task<Boolean> X() {
        if (this.f33947b.d()) {
            n5.g.f().b("Automatic data collection is enabled. Allowing upload.");
            this.f33961p.e(Boolean.FALSE);
            return Tasks.e(Boolean.TRUE);
        }
        n5.g.f().b("Automatic data collection is disabled.");
        n5.g.f().i("Notifying that unsent reports are available.");
        this.f33961p.e(Boolean.TRUE);
        Task<TContinuationResult> taskU = this.f33947b.h().u(new c());
        n5.g.f().b("Waiting for send/deleteUnsentReports to be called.");
        return q0.n(taskU, this.f33962q.a());
    }

    private void Y(String str) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 30) {
            n5.g.f().i("ANR feature enabled, but device is API " + i10);
            return;
        }
        List<ApplicationExitInfo> historicalProcessExitReasons = ((ActivityManager) this.f33946a.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
        if (historicalProcessExitReasons.size() != 0) {
            this.f33958m.v(str, historicalProcessExitReasons, new r5.e(this.f33952g, str), r5.m.j(str, this.f33952g, this.f33950e));
        } else {
            n5.g.f().i("No ApplicationExitInfo available. Session: " + str);
        }
    }

    private static g0.a o(b0 b0Var, q5.a aVar) {
        return g0.a.b(b0Var.f(), aVar.f33868f, aVar.f33869g, b0Var.a().c(), y.c(aVar.f33866d).e(), aVar.f33870h);
    }

    private static g0.b p(Context context) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return g0.b.c(i.k(), Build.MODEL, Runtime.getRuntime().availableProcessors(), i.b(context), ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize()), i.w(), i.l(), Build.MANUFACTURER, Build.PRODUCT);
    }

    private static g0.c q() {
        return g0.c.a(Build.VERSION.RELEASE, Build.VERSION.CODENAME, i.x());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void r(List<File> list) {
        Iterator<File> it = list.iterator();
        while (it.hasNext()) {
            it.next().delete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void u(boolean z10, x5.i iVar) {
        ArrayList arrayList = new ArrayList(this.f33958m.p());
        if (arrayList.size() <= z10) {
            n5.g.f().i("No open sessions to be closed.");
            return;
        }
        String str = (String) arrayList.get(z10 ? 1 : 0);
        if (iVar.b().f36270b.f36278b) {
            Y(str);
        } else {
            n5.g.f().i("ANR feature disabled.");
        }
        if (this.f33955j.c(str)) {
            y(str);
        }
        String str2 = null;
        if (z10 != 0) {
            str2 = (String) arrayList.get(0);
        } else {
            this.f33957l.e(null);
        }
        this.f33958m.k(C(), str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(String str, Boolean bool) {
        long jC = C();
        n5.g.f().b("Opening a new session with ID " + str);
        this.f33955j.d(str, String.format(Locale.US, "Crashlytics Android SDK/%s", r.i()), jC, s5.g0.b(o(this.f33951f, this.f33953h), q(), p(this.f33946a)));
        if (bool.booleanValue() && str != null) {
            this.f33949d.o(str);
        }
        this.f33954i.e(str);
        this.f33957l.e(str);
        this.f33958m.q(str, jC);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(long j10) {
        try {
            if (this.f33952g.e(".ae" + j10).createNewFile()) {
            } else {
                throw new IOException("Create new file failed.");
            }
        } catch (IOException e10) {
            n5.g.f().l("Could not create app exception marker file.", e10);
        }
    }

    private void y(String str) {
        n5.g.f().i("Finalizing native report for session " + str);
        n5.h hVarA = this.f33955j.a(str);
        File fileE = hVarA.e();
        f0.a aVarD = hVarA.d();
        if (O(str, fileE, aVarD)) {
            n5.g.f().k("No native core present");
            return;
        }
        long jLastModified = fileE.lastModified();
        r5.e eVar = new r5.e(this.f33952g, str);
        File fileI = this.f33952g.i(str);
        if (!fileI.isDirectory()) {
            n5.g.f().k("Couldn't create directory to store native session files, aborting.");
            return;
        }
        w(jLastModified);
        List<e0> listD = D(hVarA, str, this.f33952g, eVar.b());
        f0.b(fileI, listD);
        n5.g.f().b("CrashlyticsController#finalizePreviousNativeSession");
        this.f33958m.j(str, listD, aVarD);
        eVar.a();
    }

    String G() throws IOException {
        InputStream inputStreamE = E("META-INF/version-control-info.textproto");
        if (inputStreamE == null) {
            return null;
        }
        n5.g.f().b("Read version control info");
        return Base64.encodeToString(R(inputStreamE), 0);
    }

    void H(x5.i iVar, Thread thread, Throwable th) {
        I(iVar, thread, th, false);
    }

    synchronized void I(x5.i iVar, Thread thread, Throwable th, boolean z10) {
        n5.g.f().b("Handling uncaught exception \"" + th + "\" from thread " + thread.getName());
        try {
            q0.f(this.f33950e.i(new b(System.currentTimeMillis(), th, thread, iVar, z10)));
        } catch (TimeoutException unused) {
            n5.g.f().d("Cannot send reports. Timed out while fetching settings.");
        } catch (Exception e10) {
            n5.g.f().e("Error handling uncaught exception", e10);
        }
    }

    boolean J() {
        v vVar = this.f33959n;
        return vVar != null && vVar.a();
    }

    List<File> L() {
        return this.f33952g.f(f33945t);
    }

    void Q(String str) {
        this.f33950e.h(new g(str));
    }

    void S() {
        try {
            String strG = G();
            if (strG != null) {
                U("com.crashlytics.version-control-info", strG);
                n5.g.f().g("Saved version control info");
            }
        } catch (IOException e10) {
            n5.g.f().l("Unable to save version control info", e10);
        }
    }

    void T(String str, String str2) {
        try {
            this.f33949d.m(str, str2);
        } catch (IllegalArgumentException e10) {
            Context context = this.f33946a;
            if (context != null && i.u(context)) {
                throw e10;
            }
            n5.g.f().d("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    void U(String str, String str2) {
        try {
            this.f33949d.n(str, str2);
        } catch (IllegalArgumentException e10) {
            Context context = this.f33946a;
            if (context != null && i.u(context)) {
                throw e10;
            }
            n5.g.f().d("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    void V(String str) {
        this.f33949d.p(str);
    }

    @SuppressLint({"TaskMainThread"})
    Task<Void> W(Task<x5.d> task) {
        if (this.f33958m.n()) {
            n5.g.f().i("Crash reports are available to be sent.");
            return X().u(new d(task));
        }
        n5.g.f().i("No crash reports are available to be sent.");
        this.f33961p.e(Boolean.FALSE);
        return Tasks.e(null);
    }

    void Z(Thread thread, Throwable th) {
        this.f33950e.g(new f(System.currentTimeMillis(), th, thread));
    }

    void a0(long j10, String str) {
        this.f33950e.h(new e(j10, str));
    }

    boolean s() {
        if (!this.f33948c.c()) {
            String strB = B();
            return strB != null && this.f33955j.c(strB);
        }
        n5.g.f().i("Found previous crash marker.");
        this.f33948c.d();
        return true;
    }

    void t(x5.i iVar) {
        u(false, iVar);
    }

    void x(String str, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, x5.i iVar) {
        this.f33960o = iVar;
        Q(str);
        v vVar = new v(new a(), iVar, uncaughtExceptionHandler, this.f33955j);
        this.f33959n = vVar;
        Thread.setDefaultUncaughtExceptionHandler(vVar);
    }

    boolean z(x5.i iVar) {
        this.f33950e.b();
        if (J()) {
            n5.g.f().k("Skipping session finalization because a crash has already occurred.");
            return false;
        }
        n5.g.f().i("Finalizing previously open sessions.");
        try {
            u(true, iVar);
            n5.g.f().i("Closed all previously open sessions.");
            return true;
        } catch (Exception e10) {
            n5.g.f().e("Unable to finalize previously open sessions.", e10);
            return false;
        }
    }
}
