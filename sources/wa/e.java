package wa;

import ja.b0;
import ja.d0;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Converter.java */
/* JADX INFO: loaded from: classes2.dex */
public interface e<F, T> {

    /* JADX INFO: compiled from: Converter.java */
    /* JADX INFO: loaded from: classes.dex */
    public static abstract class a {
        @Nullable
        public e<?, b0> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, m mVar) {
            return null;
        }

        @Nullable
        public e<d0, ?> b(Type type, Annotation[] annotationArr, m mVar) {
            return null;
        }

        @Nullable
        public e<?, String> c(Type type, Annotation[] annotationArr, m mVar) {
            return null;
        }
    }

    T convert(F f10) throws IOException;
}
