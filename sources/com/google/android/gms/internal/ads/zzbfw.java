package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbfw extends RemoteCreator {
    @VisibleForTesting
    public zzbfw() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ Object a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
        return iInterfaceQueryLocalInterface instanceof zzbee ? (zzbee) iInterfaceQueryLocalInterface : new zzbec(iBinder);
    }

    public final zzbeb c(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        try {
            IBinder iBinderF9 = ((zzbee) b(context)).f9(ObjectWrapper.Q4(context), ObjectWrapper.Q4(frameLayout), ObjectWrapper.Q4(frameLayout2), ModuleDescriptor.MODULE_VERSION);
            if (iBinderF9 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderF9.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            return iInterfaceQueryLocalInterface instanceof zzbeb ? (zzbeb) iInterfaceQueryLocalInterface : new zzbdz(iBinderF9);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e10) {
            zzbza.h("Could not create remote NativeAdViewDelegate.", e10);
            return null;
        }
    }
}
