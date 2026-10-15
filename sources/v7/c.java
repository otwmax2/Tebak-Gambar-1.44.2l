package v7;

import a8.e;
import android.content.Context;
import y7.d;
import y7.f;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f35856a;

    private void c(Context context) {
        e.b(context, "Application Context cannot be null");
    }

    void a(Context context) {
        c(context);
        if (d()) {
            return;
        }
        b(true);
        f.c().d(context);
        y7.b.a().b(context);
        a8.b.c(context);
        d.a().b(context);
    }

    void b(boolean z10) {
        this.f35856a = z10;
    }

    boolean d() {
        return this.f35856a;
    }
}
