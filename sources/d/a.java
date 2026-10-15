package d;

import android.content.Context;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: compiled from: ContextAwareHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<b> f28596a = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Context f28597b;

    public void a(b bVar) {
        if (this.f28597b != null) {
            bVar.a(this.f28597b);
        }
        this.f28596a.add(bVar);
    }

    public void b() {
        this.f28597b = null;
    }

    public void c(Context context) {
        this.f28597b = context;
        Iterator<b> it = this.f28596a.iterator();
        while (it.hasNext()) {
            it.next().a(context);
        }
    }

    public Context d() {
        return this.f28597b;
    }

    public void e(b bVar) {
        this.f28596a.remove(bVar);
    }
}
