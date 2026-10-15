package o1;

import android.content.Context;

/* JADX INFO: compiled from: Trackers.java */
/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static g f32902e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f32903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f32904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f32905c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f32906d;

    private g(Context context, s1.a aVar) {
        Context applicationContext = context.getApplicationContext();
        this.f32903a = new a(applicationContext, aVar);
        this.f32904b = new b(applicationContext, aVar);
        this.f32905c = new e(applicationContext, aVar);
        this.f32906d = new f(applicationContext, aVar);
    }

    public static synchronized g c(Context context, s1.a aVar) {
        if (f32902e == null) {
            f32902e = new g(context, aVar);
        }
        return f32902e;
    }

    public a a() {
        return this.f32903a;
    }

    public b b() {
        return this.f32904b;
    }

    public e d() {
        return this.f32905c;
    }

    public f e() {
        return this.f32906d;
    }
}
