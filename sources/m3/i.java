package m3;

import android.content.Context;
import javax.inject.Inject;

/* JADX INFO: compiled from: CreationContextFactory.java */
/* JADX INFO: loaded from: classes.dex */
class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f32142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v3.a f32143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v3.a f32144c;

    @Inject
    i(Context context, v3.a aVar, v3.a aVar2) {
        this.f32142a = context;
        this.f32143b = aVar;
        this.f32144c = aVar2;
    }

    h a(String str) {
        return h.a(this.f32142a, this.f32143b, this.f32144c, str);
    }
}
