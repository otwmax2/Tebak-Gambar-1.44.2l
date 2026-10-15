package d8;

import e8.b;
import e8.e;
import e8.f;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c implements b.InterfaceC0155b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f28762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e8.c f28763b;

    public c(e8.c cVar) {
        this.f28763b = cVar;
    }

    @Override // e8.b.InterfaceC0155b
    public JSONObject a() {
        return this.f28762a;
    }

    @Override // e8.b.InterfaceC0155b
    public void b(JSONObject jSONObject) {
        this.f28762a = jSONObject;
    }

    public void c() {
        this.f28763b.c(new e8.d(this));
    }

    public void d(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f28763b.c(new f(this, hashSet, jSONObject, j10));
    }

    public void e(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f28763b.c(new e(this, hashSet, jSONObject, j10));
    }
}
