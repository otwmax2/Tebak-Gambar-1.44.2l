package i2;

import android.content.Context;
import g2.k;
import g2.l;
import g2.m;
import java.io.InputStream;

/* JADX INFO: compiled from: HttpUrlGlideUrlLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k<g2.d, g2.d> f30391a;

    /* JADX INFO: renamed from: i2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: HttpUrlGlideUrlLoader.java */
    public static class C0176a implements m<g2.d, InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k<g2.d, g2.d> f30392a = new k<>(500);

        @Override // g2.m
        public l<g2.d, InputStream> a(Context context, g2.c cVar) {
            return new a(this.f30392a);
        }

        @Override // g2.m
        public void b() {
        }
    }

    public a(k<g2.d, g2.d> kVar) {
        this.f30391a = kVar;
    }

    @Override // g2.l
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a2.c<InputStream> a(g2.d dVar, int i10, int i11) {
        k<g2.d, g2.d> kVar = this.f30391a;
        if (kVar != null) {
            g2.d dVarA = kVar.a(dVar, 0, 0);
            if (dVarA == null) {
                this.f30391a.b(dVar, 0, 0, dVar);
            } else {
                dVar = dVarA;
            }
        }
        return new a2.f(dVar);
    }
}
