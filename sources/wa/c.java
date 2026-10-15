package wa;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: CallAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public interface c<R, T> {

    /* JADX INFO: compiled from: CallAdapter.java */
    /* JADX INFO: loaded from: classes.dex */
    public static abstract class a {
        protected static Class<?> b(Type type) {
            return o.i(type);
        }

        @Nullable
        public abstract c<?, ?> a(Type type, Annotation[] annotationArr, m mVar);
    }

    Type a();

    T b(b<R> bVar);
}
