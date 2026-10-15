package android.support.v4.media.session;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.b;
import android.support.v4.media.session.c;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaControllerCompat$MediaControllerImplApi21 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object f139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<c> f140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashMap<c, a> f141c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final MediaSessionCompat.Token f142d;

    private static class ExtraBinderRequestResultReceiver extends ResultReceiver {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private WeakReference<MediaControllerCompat$MediaControllerImplApi21> f143o;

        @Override // android.os.ResultReceiver
        protected void onReceiveResult(int i10, Bundle bundle) {
            MediaControllerCompat$MediaControllerImplApi21 mediaControllerCompat$MediaControllerImplApi21 = this.f143o.get();
            if (mediaControllerCompat$MediaControllerImplApi21 == null || bundle == null) {
                return;
            }
            synchronized (mediaControllerCompat$MediaControllerImplApi21.f139a) {
                mediaControllerCompat$MediaControllerImplApi21.f142d.t(b.a.P0(androidx.core.app.f.a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                mediaControllerCompat$MediaControllerImplApi21.f142d.v(bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"));
                mediaControllerCompat$MediaControllerImplApi21.a();
            }
        }
    }

    private static class a extends c.b {
        a(c cVar) {
            super(cVar);
        }

        @Override // android.support.v4.media.session.c.b, android.support.v4.media.session.a
        public void E0(Bundle bundle) throws RemoteException {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.c.b, android.support.v4.media.session.a
        public void I0(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.c.b, android.support.v4.media.session.a
        public void Pa(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.c.b, android.support.v4.media.session.a
        public void V0(CharSequence charSequence) throws RemoteException {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.c.b, android.support.v4.media.session.a
        public void V6(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.c.b, android.support.v4.media.session.a
        public void Y0() throws RemoteException {
            throw new AssertionError();
        }
    }

    void a() {
        if (this.f142d.h() == null) {
            return;
        }
        for (c cVar : this.f140b) {
            a aVar = new a(cVar);
            this.f141c.put(cVar, aVar);
            cVar.f175b = aVar;
            try {
                this.f142d.h().P1(aVar);
                cVar.i(13, null, null);
            } catch (RemoteException e10) {
                Log.e("MediaControllerCompat", "Dead object in registerCallback.", e10);
            }
        }
        this.f140b.clear();
    }
}
