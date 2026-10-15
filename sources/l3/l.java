package l3;

import android.annotation.SuppressLint;

/* JADX INFO: compiled from: ForcedSender.java */
/* JADX INFO: loaded from: classes.dex */
public final class l {
    @SuppressLint({"DiscouragedApi"})
    public static void a(j3.f<?> fVar, j3.d dVar) {
        if (!(fVar instanceof s)) {
            p3.a.g("ForcedSender", "Expected instance of `TransportImpl`, got `%s`.", fVar);
        } else {
            u.c().e().u(((s) fVar).d().f(dVar), 1);
        }
    }
}
