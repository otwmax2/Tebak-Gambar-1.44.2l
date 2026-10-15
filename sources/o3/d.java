package o3;

import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: LogSourceMetrics.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final d f32954c = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f32955a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<c> f32956b;

    /* JADX INFO: compiled from: LogSourceMetrics.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f32957a = BuildConfig.FLAVOR;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<c> f32958b = new ArrayList();

        a() {
        }

        public d a() {
            return new d(this.f32957a, Collections.unmodifiableList(this.f32958b));
        }

        public a b(List<c> list) {
            this.f32958b = list;
            return this;
        }

        public a c(String str) {
            this.f32957a = str;
            return this;
        }
    }

    d(String str, List<c> list) {
        this.f32955a = str;
        this.f32956b = list;
    }

    public static a c() {
        return new a();
    }

    @g6.d(tag = 2)
    public List<c> a() {
        return this.f32956b;
    }

    @g6.d(tag = 1)
    public String b() {
        return this.f32955a;
    }
}
