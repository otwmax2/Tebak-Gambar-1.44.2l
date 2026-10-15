package g6;

import g6.d;
import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: AtProtobuf.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f29902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d.a f29903b = d.a.DEFAULT;

    /* JADX INFO: renamed from: g6.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AtProtobuf.java */
    /* JADX INFO: loaded from: classes.dex */
    private static final class C0164a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f29904a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d.a f29905b;

        C0164a(int i10, d.a aVar) {
            this.f29904a = i10;
            this.f29905b = aVar;
        }

        @Override // java.lang.annotation.Annotation
        public Class<? extends Annotation> annotationType() {
            return d.class;
        }

        @Override // java.lang.annotation.Annotation
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f29904a == dVar.tag() && this.f29905b.equals(dVar.intEncoding());
        }

        @Override // java.lang.annotation.Annotation
        public int hashCode() {
            return (this.f29904a ^ 14552422) + (this.f29905b.hashCode() ^ 2041407134);
        }

        @Override // g6.d
        public d.a intEncoding() {
            return this.f29905b;
        }

        @Override // g6.d
        public int tag() {
            return this.f29904a;
        }

        @Override // java.lang.annotation.Annotation
        public String toString() {
            return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f29904a + "intEncoding=" + this.f29905b + ')';
        }
    }

    public static a b() {
        return new a();
    }

    public d a() {
        return new C0164a(this.f29902a, this.f29903b);
    }

    public a c(int i10) {
        this.f29902a = i10;
        return this;
    }
}
