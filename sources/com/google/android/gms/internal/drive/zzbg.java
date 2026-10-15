package com.google.android.gms.internal.drive;

import android.content.IntentSender;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.CreateFileActivityOptions;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzbg extends TaskApiCall<zzaw, IntentSender> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ CreateFileActivityOptions f21834d;

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<IntentSender> taskCompletionSource) throws RemoteException {
        zzaw zzawVar = (zzaw) anyClient;
        zzeo zzeoVar = (zzeo) zzawVar.I();
        this.f21834d.f22369a.W3(zzawVar.D());
        CreateFileActivityOptions createFileActivityOptions = this.f21834d;
        MetadataBundle metadataBundle = createFileActivityOptions.f22369a;
        int iIntValue = createFileActivityOptions.f22370b.intValue();
        CreateFileActivityOptions createFileActivityOptions2 = this.f21834d;
        taskCompletionSource.c(zzeoVar.X6(new zzu(metadataBundle, iIntValue, createFileActivityOptions2.f22371c, createFileActivityOptions2.f22372d, Integer.valueOf(createFileActivityOptions2.f22373e))));
    }
}
