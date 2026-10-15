package l3;

import com.google.auto.value.AutoValue;
import l3.c;

/* JADX INFO: compiled from: SendRequest.java */
/* JADX INFO: loaded from: classes.dex */
@AutoValue
abstract class o {

    /* JADX INFO: compiled from: SendRequest.java */
    @AutoValue.Builder
    public static abstract class a {
        public abstract o a();

        abstract a b(j3.b bVar);

        abstract a c(j3.c<?> cVar);

        abstract a d(j3.e<?, byte[]> eVar);

        public abstract a e(p pVar);

        public abstract a f(String str);
    }

    o() {
    }

    public static a a() {
        return new c.b();
    }

    public abstract j3.b b();

    abstract j3.c<?> c();

    public byte[] d() {
        return e().a(c().b());
    }

    abstract j3.e<?, byte[]> e();

    public abstract p f();

    public abstract String g();
}
