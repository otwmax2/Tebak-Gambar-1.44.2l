package androidx.work;

import android.content.Context;
import androidx.work.a;
import i1.j;
import i1.t;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class WorkManagerInitializer implements d1.a<t> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f4342a = j.f("WrkMgrInitializer");

    @Override // d1.a
    public List<Class<? extends d1.a<?>>> a() {
        return Collections.emptyList();
    }

    @Override // d1.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public t b(Context context) {
        j.c().a(f4342a, "Initializing WorkManager with default configuration.", new Throwable[0]);
        t.f(context, new a.b().a());
        return t.e(context);
    }
}
