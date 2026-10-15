package v4;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class l implements ServiceConnection {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ m f35814o;

    /* synthetic */ l(m mVar, k kVar) {
        this.f35814o = mVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f35814o.f35817b.d("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f35814o.c().post(new i(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f35814o.f35817b.d("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f35814o.c().post(new j(this));
    }
}
