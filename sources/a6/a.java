package a6;

import android.content.Intent;
import b5.g;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static synchronized a b() {
        return c(g.m());
    }

    public static synchronized a c(g gVar) {
        return (a) gVar.j(a.class);
    }

    public abstract Task<b> a(Intent intent);
}
