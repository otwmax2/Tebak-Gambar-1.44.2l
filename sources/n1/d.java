package n1;

import android.content.Context;
import android.os.Build;
import i1.k;
import q1.p;

/* JADX INFO: compiled from: NetworkConnectedController.java */
/* JADX INFO: loaded from: classes.dex */
public class d extends c<m1.b> {
    public d(Context context, s1.a aVar) {
        super(o1.g.c(context, aVar).d());
    }

    @Override // n1.c
    boolean b(p pVar) {
        return pVar.f33787j.b() == k.CONNECTED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // n1.c
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public boolean c(m1.b bVar) {
        return Build.VERSION.SDK_INT >= 26 ? (bVar.a() && bVar.d()) ? false : true : !bVar.a();
    }
}
