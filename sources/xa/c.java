package xa;

import com.google.gson.f;
import com.google.gson.m;
import com.google.gson.w;
import ja.d0;
import java.io.IOException;
import wa.e;

/* JADX INFO: compiled from: GsonResponseBodyConverter.java */
/* JADX INFO: loaded from: classes2.dex */
final class c<T> implements e<d0, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f36563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w<T> f36564b;

    c(f fVar, w<T> wVar) {
        this.f36563a = fVar;
        this.f36564b = wVar;
    }

    @Override // wa.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public T convert(d0 d0Var) throws IOException {
        h7.a aVarQ = this.f36563a.q(d0Var.charStream());
        try {
            T tB = this.f36564b.b(aVarQ);
            if (aVarQ.x() == h7.b.END_DOCUMENT) {
                return tB;
            }
            throw new m("JSON document was not fully consumed.");
        } finally {
            d0Var.close();
        }
    }
}
