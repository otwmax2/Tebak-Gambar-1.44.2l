###### Class com.google.android.gms.internal.drive.zzip (com.google.android.gms.internal.drive.zzip)
.class public final Lcom/google/android/gms/internal/drive/zzip;
.super Lcom/google/android/gms/internal/drive/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzio;


# direct methods
.method public static X0(Landroid/os/IBinder;)Lcom/google/android/gms/internal/drive/zzio;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/drive/zzio;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/drive/zzio;

    return-object v0

    .line 4
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/drive/zziq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zziq;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
