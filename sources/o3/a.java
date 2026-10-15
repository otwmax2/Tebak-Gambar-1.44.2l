package o3;

import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import l3.m;

/* JADX INFO: compiled from: ClientMetrics.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a f32928e = new C0210a().b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f32929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<d> f32930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f32931c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f32932d;

    /* JADX INFO: renamed from: o3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ClientMetrics.java */
    public static final class C0210a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private f f32933a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<d> f32934b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private b f32935c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f32936d = BuildConfig.FLAVOR;

        C0210a() {
        }

        public C0210a a(d dVar) {
            this.f32934b.add(dVar);
            return this;
        }

        public a b() {
            return new a(this.f32933a, Collections.unmodifiableList(this.f32934b), this.f32935c, this.f32936d);
        }

        public C0210a c(String str) {
            this.f32936d = str;
            return this;
        }

        public C0210a d(b bVar) {
            this.f32935c = bVar;
            return this;
        }

        public C0210a e(f fVar) {
            this.f32933a = fVar;
            return this;
        }
    }

    a(f fVar, List<d> list, b bVar, String str) {
        this.f32929a = fVar;
        this.f32930b = list;
        this.f32931c = bVar;
        this.f32932d = str;
    }

    public static C0210a e() {
        return new C0210a();
    }

    @g6.d(tag = 4)
    public String a() {
        return this.f32932d;
    }

    @g6.d(tag = 3)
    public b b() {
        return this.f32931c;
    }

    @g6.d(tag = 2)
    public List<d> c() {
        return this.f32930b;
    }

    @g6.d(tag = 1)
    public f d() {
        return this.f32929a;
    }

    public byte[] f() {
        return m.a(this);
    }
}
