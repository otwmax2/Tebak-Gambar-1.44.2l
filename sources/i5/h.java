package i5;

import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class h implements Continuation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ e f30416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ i f30417b;

    h(i iVar, e eVar) {
        this.f30417b = iVar;
        this.f30416a = eVar;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Object a(Task task) throws Exception {
        return task.o() instanceof UnsupportedApiCallException ? this.f30417b.b(this.f30416a.a()) : task;
    }
}
