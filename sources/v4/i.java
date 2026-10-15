package v4;

import android.os.IBinder;
import android.os.IInterface;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class i extends b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ IBinder f35811p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ l f35812q;

    i(l lVar, IBinder iBinder) {
        this.f35812q = lVar;
        this.f35811p = iBinder;
    }

    @Override // v4.b
    public final void a() {
        m mVar = this.f35812q.f35814o;
        mVar.f35829n = (IInterface) mVar.f35824i.a(this.f35811p);
        m.o(this.f35812q.f35814o);
        this.f35812q.f35814o.f35822g = false;
        Iterator it = this.f35812q.f35814o.f35819d.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f35812q.f35814o.f35819d.clear();
    }
}
