package t9;

/* JADX INFO: compiled from: ReflectionFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class a0 {
    public z9.d a(i iVar) {
        return iVar;
    }

    public z9.b b(Class cls) {
        return new e(cls);
    }

    public z9.c c(Class cls, String str) {
        return new o(cls, str);
    }

    public z9.e d(p pVar) {
        return pVar;
    }

    public z9.f e(r rVar) {
        return rVar;
    }

    public z9.g f(t tVar) {
        return tVar;
    }

    public String g(h hVar) {
        String string = hVar.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith("kotlin.jvm.functions.") ? string.substring(21) : string;
    }

    public String h(n nVar) {
        return g(nVar);
    }
}
