###### Class com.google.android.gms.internal.drive.zzcc (com.google.android.gms.internal.drive.zzcc)
.class final Lcom/google/android/gms/internal/drive/zzcc;
.super Lcom/google/android/gms/internal/drive/zzcg;


# instance fields
.field private final synthetic u:Lcom/google/android/gms/internal/drive/zzcb;


# virtual methods
.method protected final synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/drive/zzce;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzcc;->u:Lcom/google/android/gms/internal/drive/zzcb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/drive/zzce;-><init>(Lcom/google/android/gms/internal/drive/zzcb;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/internal/drive/zzcc;)V

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/drive/zzeo;->fa(Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
