package ea;

import android.os.Handler;
import android.os.Looper;
import da.b2;
import da.d1;
import java.util.concurrent.CancellationException;
import k9.g;
import t9.m;

/* JADX INFO: compiled from: HandlerDispatcher.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class c extends d {
    private volatile c _immediate;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Handler f28972q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f28973r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f28974s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final c f28975t;

    private c(Handler handler, String str, boolean z10) {
        super(null);
        this.f28972q = handler;
        this.f28973r = str;
        this.f28974s = z10;
        this._immediate = z10 ? this : null;
        c cVar = this._immediate;
        if (cVar == null) {
            cVar = new c(handler, str, true);
            this._immediate = cVar;
        }
        this.f28975t = cVar;
    }

    private final void G(g gVar, Runnable runnable) {
        b2.c(gVar, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        d1.b().m(gVar, runnable);
    }

    @Override // da.h2
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public c x() {
        return this.f28975t;
    }

    public boolean equals(Object obj) {
        return (obj instanceof c) && ((c) obj).f28972q == this.f28972q;
    }

    public int hashCode() {
        return System.identityHashCode(this.f28972q);
    }

    @Override // da.i0
    public void m(g gVar, Runnable runnable) {
        if (this.f28972q.post(runnable)) {
            return;
        }
        G(gVar, runnable);
    }

    @Override // da.i0
    public boolean o(g gVar) {
        return (this.f28974s && m.a(Looper.myLooper(), this.f28972q.getLooper())) ? false : true;
    }

    @Override // da.h2, da.i0
    public String toString() {
        String strZ = z();
        if (strZ != null) {
            return strZ;
        }
        String string = this.f28973r;
        if (string == null) {
            string = this.f28972q.toString();
        }
        if (!this.f28974s) {
            return string;
        }
        return string + ".immediate";
    }

    public /* synthetic */ c(Handler handler, String str, int i10, t9.g gVar) {
        this(handler, (i10 & 2) != 0 ? null : str);
    }

    public c(Handler handler, String str) {
        this(handler, str, false);
    }
}
