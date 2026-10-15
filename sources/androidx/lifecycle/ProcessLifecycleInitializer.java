package androidx.lifecycle;

import android.content.Context;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements d1.a<n> {
    @Override // d1.a
    public List<Class<? extends d1.a<?>>> a() {
        return Collections.emptyList();
    }

    @Override // d1.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n b(Context context) {
        if (!androidx.startup.a.e(context).g(ProcessLifecycleInitializer.class)) {
            throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily. \nPlease ensure that you have: \n<meta-data\n    android:name='androidx.lifecycle.ProcessLifecycleInitializer' \n    android:value='androidx.startup' /> \nunder InitializationProvider in your AndroidManifest.xml");
        }
        k.a(context);
        w.i(context);
        return w.h();
    }
}
