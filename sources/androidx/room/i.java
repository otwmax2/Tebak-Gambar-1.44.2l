package androidx.room;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.room.h0;
import b1.h;
import java.io.File;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: DatabaseConfiguration.java */
/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h.c f4100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f4101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4102c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h0.d f4103d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<h0.b> f4104e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final h0.e f4105f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<Object> f4106g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<y0.a> f4107h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f4108i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final h0.c f4109j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Executor f4110k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Executor f4111l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f4112m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f4113n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f4114o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Set<Integer> f4115p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f4116q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final File f4117r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Callable<InputStream> f4118s;

    @SuppressLint({"LambdaLast"})
    public i(Context context, String str, h.c cVar, h0.d dVar, List<h0.b> list, boolean z10, h0.c cVar2, Executor executor, Executor executor2, boolean z11, boolean z12, boolean z13, Set<Integer> set, String str2, File file, Callable<InputStream> callable, h0.e eVar, List<Object> list2, List<y0.a> list3) {
        this.f4100a = cVar;
        this.f4101b = context;
        this.f4102c = str;
        this.f4103d = dVar;
        this.f4104e = list;
        this.f4108i = z10;
        this.f4109j = cVar2;
        this.f4110k = executor;
        this.f4111l = executor2;
        this.f4112m = z11;
        this.f4113n = z12;
        this.f4114o = z13;
        this.f4115p = set;
        this.f4116q = str2;
        this.f4117r = file;
        this.f4118s = callable;
        this.f4106g = list2 == null ? Collections.emptyList() : list2;
        this.f4107h = list3 == null ? Collections.emptyList() : list3;
    }

    public boolean a(int i10, int i11) {
        Set<Integer> set;
        return !((i10 > i11) && this.f4114o) && this.f4113n && ((set = this.f4115p) == null || !set.contains(Integer.valueOf(i10)));
    }
}
