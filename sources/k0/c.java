package k0;

import da.o0;
import java.io.File;
import java.util.List;
import q9.k;
import t9.m;
import t9.n;

/* JADX INFO: compiled from: PreferenceDataStoreFactory.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f31282a = new c();

    /* JADX INFO: compiled from: PreferenceDataStoreFactory.kt */
    static final class a extends n implements s9.a<File> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ s9.a<File> f31283o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(s9.a<? extends File> aVar) {
            super(0);
            this.f31283o = aVar;
        }

        @Override // s9.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final File invoke() {
            File fileInvoke = this.f31283o.invoke();
            String strD = k.d(fileInvoke);
            h hVar = h.f31290a;
            if (m.a(strD, hVar.f())) {
                return fileInvoke;
            }
            throw new IllegalStateException(("File extension for file: " + fileInvoke + " does not match required extension for Preferences file: " + hVar.f()).toString());
        }
    }

    private c() {
    }

    public final h0.f<d> a(i0.b<d> bVar, List<? extends h0.d<d>> list, o0 o0Var, s9.a<? extends File> aVar) {
        m.e(list, "migrations");
        m.e(o0Var, "scope");
        m.e(aVar, "produceFile");
        return new b(h0.g.f30126a.a(h.f31290a, bVar, list, o0Var, new a(aVar)));
    }
}
