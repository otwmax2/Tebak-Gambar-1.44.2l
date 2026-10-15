package xa;

import com.google.gson.f;
import ja.b0;
import ja.d0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Objects;
import wa.e;
import wa.m;

/* JADX INFO: compiled from: GsonConverterFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a extends e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f36558a;

    private a(f fVar) {
        this.f36558a = fVar;
    }

    public static a d() {
        return e(new f());
    }

    public static a e(f fVar) {
        Objects.requireNonNull(fVar, "gson == null");
        return new a(fVar);
    }

    @Override // wa.e.a
    public e<?, b0> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, m mVar) {
        return new b(this.f36558a, this.f36558a.m(g7.a.get(type)));
    }

    @Override // wa.e.a
    public e<d0, ?> b(Type type, Annotation[] annotationArr, m mVar) {
        return new c(this.f36558a, this.f36558a.m(g7.a.get(type)));
    }
}
