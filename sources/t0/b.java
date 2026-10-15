package t0;

import android.content.Context;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: Loader.java */
/* JADX INFO: loaded from: classes.dex */
public class b<D> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f35146a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    InterfaceC0251b<D> f35147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    a<D> f35148c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Context f35149d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f35150e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f35151f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f35152g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f35153h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f35154i = false;

    /* JADX INFO: compiled from: Loader.java */
    public interface a<D> {
        void a(b<D> bVar);
    }

    /* JADX INFO: renamed from: t0.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Loader.java */
    public interface InterfaceC0251b<D> {
        void a(b<D> bVar, D d10);
    }

    public b(Context context) {
        this.f35149d = context.getApplicationContext();
    }

    public void a() {
        this.f35151f = true;
        j();
    }

    public boolean b() {
        return k();
    }

    public void c() {
        this.f35154i = false;
    }

    public String d(D d10) {
        StringBuilder sb = new StringBuilder(64);
        androidx.core.util.b.a(d10, sb);
        sb.append("}");
        return sb.toString();
    }

    public void e() {
        a<D> aVar = this.f35148c;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void f(D d10) {
        InterfaceC0251b<D> interfaceC0251b = this.f35147b;
        if (interfaceC0251b != null) {
            interfaceC0251b.a(this, d10);
        }
    }

    @Deprecated
    public void g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f35146a);
        printWriter.print(" mListener=");
        printWriter.println(this.f35147b);
        if (this.f35150e || this.f35153h || this.f35154i) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f35150e);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f35153h);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.f35154i);
        }
        if (this.f35151f || this.f35152g) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.f35151f);
            printWriter.print(" mReset=");
            printWriter.println(this.f35152g);
        }
    }

    public void h() {
        m();
    }

    public boolean i() {
        return this.f35151f;
    }

    protected void j() {
    }

    protected boolean k() {
        throw null;
    }

    public void l() {
        if (this.f35150e) {
            h();
        } else {
            this.f35153h = true;
        }
    }

    protected void m() {
    }

    protected void n() {
    }

    protected void o() {
        throw null;
    }

    protected void p() {
    }

    public void q(int i10, InterfaceC0251b<D> interfaceC0251b) {
        if (this.f35147b != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.f35147b = interfaceC0251b;
        this.f35146a = i10;
    }

    public void r() {
        n();
        this.f35152g = true;
        this.f35150e = false;
        this.f35151f = false;
        this.f35153h = false;
        this.f35154i = false;
    }

    public void s() {
        if (this.f35154i) {
            l();
        }
    }

    public final void t() {
        this.f35150e = true;
        this.f35152g = false;
        this.f35151f = false;
        o();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        androidx.core.util.b.a(this, sb);
        sb.append(" id=");
        sb.append(this.f35146a);
        sb.append("}");
        return sb.toString();
    }

    public void u() {
        this.f35150e = false;
        p();
    }

    public void v(InterfaceC0251b<D> interfaceC0251b) {
        InterfaceC0251b<D> interfaceC0251b2 = this.f35147b;
        if (interfaceC0251b2 == null) {
            throw new IllegalStateException("No listener register");
        }
        if (interfaceC0251b2 != interfaceC0251b) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.f35147b = null;
    }
}
