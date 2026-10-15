package n1;

import android.content.Context;
import android.os.Build;
import i1.j;
import i1.k;
import q1.p;

/* JADX INFO: compiled from: NetworkMeteredController.java */
/* JADX INFO: loaded from: classes.dex */
public class e extends c<m1.b> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f32371e = j.f("NetworkMeteredCtrlr");

    public e(Context context, s1.a aVar) {
        super(o1.g.c(context, aVar).d());
    }

    @Override // n1.c
    boolean b(p pVar) {
        return pVar.f33787j.b() == k.METERED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // n1.c
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public boolean c(m1.b bVar) {
        if (Build.VERSION.SDK_INT >= 26) {
            return (bVar.a() && bVar.b()) ? false : true;
        }
        j.c().a(f32371e, "Metered network constraint is not supported before API 26, only checking for connected state.", new Throwable[0]);
        return !bVar.a();
    }
}
