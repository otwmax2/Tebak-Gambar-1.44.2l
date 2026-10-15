package f9;

import com.google.gson.w;
import com.google.gson.x;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: SafeListAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class l implements x {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: SafeListAdapter.java */
    class a<T> extends w<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ w f29547a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ g7.a f29548b;

        a(w wVar, g7.a aVar) {
            this.f29547a = wVar;
            this.f29548b = aVar;
        }

        @Override // com.google.gson.w
        public T b(h7.a aVar) throws IOException {
            T t10 = (T) this.f29547a.b(aVar);
            return List.class.isAssignableFrom(this.f29548b.getRawType()) ? t10 == null ? (T) Collections.EMPTY_LIST : (T) Collections.unmodifiableList((List) t10) : t10;
        }

        @Override // com.google.gson.w
        public void d(h7.c cVar, T t10) throws IOException {
            this.f29547a.d(cVar, t10);
        }
    }

    @Override // com.google.gson.x
    public <T> w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
        return new a(fVar.o(this, aVar), aVar);
    }
}
