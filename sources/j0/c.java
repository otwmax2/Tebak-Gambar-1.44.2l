package j0;

import android.content.Context;
import da.o0;
import java.io.File;
import java.util.List;
import s9.l;
import t9.m;
import t9.n;

/* JADX INFO: compiled from: PreferenceDataStoreDelegate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements v9.a<Context, h0.f<k0.d>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f30565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i0.b<k0.d> f30566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l<Context, List<h0.d<k0.d>>> f30567c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final o0 f30568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f30569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile h0.f<k0.d> f30570f;

    /* JADX INFO: compiled from: PreferenceDataStoreDelegate.kt */
    static final class a extends n implements s9.a<File> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Context f30571o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ c f30572p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, c cVar) {
            super(0);
            this.f30571o = context;
            this.f30572p = cVar;
        }

        @Override // s9.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final File invoke() {
            Context context = this.f30571o;
            m.d(context, "applicationContext");
            return b.a(context, this.f30572p.f30565a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(String str, i0.b<k0.d> bVar, l<? super Context, ? extends List<? extends h0.d<k0.d>>> lVar, o0 o0Var) {
        m.e(str, "name");
        m.e(lVar, "produceMigrations");
        m.e(o0Var, "scope");
        this.f30565a = str;
        this.f30567c = lVar;
        this.f30568d = o0Var;
        this.f30569e = new Object();
    }

    @Override // v9.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public h0.f<k0.d> a(Context context, z9.h<?> hVar) {
        h0.f<k0.d> fVar;
        m.e(context, "thisRef");
        m.e(hVar, "property");
        h0.f<k0.d> fVar2 = this.f30570f;
        if (fVar2 != null) {
            return fVar2;
        }
        synchronized (this.f30569e) {
            if (this.f30570f == null) {
                Context applicationContext = context.getApplicationContext();
                k0.c cVar = k0.c.f31282a;
                i0.b<k0.d> bVar = this.f30566b;
                l<Context, List<h0.d<k0.d>>> lVar = this.f30567c;
                m.d(applicationContext, "applicationContext");
                this.f30570f = cVar.a(bVar, lVar.invoke(applicationContext), this.f30568d, new a(applicationContext, this));
            }
            fVar = this.f30570f;
            m.b(fVar);
        }
        return fVar;
    }
}
