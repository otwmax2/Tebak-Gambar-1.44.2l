package x7;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static a a(b bVar, c cVar) {
        a8.e.a();
        a8.e.b(bVar, "AdSessionConfiguration is null");
        a8.e.b(cVar, "AdSessionContext is null");
        return new k(bVar, cVar);
    }

    public abstract void b();

    public abstract void c(View view);

    public abstract void d();
}
