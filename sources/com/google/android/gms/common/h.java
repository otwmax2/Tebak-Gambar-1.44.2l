package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzy;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class h extends zzy {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f7332o;

    protected h(byte[] bArr) {
        Preconditions.a(bArr.length == 25);
        this.f7332o = Arrays.hashCode(bArr);
    }

    protected static byte[] t1(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }

    abstract byte[] Q4();

    @Override // com.google.android.gms.common.internal.zzz
    public final int a() {
        return this.f7332o;
    }

    @Override // com.google.android.gms.common.internal.zzz
    public final IObjectWrapper d() {
        return ObjectWrapper.Q4(Q4());
    }

    public final boolean equals(Object obj) {
        IObjectWrapper iObjectWrapperD;
        if (obj != null && (obj instanceof zzz)) {
            try {
                zzz zzzVar = (zzz) obj;
                if (zzzVar.a() == this.f7332o && (iObjectWrapperD = zzzVar.d()) != null) {
                    return Arrays.equals(Q4(), (byte[]) ObjectWrapper.t1(iObjectWrapperD));
                }
                return false;
            } catch (RemoteException e10) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f7332o;
    }
}
