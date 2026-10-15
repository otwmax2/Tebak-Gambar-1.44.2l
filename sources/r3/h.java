package r3;

import android.content.Context;
import android.os.Build;
import s3.y;

/* JADX INFO: compiled from: SchedulingModule.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class h {
    static y a(Context context, t3.d dVar, s3.g gVar, v3.a aVar) {
        return Build.VERSION.SDK_INT >= 21 ? new s3.e(context, dVar, gVar) : new s3.a(context, dVar, aVar, gVar);
    }
}
