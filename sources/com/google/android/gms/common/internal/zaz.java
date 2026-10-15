package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zaz extends RemoteCreator<zam> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zaz f7502c = new zaz();

    private zaz() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View c(Context context, int i10, int i11) throws RemoteCreator.RemoteCreatorException {
        zaz zazVar = f7502c;
        try {
            zax zaxVar = new zax(1, i10, i11, null);
            return (View) ObjectWrapper.t1(zazVar.b(context).A9(ObjectWrapper.Q4(context), zaxVar));
        } catch (Exception e10) {
            StringBuilder sb = new StringBuilder(64);
            sb.append("Could not get button with size ");
            sb.append(i10);
            sb.append(" and color ");
            sb.append(i11);
            throw new RemoteCreator.RemoteCreatorException(sb.toString(), e10);
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ zam a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return iInterfaceQueryLocalInterface instanceof zam ? (zam) iInterfaceQueryLocalInterface : new zam(iBinder);
    }
}
