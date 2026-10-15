package com.google.android.gms.internal.drive;

import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.events.OnChangeListener;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzdj implements ChangeListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final OnChangeListener f21914o;

    @Override // com.google.android.gms.drive.events.ChangeListener
    public final void a(ChangeEvent changeEvent) {
        this.f21914o.a(changeEvent);
    }
}
