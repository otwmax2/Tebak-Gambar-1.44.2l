package d7;

import com.google.gson.w;
import com.google.gson.x;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: compiled from: ObjectTypeAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public final class h extends w<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x f28653b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.f f28654a;

    /* JADX INFO: compiled from: ObjectTypeAdapter.java */
    class a implements x {
        a() {
        }

        @Override // com.google.gson.x
        public <T> w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
            if (aVar.getRawType() == Object.class) {
                return new h(fVar);
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: ObjectTypeAdapter.java */
    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f28655a;

        static {
            int[] iArr = new int[h7.b.values().length];
            f28655a = iArr;
            try {
                iArr[h7.b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28655a[h7.b.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f28655a[h7.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f28655a[h7.b.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f28655a[h7.b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f28655a[h7.b.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    h(com.google.gson.f fVar) {
        this.f28654a = fVar;
    }

    @Override // com.google.gson.w
    public Object b(h7.a aVar) throws IOException {
        switch (b.f28655a[aVar.x().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.b();
                while (aVar.j()) {
                    arrayList.add(b(aVar));
                }
                aVar.g();
                return arrayList;
            case 2:
                c7.h hVar = new c7.h();
                aVar.c();
                while (aVar.j()) {
                    hVar.put(aVar.r(), b(aVar));
                }
                aVar.h();
                return hVar;
            case 3:
                return aVar.v();
            case 4:
                return Double.valueOf(aVar.o());
            case 5:
                return Boolean.valueOf(aVar.n());
            case 6:
                aVar.t();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.google.gson.w
    public void d(h7.c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.n();
            return;
        }
        w wVarN = this.f28654a.n(obj.getClass());
        if (!(wVarN instanceof h)) {
            wVarN.d(cVar, obj);
        } else {
            cVar.e();
            cVar.h();
        }
    }
}
