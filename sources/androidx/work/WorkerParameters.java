package androidx.work;

import android.net.Network;
import android.net.Uri;
import i1.f;
import i1.o;
import i1.v;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class WorkerParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private UUID f4345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f4346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Set<String> f4347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f4348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4349e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Executor f4350f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private s1.a f4351g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private v f4352h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private o f4353i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private f f4354j;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List<String> f4355a = Collections.emptyList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List<Uri> f4356b = Collections.emptyList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Network f4357c;
    }

    public WorkerParameters(UUID uuid, b bVar, Collection<String> collection, a aVar, int i10, Executor executor, s1.a aVar2, v vVar, o oVar, f fVar) {
        this.f4345a = uuid;
        this.f4346b = bVar;
        this.f4347c = new HashSet(collection);
        this.f4348d = aVar;
        this.f4349e = i10;
        this.f4350f = executor;
        this.f4351g = aVar2;
        this.f4352h = vVar;
        this.f4353i = oVar;
        this.f4354j = fVar;
    }

    public Executor a() {
        return this.f4350f;
    }

    public f b() {
        return this.f4354j;
    }

    public UUID c() {
        return this.f4345a;
    }

    public b d() {
        return this.f4346b;
    }

    public Network e() {
        return this.f4348d.f4357c;
    }

    public o f() {
        return this.f4353i;
    }

    public int g() {
        return this.f4349e;
    }

    public Set<String> h() {
        return this.f4347c;
    }

    public s1.a i() {
        return this.f4351g;
    }

    public List<String> j() {
        return this.f4348d.f4355a;
    }

    public List<Uri> k() {
        return this.f4348d.f4356b;
    }

    public v l() {
        return this.f4352h;
    }
}
