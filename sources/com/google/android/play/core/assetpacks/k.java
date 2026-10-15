package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
class k<T> extends v4.j0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final y4.p<T> f25959o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ s f25960p;

    k(s sVar, y4.p<T> pVar) {
        this.f25960p = sVar;
        this.f25959o = pVar;
    }

    @Override // v4.k0
    public void F9(int i10, Bundle bundle) {
        this.f25960p.f26070d.s(this.f25959o);
        s.f26065g.d("onStartDownload(%d)", Integer.valueOf(i10));
    }

    @Override // v4.k0
    public void G1(Bundle bundle, Bundle bundle2) throws RemoteException {
        this.f25960p.f26070d.s(this.f25959o);
        s.f26065g.d("onGetChunkFileDescriptor", new Object[0]);
    }

    @Override // v4.k0
    public final void H4(Bundle bundle, Bundle bundle2) {
        this.f25960p.f26070d.s(this.f25959o);
        s.f26065g.d("onRemoveModule()", new Object[0]);
    }

    @Override // v4.k0
    public final void Qa(Bundle bundle, Bundle bundle2) {
        this.f25960p.f26070d.s(this.f25959o);
        s.f26065g.d("onNotifyChunkTransferred(%s, %s, %d, session=%d)", bundle.getString("module_name"), bundle.getString("slice_id"), Integer.valueOf(bundle.getInt("chunk_number")), Integer.valueOf(bundle.getInt(SDKAnalyticsEvents.PARAMETER_SESSION_ID)));
    }

    @Override // v4.k0
    public void W5(Bundle bundle, Bundle bundle2) {
        this.f25960p.f26070d.s(this.f25959o);
        s.f26065g.d("onRequestDownloadInfo()", new Object[0]);
    }

    @Override // v4.k0
    public void X(Bundle bundle) {
        this.f25960p.f26070d.s(this.f25959o);
        int i10 = bundle.getInt("error_code");
        s.f26065g.b("onError(%d)", Integer.valueOf(i10));
        this.f25959o.d(new a(i10));
    }

    @Override // v4.k0
    public final void Y7(Bundle bundle, Bundle bundle2) {
        this.f25960p.f26070d.s(this.f25959o);
        s.f26065g.d("onNotifySessionFailed(%d)", Integer.valueOf(bundle.getInt(SDKAnalyticsEvents.PARAMETER_SESSION_ID)));
    }

    @Override // v4.k0
    public void g2(List<Bundle> list) {
        this.f25960p.f26070d.s(this.f25959o);
        s.f26065g.d("onGetSessionStates", new Object[0]);
    }

    @Override // v4.k0
    public final void l7(Bundle bundle, Bundle bundle2) {
        this.f25960p.f26070d.s(this.f25959o);
        s.f26065g.d("onNotifyModuleCompleted(%s, sessionId=%d)", bundle.getString("module_name"), Integer.valueOf(bundle.getInt(SDKAnalyticsEvents.PARAMETER_SESSION_ID)));
    }

    @Override // v4.k0
    public final void ma(int i10, Bundle bundle) {
        this.f25960p.f26070d.s(this.f25959o);
        s.f26065g.d("onGetSession(%d)", Integer.valueOf(i10));
    }

    @Override // v4.k0
    public void o9(Bundle bundle, Bundle bundle2) {
        this.f25960p.f26070d.s(this.f25959o);
        s.f26065g.d("onKeepAlive(%b)", Boolean.valueOf(bundle.getBoolean("keep_alive")));
    }

    @Override // v4.k0
    public final void p0(int i10, Bundle bundle) {
        this.f25960p.f26070d.s(this.f25959o);
        s.f26065g.d("onCancelDownload(%d)", Integer.valueOf(i10));
    }

    @Override // v4.k0
    public final void v6(Bundle bundle) {
        this.f25960p.f26070d.s(this.f25959o);
        s.f26065g.d("onCancelDownloads()", new Object[0]);
    }
}
