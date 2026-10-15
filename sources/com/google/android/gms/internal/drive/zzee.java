package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.drive.events.DriveEvent;
import com.vungle.mediation.BuildConfig;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzee extends zzet {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final GmsLogger f21943s = new GmsLogger("EventCallback", BuildConfig.FLAVOR);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f21944o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final com.google.android.gms.drive.events.zzi f21945p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzeg f21946q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final List<Integer> f21947r;

    @Override // com.google.android.gms.internal.drive.zzes
    public final void D4(zzfp zzfpVar) throws RemoteException {
        DriveEvent driveEventV3 = zzfpVar.V3();
        Preconditions.n(this.f21944o == driveEventV3.o());
        Preconditions.n(this.f21947r.contains(Integer.valueOf(driveEventV3.o())));
        zzeg zzegVar = this.f21946q;
        zzegVar.sendMessage(zzegVar.obtainMessage(1, new Pair(this.f21945p, driveEventV3)));
    }
}
