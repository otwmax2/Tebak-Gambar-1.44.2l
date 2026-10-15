package n5;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.vungle.mediation.BuildConfig;
import i9.l;
import i9.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import s5.f0;
import t9.m;

/* JADX INFO: compiled from: ProcessDetailsProvider.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f32464a = new i();

    private i() {
    }

    public static /* synthetic */ f0.e.d.a.c c(i iVar, String str, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = 0;
        }
        if ((i12 & 8) != 0) {
            z10 = false;
        }
        return iVar.b(str, i10, i11, z10);
    }

    private final String f() {
        String processName;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 33) {
            return (i10 < 28 || (processName = Application.getProcessName()) == null) ? BuildConfig.FLAVOR : processName;
        }
        String strMyProcessName = Process.myProcessName();
        m.d(strMyProcessName, "{\n      Process.myProcessName()\n    }");
        return strMyProcessName;
    }

    public final f0.e.d.a.c a(String str, int i10, int i11) {
        m.e(str, "processName");
        return c(this, str, i10, i11, false, 8, null);
    }

    public final f0.e.d.a.c b(String str, int i10, int i11, boolean z10) {
        m.e(str, "processName");
        f0.e.d.a.c cVarA = f0.e.d.a.c.a().e(str).d(i10).c(i11).b(z10).a();
        m.d(cVarA, "builder()\n      .setProc…ltProcess)\n      .build()");
        return cVarA;
    }

    public final List<f0.e.d.a.c> d(Context context) {
        m.e(context, "context");
        int i10 = context.getApplicationInfo().uid;
        String str = context.getApplicationInfo().processName;
        Object systemService = context.getSystemService("activity");
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager != null ? activityManager.getRunningAppProcesses() : null;
        if (runningAppProcesses == null) {
            runningAppProcesses = l.e();
        }
        List listT = t.t(runningAppProcesses);
        ArrayList<ActivityManager.RunningAppProcessInfo> arrayList = new ArrayList();
        for (Object obj : listT) {
            if (((ActivityManager.RunningAppProcessInfo) obj).uid == i10) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(i9.m.l(arrayList, 10));
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : arrayList) {
            arrayList2.add(f0.e.d.a.c.a().e(runningAppProcessInfo.processName).d(runningAppProcessInfo.pid).c(runningAppProcessInfo.importance).b(m.a(runningAppProcessInfo.processName, str)).a());
        }
        return arrayList2;
    }

    public final f0.e.d.a.c e(Context context) {
        Object next;
        m.e(context, "context");
        int iMyPid = Process.myPid();
        Iterator<T> it = d(context).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((f0.e.d.a.c) next).c() == iMyPid) {
                break;
            }
        }
        f0.e.d.a.c cVar = (f0.e.d.a.c) next;
        return cVar == null ? c(this, f(), iMyPid, 0, false, 12, null) : cVar;
    }
}
