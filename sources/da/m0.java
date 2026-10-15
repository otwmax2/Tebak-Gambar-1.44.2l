package da;

import k9.g;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: compiled from: CoroutineContext.kt */
/* JADX INFO: loaded from: classes2.dex */
@IgnoreJRERequirement
public final class m0 extends k9.a implements r2<String> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final a f28829q = new a(null);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f28830p;

    /* JADX INFO: compiled from: CoroutineContext.kt */
    public static final class a implements g.c<m0> {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    public m0(long j10) {
        super(f28829q);
        this.f28830p = j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof m0) && this.f28830p == ((m0) obj).f28830p;
    }

    public int hashCode() {
        return com.facebook.e.a(this.f28830p);
    }

    public final long m() {
        return this.f28830p;
    }

    @Override // da.r2
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void C(k9.g gVar, String str) {
        Thread.currentThread().setName(str);
    }

    public String toString() {
        return "CoroutineId(" + this.f28830p + ')';
    }

    @Override // da.r2
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public String n(k9.g gVar) {
        String strM;
        n0 n0Var = (n0) gVar.b(n0.f28837q);
        if (n0Var == null || (strM = n0Var.m()) == null) {
            strM = "coroutine";
        }
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        int iL = ba.q.L(name, " @", 0, false, 6, null);
        if (iL < 0) {
            iL = name.length();
        }
        StringBuilder sb = new StringBuilder(strM.length() + iL + 10);
        String strSubstring = name.substring(0, iL);
        t9.m.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        sb.append(strSubstring);
        sb.append(" @");
        sb.append(strM);
        sb.append('#');
        sb.append(this.f28830p);
        String string = sb.toString();
        t9.m.d(string, "StringBuilder(capacity).…builderAction).toString()");
        threadCurrentThread.setName(string);
        return name;
    }
}
