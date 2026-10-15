package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public abstract class RemoteCreator<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f7908b;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
    @KeepForSdk
    public static class RemoteCreatorException extends Exception {
        @KeepForSdk
        public RemoteCreatorException(String str) {
            super(str);
        }

        @KeepForSdk
        public RemoteCreatorException(String str, Throwable th) {
            super(str, th);
        }
    }

    @KeepForSdk
    protected RemoteCreator(String str) {
        this.f7907a = str;
    }

    @KeepForSdk
    protected abstract T a(IBinder iBinder);

    @KeepForSdk
    protected final T b(Context context) throws RemoteCreatorException {
        if (this.f7908b == null) {
            Preconditions.k(context);
            Context contextD = GooglePlayServicesUtilLight.d(context);
            if (contextD == null) {
                throw new RemoteCreatorException("Could not get remote context.");
            }
            try {
                this.f7908b = a((IBinder) contextD.getClassLoader().loadClass(this.f7907a).newInstance());
            } catch (ClassNotFoundException e10) {
                throw new RemoteCreatorException("Could not load creator class.", e10);
            } catch (IllegalAccessException e11) {
                throw new RemoteCreatorException("Could not access creator.", e11);
            } catch (InstantiationException e12) {
                throw new RemoteCreatorException("Could not instantiate creator.", e12);
            }
        }
        return (T) this.f7908b;
    }
}
