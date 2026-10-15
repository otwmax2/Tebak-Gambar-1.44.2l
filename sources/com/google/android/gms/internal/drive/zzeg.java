package com.google.android.gms.internal.drive;

import android.content.Context;
import android.os.Message;
import android.util.Pair;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.CompletionListener;
import com.google.android.gms.drive.events.DriveEvent;

/* JADX INFO: loaded from: classes2.dex */
final class zzeg extends zzir {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f21948a;

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what != 1) {
            zzee.f21943s.e("EventCallback", "Don't know how to handle this event in context %s", this.f21948a);
            return;
        }
        Pair pair = (Pair) message.obj;
        com.google.android.gms.drive.events.zzi zziVar = (com.google.android.gms.drive.events.zzi) pair.first;
        DriveEvent driveEvent = (DriveEvent) pair.second;
        int iO = driveEvent.o();
        if (iO == 1) {
            ((ChangeListener) zziVar).a((ChangeEvent) driveEvent);
            return;
        }
        if (iO == 2) {
            ((CompletionListener) zziVar).d((CompletionEvent) driveEvent);
            return;
        }
        if (iO != 3) {
            if (iO == 4) {
                ((com.google.android.gms.drive.events.zzd) zziVar).c((com.google.android.gms.drive.events.zzb) driveEvent);
                return;
            } else if (iO != 8) {
                zzee.f21943s.i("EventCallback", "Unexpected event: %s", driveEvent);
                return;
            } else {
                ((com.google.android.gms.drive.events.zzl) zziVar).b(new zze(((com.google.android.gms.drive.events.zzr) driveEvent).V3()));
                return;
            }
        }
        com.google.android.gms.drive.events.zzq zzqVar = (com.google.android.gms.drive.events.zzq) zziVar;
        com.google.android.gms.drive.events.zzo zzoVar = (com.google.android.gms.drive.events.zzo) driveEvent;
        DataHolder dataHolderX3 = zzoVar.X3();
        if (dataHolderX3 != null) {
            zzqVar.a0(new zzeh(new MetadataBuffer(dataHolderX3)));
        }
        if (zzoVar.W3()) {
            zzqVar.Z(zzoVar.C3());
        }
    }
}
