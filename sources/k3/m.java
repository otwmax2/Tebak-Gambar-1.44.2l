package k3;

import com.google.auto.value.AutoValue;
import java.util.List;
import k3.g;

/* JADX INFO: compiled from: LogRequest.java */
/* JADX INFO: loaded from: classes.dex */
@AutoValue
public abstract class m {

    /* JADX INFO: compiled from: LogRequest.java */
    @AutoValue.Builder
    public static abstract class a {
        public abstract m a();

        public abstract a b(k kVar);

        public abstract a c(List<l> list);

        abstract a d(Integer num);

        abstract a e(String str);

        public abstract a f(p pVar);

        public abstract a g(long j10);

        public abstract a h(long j10);

        public a i(int i10) {
            return d(Integer.valueOf(i10));
        }

        public a j(String str) {
            return e(str);
        }
    }

    public static a a() {
        return new g.b();
    }

    public abstract k b();

    public abstract List<l> c();

    public abstract Integer d();

    public abstract String e();

    public abstract p f();

    public abstract long g();

    public abstract long h();
}
