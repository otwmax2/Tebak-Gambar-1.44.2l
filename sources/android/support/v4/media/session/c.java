package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.a;
import android.support.v4.media.session.e;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: compiled from: MediaControllerCompat.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c implements IBinder.DeathRecipient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object f174a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    android.support.v4.media.session.a f175b;

    /* JADX INFO: compiled from: MediaControllerCompat.java */
    private static class a implements e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<c> f176a;

        a(c cVar) {
            this.f176a = new WeakReference<>(cVar);
        }

        @Override // android.support.v4.media.session.e.a
        public void E0(Bundle bundle) {
            c cVar = this.f176a.get();
            if (cVar != null) {
                cVar.b(bundle);
            }
        }

        @Override // android.support.v4.media.session.e.a
        public void I0(List<?> list) {
            c cVar = this.f176a.get();
            if (cVar != null) {
                cVar.e(MediaSessionCompat.QueueItem.t(list));
            }
        }

        @Override // android.support.v4.media.session.e.a
        public void V0(CharSequence charSequence) {
            c cVar = this.f176a.get();
            if (cVar != null) {
                cVar.f(charSequence);
            }
        }

        @Override // android.support.v4.media.session.e.a
        public void Y0() {
            c cVar = this.f176a.get();
            if (cVar != null) {
                cVar.g();
            }
        }

        @Override // android.support.v4.media.session.e.a
        public void a(Object obj) {
            c cVar = this.f176a.get();
            if (cVar != null) {
                cVar.c(MediaMetadataCompat.h(obj));
            }
        }

        @Override // android.support.v4.media.session.e.a
        public void b(int i10, int i11, int i12, int i13, int i14) {
            c cVar = this.f176a.get();
            if (cVar != null) {
                cVar.a(new d(i10, i11, i12, i13, i14));
            }
        }

        @Override // android.support.v4.media.session.e.a
        public void c(Object obj) {
            c cVar = this.f176a.get();
            if (cVar == null || cVar.f175b != null) {
                return;
            }
            cVar.d(PlaybackStateCompat.h(obj));
        }

        @Override // android.support.v4.media.session.e.a
        public void d(String str, Bundle bundle) {
            c cVar = this.f176a.get();
            if (cVar != null) {
                if (cVar.f175b == null || Build.VERSION.SDK_INT >= 23) {
                    cVar.h(str, bundle);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: MediaControllerCompat.java */
    static class b extends a.AbstractBinderC0007a {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final WeakReference<c> f177o;

        b(c cVar) {
            this.f177o = new WeakReference<>(cVar);
        }

        public void E0(Bundle bundle) throws RemoteException {
            c cVar = this.f177o.get();
            if (cVar != null) {
                cVar.i(7, bundle, null);
            }
        }

        public void I0(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
            c cVar = this.f177o.get();
            if (cVar != null) {
                cVar.i(5, list, null);
            }
        }

        public void Pa(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
            c cVar = this.f177o.get();
            if (cVar != null) {
                cVar.i(4, parcelableVolumeInfo != null ? new d(parcelableVolumeInfo.f151o, parcelableVolumeInfo.f152p, parcelableVolumeInfo.f153q, parcelableVolumeInfo.f154r, parcelableVolumeInfo.f155s) : null, null);
            }
        }

        public void V0(CharSequence charSequence) throws RemoteException {
            c cVar = this.f177o.get();
            if (cVar != null) {
                cVar.i(6, charSequence, null);
            }
        }

        public void V6(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
            c cVar = this.f177o.get();
            if (cVar != null) {
                cVar.i(3, mediaMetadataCompat, null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void W7(int i10) throws RemoteException {
            c cVar = this.f177o.get();
            if (cVar != null) {
                cVar.i(12, Integer.valueOf(i10), null);
            }
        }

        public void Y0() throws RemoteException {
            c cVar = this.f177o.get();
            if (cVar != null) {
                cVar.i(8, null, null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void h7(int i10) throws RemoteException {
            c cVar = this.f177o.get();
            if (cVar != null) {
                cVar.i(9, Integer.valueOf(i10), null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void p6(boolean z10) throws RemoteException {
        }

        @Override // android.support.v4.media.session.a
        public void s1(String str, Bundle bundle) throws RemoteException {
            c cVar = this.f177o.get();
            if (cVar != null) {
                cVar.i(1, str, bundle);
            }
        }

        @Override // android.support.v4.media.session.a
        public void s5(boolean z10) throws RemoteException {
            c cVar = this.f177o.get();
            if (cVar != null) {
                cVar.i(11, Boolean.valueOf(z10), null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void w3() throws RemoteException {
            c cVar = this.f177o.get();
            if (cVar != null) {
                cVar.i(13, null, null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void za(PlaybackStateCompat playbackStateCompat) throws RemoteException {
            c cVar = this.f177o.get();
            if (cVar != null) {
                cVar.i(2, playbackStateCompat, null);
            }
        }
    }

    public c() {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f174a = e.a(new a(this));
            return;
        }
        b bVar = new b(this);
        this.f175b = bVar;
        this.f174a = bVar;
    }

    public void a(d dVar) {
    }

    public void b(Bundle bundle) {
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        i(8, null, null);
    }

    public void c(MediaMetadataCompat mediaMetadataCompat) {
    }

    public void d(PlaybackStateCompat playbackStateCompat) {
    }

    public void e(List<MediaSessionCompat.QueueItem> list) {
    }

    public void f(CharSequence charSequence) {
    }

    public void g() {
    }

    public void h(String str, Bundle bundle) {
    }

    void i(int i10, Object obj, Bundle bundle) {
    }
}
