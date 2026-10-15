package d2;

import android.annotation.SuppressLint;
import b2.l;
import d2.h;

/* JADX INFO: compiled from: LruResourceCache.java */
/* JADX INFO: loaded from: classes.dex */
public class g extends x2.e<z1.c, l<?>> implements h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h.a f28619e;

    public g(int i10) {
        super(i10);
    }

    @Override // d2.h
    public void a(h.a aVar) {
        this.f28619e = aVar;
    }

    @Override // d2.h
    public /* bridge */ /* synthetic */ l b(z1.c cVar, l lVar) {
        return (l) super.k(cVar, lVar);
    }

    @Override // d2.h
    @SuppressLint({"InlinedApi"})
    public void c(int i10) {
        if (i10 >= 60) {
            d();
        } else if (i10 >= 40) {
            m(h() / 2);
        }
    }

    @Override // d2.h
    public /* bridge */ /* synthetic */ l e(z1.c cVar) {
        return (l) super.l(cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // x2.e
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int i(l<?> lVar) {
        return lVar.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // x2.e
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void j(z1.c cVar, l<?> lVar) {
        h.a aVar = this.f28619e;
        if (aVar != null) {
            aVar.c(lVar);
        }
    }
}
