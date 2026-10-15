package j0;

import android.content.Context;
import da.d1;
import da.o0;
import da.p0;
import da.q2;
import java.util.List;
import s9.l;
import t9.m;
import t9.n;

/* JADX INFO: compiled from: PreferenceDataStoreDelegate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: j0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: PreferenceDataStoreDelegate.kt */
    public static final class C0180a extends n implements l<Context, List<? extends h0.d<k0.d>>> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final C0180a f30564o = new C0180a();

        C0180a() {
            super(1);
        }

        @Override // s9.l
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<h0.d<k0.d>> invoke(Context context) {
            m.e(context, "it");
            return i9.l.e();
        }
    }

    public static final v9.a<Context, h0.f<k0.d>> a(String str, i0.b<k0.d> bVar, l<? super Context, ? extends List<? extends h0.d<k0.d>>> lVar, o0 o0Var) {
        m.e(str, "name");
        m.e(lVar, "produceMigrations");
        m.e(o0Var, "scope");
        return new c(str, bVar, lVar, o0Var);
    }

    public static /* synthetic */ v9.a b(String str, i0.b bVar, l lVar, o0 o0Var, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bVar = null;
        }
        if ((i10 & 4) != 0) {
            lVar = C0180a.f30564o;
        }
        if ((i10 & 8) != 0) {
            d1 d1Var = d1.f28782a;
            o0Var = p0.a(d1.b().d(q2.b(null, 1, null)));
        }
        return a(str, bVar, lVar, o0Var);
    }
}
