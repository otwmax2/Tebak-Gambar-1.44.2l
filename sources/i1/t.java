package i1;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: WorkManager.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"AddedAbstractMethod"})
public abstract class t {
    protected t() {
    }

    @Deprecated
    public static t d() {
        j1.i iVarK = j1.i.k();
        if (iVarK != null) {
            return iVarK;
        }
        throw new IllegalStateException("WorkManager is not initialized properly.  The most likely cause is that you disabled WorkManagerInitializer in your manifest but forgot to call WorkManager#initialize in your Application#onCreate or a ContentProvider.");
    }

    public static t e(Context context) {
        return j1.i.l(context);
    }

    public static void f(Context context, androidx.work.a aVar) {
        j1.i.f(context, aVar);
    }

    public abstract m a(String str);

    public final m b(u uVar) {
        return c(Collections.singletonList(uVar));
    }

    public abstract m c(List<? extends u> list);
}
