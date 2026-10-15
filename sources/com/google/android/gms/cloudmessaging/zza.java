package com.google.android.gms.cloudmessaging;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cloudmessaging.IMessengerCompat;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class zza implements Parcelable {
    public static final Parcelable.Creator<zza> CREATOR = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Messenger f6884o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private IMessengerCompat f6885p;

    /* JADX INFO: renamed from: com.google.android.gms.cloudmessaging.zza$zza, reason: collision with other inner class name */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
    public static final class C0105zza extends ClassLoader {
        @Override // java.lang.ClassLoader
        protected final Class<?> loadClass(String str, boolean z10) throws ClassNotFoundException {
            if (!"com.google.android.gms.iid.MessengerCompat".equals(str)) {
                return super.loadClass(str, z10);
            }
            if (!(Log.isLoggable("CloudMessengerCompat", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("CloudMessengerCompat", 3)))) {
                return zza.class;
            }
            Log.d("CloudMessengerCompat", "Using renamed FirebaseIidMessengerCompat class");
            return zza.class;
        }
    }

    public zza(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f6884o = new Messenger(iBinder);
        } else {
            this.f6885p = new IMessengerCompat.Proxy(iBinder);
        }
    }

    private final IBinder h() {
        Messenger messenger = this.f6884o;
        return messenger != null ? messenger.getBinder() : this.f6885p.asBinder();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return h().equals(((zza) obj).h());
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int hashCode() {
        return h().hashCode();
    }

    public final void t(Message message) throws RemoteException {
        Messenger messenger = this.f6884o;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.f6885p.U2(message);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        Messenger messenger = this.f6884o;
        if (messenger != null) {
            parcel.writeStrongBinder(messenger.getBinder());
        } else {
            parcel.writeStrongBinder(this.f6885p.asBinder());
        }
    }
}
