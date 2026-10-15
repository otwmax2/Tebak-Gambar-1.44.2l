package x6;

import android.util.Log;

/* JADX INFO: compiled from: EventGDTLogger.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class h implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f36420b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k6.b<j3.g> f36421a;

    /* JADX INFO: compiled from: EventGDTLogger.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    public h(k6.b<j3.g> bVar) {
        t9.m.e(bVar, "transportFactoryProvider");
        this.f36421a = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final byte[] c(a0 a0Var) {
        String strB = b0.f36321a.c().b(a0Var);
        t9.m.d(strB, "SessionEvents.SESSION_EVENT_ENCODER.encode(value)");
        Log.d("EventGDTLogger", "Session Event: " + strB);
        byte[] bytes = strB.getBytes(ba.d.f4713b);
        t9.m.d(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @Override // x6.i
    public void a(a0 a0Var) {
        t9.m.e(a0Var, "sessionEvent");
        this.f36421a.get().a("FIREBASE_APPQUALITY_SESSION", a0.class, j3.b.b("json"), new j3.e() { // from class: x6.g
            @Override // j3.e
            public final Object a(Object obj) {
                return this.f36406a.c((a0) obj);
            }
        }).b(j3.c.d(a0Var));
    }
}
