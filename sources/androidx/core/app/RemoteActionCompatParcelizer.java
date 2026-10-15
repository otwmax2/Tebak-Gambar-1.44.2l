package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(androidx.versionedparcelable.a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f1964a = (IconCompat) aVar.v(remoteActionCompat.f1964a, 1);
        remoteActionCompat.f1965b = aVar.l(remoteActionCompat.f1965b, 2);
        remoteActionCompat.f1966c = aVar.l(remoteActionCompat.f1966c, 3);
        remoteActionCompat.f1967d = (PendingIntent) aVar.r(remoteActionCompat.f1967d, 4);
        remoteActionCompat.f1968e = aVar.h(remoteActionCompat.f1968e, 5);
        remoteActionCompat.f1969f = aVar.h(remoteActionCompat.f1969f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, androidx.versionedparcelable.a aVar) {
        aVar.x(false, false);
        aVar.M(remoteActionCompat.f1964a, 1);
        aVar.D(remoteActionCompat.f1965b, 2);
        aVar.D(remoteActionCompat.f1966c, 3);
        aVar.H(remoteActionCompat.f1967d, 4);
        aVar.z(remoteActionCompat.f1968e, 5);
        aVar.z(remoteActionCompat.f1969f, 6);
    }
}
