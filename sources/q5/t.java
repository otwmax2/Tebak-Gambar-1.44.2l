package q5;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import s5.f0;

/* JADX INFO: compiled from: CrashlyticsReportDataCapture.java */
/* JADX INFO: loaded from: classes2.dex */
public class t {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Map<String, Integer> f34024g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final String f34025h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f34026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f34027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f34028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final y5.d f34029d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final x5.i f34030e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final n5.i f34031f = n5.i.f32464a;

    static {
        HashMap map = new HashMap();
        f34024g = map;
        map.put("armeabi", 5);
        map.put("armeabi-v7a", 6);
        map.put("arm64-v8a", 9);
        map.put("x86", 0);
        map.put("x86_64", 1);
        f34025h = String.format(Locale.US, "Crashlytics Android SDK/%s", "18.6.0");
    }

    public t(Context context, b0 b0Var, a aVar, y5.d dVar, x5.i iVar) {
        this.f34026a = context;
        this.f34027b = b0Var;
        this.f34028c = aVar;
        this.f34029d = dVar;
        this.f34030e = iVar;
    }

    private f0.e.d.a.c A(f0.a aVar) {
        return this.f34031f.a(aVar.e(), aVar.d(), aVar.c());
    }

    private f0.a a(f0.a aVar) {
        List<f0.a.AbstractC0230a> listUnmodifiableList;
        if (!this.f34030e.b().f36270b.f36279c || this.f34028c.f33865c.size() <= 0) {
            listUnmodifiableList = null;
        } else {
            ArrayList arrayList = new ArrayList();
            for (f fVar : this.f34028c.f33865c) {
                arrayList.add(f0.a.AbstractC0230a.a().d(fVar.c()).b(fVar.a()).c(fVar.b()).a());
            }
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
        }
        return f0.a.a().c(aVar.c()).e(aVar.e()).g(aVar.g()).i(aVar.i()).d(aVar.d()).f(aVar.f()).h(aVar.h()).j(aVar.j()).b(listUnmodifiableList).a();
    }

    private f0.b b() {
        return s5.f0.b().k("18.6.0").g(this.f34028c.f33863a).h(this.f34027b.a().c()).f(this.f34027b.a().d()).d(this.f34028c.f33868f).e(this.f34028c.f33869g).j(4);
    }

    private static long f(long j10) {
        if (j10 > 0) {
            return j10;
        }
        return 0L;
    }

    private static int g() {
        Integer num;
        String str = Build.CPU_ABI;
        if (TextUtils.isEmpty(str) || (num = f34024g.get(str.toLowerCase(Locale.US))) == null) {
            return 7;
        }
        return num.intValue();
    }

    private f0.e.d.a.b.AbstractC0234a h() {
        return f0.e.d.a.b.AbstractC0234a.a().b(0L).d(0L).c(this.f34028c.f33867e).e(this.f34028c.f33864b).a();
    }

    private List<f0.e.d.a.b.AbstractC0234a> i() {
        return Collections.singletonList(h());
    }

    private f0.e.d.a j(int i10, f0.a aVar) {
        return f0.e.d.a.a().c(Boolean.valueOf(aVar.c() != 100)).d(A(aVar)).h(i10).f(o(aVar)).a();
    }

    private f0.e.d.a k(int i10, y5.e eVar, Thread thread, int i11, int i12, boolean z10) {
        Boolean boolValueOf;
        f0.e.d.a.c cVarE = this.f34031f.e(this.f34026a);
        if (cVarE.b() > 0) {
            boolValueOf = Boolean.valueOf(cVarE.b() != 100);
        } else {
            boolValueOf = null;
        }
        return f0.e.d.a.a().c(boolValueOf).d(cVarE).b(this.f34031f.d(this.f34026a)).h(i10).f(p(eVar, thread, i11, i12, z10)).a();
    }

    private f0.e.d.c l(int i10) {
        e eVarA = e.a(this.f34026a);
        Float fB = eVarA.b();
        Double dValueOf = fB != null ? Double.valueOf(fB.doubleValue()) : null;
        int iC = eVarA.c();
        boolean zN = i.n(this.f34026a);
        return f0.e.d.c.a().b(dValueOf).c(iC).f(zN).e(i10).g(f(i.b(this.f34026a) - i.a(this.f34026a))).d(i.c(Environment.getDataDirectory().getPath())).a();
    }

    private f0.e.d.a.b.c m(y5.e eVar, int i10, int i11) {
        return n(eVar, i10, i11, 0);
    }

