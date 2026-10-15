package f9;

import com.google.gson.w;
import com.google.gson.x;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: SafeMapAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class m implements x {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: SafeMapAdapter.java */
    class a<T> extends w<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ w f29550a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ g7.a f29551b;

        a(w wVar, g7.a aVar) {
            this.f29550a = wVar;
            this.f29551b = aVar;
        }

        @Override // com.google.gson.w
        public T b(h7.a aVar) throws IOException {
            T t10 = (T) this.f29550a.b(aVar);
            return Map.class.isAssignableFrom(this.f29551b.getRawType()) ? t10 == null ? (T) Collections.EMPTY_MAP : (T) Collections.unmodifiableMap((Map) t10) : t10;
        }

        @Override // com.google.gson.w
        public void d(h7.c cVar, T t10) throws IOException {
            this.f29550a.d(cVar, t10);
        }
    }

    @Override // com.google.gson.x
    public <T> w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
        return new a(fVar.o(this, aVar), aVar);
    }
}
