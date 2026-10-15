package q2;

import android.content.Context;
import q2.c;

/* JADX INFO: compiled from: ConnectivityMonitorFactory.java */
/* JADX INFO: loaded from: classes.dex */
public class d {
    public c a(Context context, c.a aVar) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0 ? new e(context, aVar) : new i();
    }
}