    private f0.e.d.a.b.c n(y5.e eVar, int i10, int i11, int i12) {
        String str = eVar.f36994b;
        String str2 = eVar.f36993a;
        StackTraceElement[] stackTraceElementArr = eVar.f36995c;
        int i13 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        y5.e eVar2 = eVar.f36996d;
        if (i12 >= i11) {
            y5.e eVar3 = eVar2;
            while (eVar3 != null) {
                eVar3 = eVar3.f36996d;
                i13++;
            }
        }
        f0.e.d.a.b.c.AbstractC0237a abstractC0237aD = f0.e.d.a.b.c.a().f(str).e(str2).c(r(stackTraceElementArr, i10)).d(i13);
        if (eVar2 != null && i13 == 0) {
            abstractC0237aD.b(n(eVar2, i10, i11, i12 + 1));
        }
        return abstractC0237aD.a();
    }

    private f0.e.d.a.b o(f0.a aVar) {
        return f0.e.d.a.b.a().b(aVar).e(w()).c(i()).a();
    }

    private f0.e.d.a.b p(y5.e eVar, Thread thread, int i10, int i11, boolean z10) {
        return f0.e.d.a.b.a().f(z(eVar, thread, i10, z10)).d(m(eVar, i10, i11)).e(w()).c(i()).a();
    }

    private f0.e.d.a.b.AbstractC0240e.AbstractC0242b q(StackTraceElement stackTraceElement, f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a abstractC0243a) {
        long lineNumber = 0;
        long jMax = stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0L) : 0L;
        String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
        String fileName = stackTraceElement.getFileName();
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            lineNumber = stackTraceElement.getLineNumber();
        }
        return abstractC0243a.e(jMax).f(str).b(fileName).d(lineNumber).a();
    }

    private List<f0.e.d.a.b.AbstractC0240e.AbstractC0242b> r(StackTraceElement[] stackTraceElementArr, int i10) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            arrayList.add(q(stackTraceElement, f0.e.d.a.b.AbstractC0240e.AbstractC0242b.a().c(i10)));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private f0.e.a s() {
        return f0.e.a.a().e(this.f34027b.f()).g(this.f34028c.f33868f).d(this.f34028c.f33869g).f(this.f34027b.a().c()).b(this.f34028c.f33870h.d()).c(this.f34028c.f33870h.e()).a();
    }

    private f0.e t(String str, long j10) {
        return f0.e.a().m(j10).j(str).h(f34025h).b(s()).l(v()).e(u()).i(3).a();
    }

    private f0.e.c u() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int iG = g();
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        long jB = i.b(this.f34026a);
        long blockCount = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        boolean zW = i.w();
        int iL = i.l();
        String str = Build.MANUFACTURER;
        return f0.e.c.a().b(iG).f(Build.MODEL).c(iAvailableProcessors).h(jB).d(blockCount).i(zW).j(iL).e(str).g(Build.PRODUCT).a();
    }

    private f0.e.AbstractC0247e v() {
        return f0.e.AbstractC0247e.a().d(3).e(Build.VERSION.RELEASE).b(Build.VERSION.CODENAME).c(i.x()).a();
    }

    private f0.e.d.a.b.AbstractC0238d w() {
        return f0.e.d.a.b.AbstractC0238d.a().d(AppEventsConstants.EVENT_PARAM_VALUE_NO).c(AppEventsConstants.EVENT_PARAM_VALUE_NO).b(0L).a();
    }

    private f0.e.d.a.b.AbstractC0240e x(Thread thread, StackTraceElement[] stackTraceElementArr) {
        return y(thread, stackTraceElementArr, 0);
    }

    private f0.e.d.a.b.AbstractC0240e y(Thread thread, StackTraceElement[] stackTraceElementArr, int i10) {
        return f0.e.d.a.b.AbstractC0240e.a().d(thread.getName()).c(i10).b(r(stackTraceElementArr, i10)).a();
    }

    private List<f0.e.d.a.b.AbstractC0240e> z(y5.e eVar, Thread thread, int i10, boolean z10) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(y(thread, eVar.f36995c, i10));
        if (z10) {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if (!key.equals(thread)) {
                    arrayList.add(x(key, this.f34029d.a(entry.getValue())));
                }
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public f0.e.d c(f0.a aVar) {
        int i10 = this.f34026a.getResources().getConfiguration().orientation;
        return f0.e.d.a().g("anr").f(aVar.i()).b(j(i10, a(aVar))).c(l(i10)).a();
    }

    public f0.e.d d(Throwable th, Thread thread, String str, long j10, int i10, int i11, boolean z10) {
        int i12 = this.f34026a.getResources().getConfiguration().orientation;
        return f0.e.d.a().g(str).f(j10).b(k(i12, y5.e.a(th, this.f34029d), thread, i10, i11, z10)).c(l(i12)).a();
    }

    public s5.f0 e(String str, long j10) {
        return b().l(t(str, j10)).a();
    }
}
