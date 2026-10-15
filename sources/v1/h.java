package v1;

import android.content.Context;
import android.os.Build;
import d2.a;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: GlideBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f35744a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b2.c f35745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c2.c f35746c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d2.h f35747d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ExecutorService f35748e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ExecutorService f35749f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private z1.a f35750g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a.InterfaceC0142a f35751h;

    public h(Context context) {
        this.f35744a = context.getApplicationContext();
    }

    g a() {
        if (this.f35748e == null) {
            this.f35748e = new e2.a(Math.max(1, Runtime.getRuntime().availableProcessors()));
        }
        if (this.f35749f == null) {
            this.f35749f = new e2.a(1);
        }
        d2.i iVar = new d2.i(this.f35744a);
        if (this.f35746c == null) {
            if (Build.VERSION.SDK_INT >= 11) {
                this.f35746c = new c2.f(iVar.a());
            } else {
                this.f35746c = new c2.d();
            }
        }
        if (this.f35747d == null) {
            this.f35747d = new d2.g(iVar.c());
        }
        if (this.f35751h == null) {
            this.f35751h = new d2.f(this.f35744a);
        }
        if (this.f35745b == null) {
            this.f35745b = new b2.c(this.f35747d, this.f35751h, this.f35749f, this.f35748e);
        }
        if (this.f35750g == null) {
            this.f35750g = z1.a.f37194r;
        }
        return new g(this.f35745b, this.f35747d, this.f35746c, this.f35744a, this.f35750g);
    }

    public h b(a.InterfaceC0142a interfaceC0142a) {
        this.f35751h = interfaceC0142a;
        return this;
    }
}
