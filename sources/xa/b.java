package xa;

import com.google.gson.f;
import com.google.gson.w;
import ja.b0;
import ja.v;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import wa.e;

/* JADX INFO: compiled from: GsonRequestBodyConverter.java */
/* JADX INFO: loaded from: classes2.dex */
final class b<T> implements e<T, b0> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final v f36559c = v.d("application/json; charset=UTF-8");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Charset f36560d = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f36561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w<T> f36562b;

    b(f fVar, w<T> wVar) {
        this.f36561a = fVar;
        this.f36562b = wVar;
    }

    @Override // wa.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public b0 convert(T t10) throws IOException {
        okio.c cVar = new okio.c();
        h7.c cVarR = this.f36561a.r(new OutputStreamWriter(cVar.k(), f36560d));
        this.f36562b.d(cVarR, t10);
        cVarR.close();
        return b0.create(f36559c, cVar.m());
    }
}
