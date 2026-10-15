package t3;

import android.content.Context;
import javax.inject.Named;
import javax.inject.Singleton;

/* JADX INFO: compiled from: EventStoreModule.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    @Named
    static String a() {
        return "com.google.android.datatransport.events";
    }

    @Singleton
    @Named
    static String b(Context context) {
        return context.getPackageName();
    }

    @Named
    static int c() {
        return t0.f35369r;
    }

    static e d() {
        return e.f35311a;
    }
}
