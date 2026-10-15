package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DrivePreferencesApi;
import com.google.android.gms.drive.FileUploadPreferences;

/* JADX INFO: loaded from: classes2.dex */
final class zzcf implements DrivePreferencesApi.FileUploadPreferencesResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f21869o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final FileUploadPreferences f21870p;

    private zzcf(zzcb zzcbVar, Status status, FileUploadPreferences fileUploadPreferences) {
        this.f21869o = status;
        this.f21870p = fileUploadPreferences;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f21869o;
    }

    /* synthetic */ zzcf(zzcb zzcbVar, Status status, FileUploadPreferences fileUploadPreferences, zzcc zzccVar) {
        this(zzcbVar, status, fileUploadPreferences);
    }
}
