###### Class com.google.android.gms.internal.drive.zzdu (com.google.android.gms.internal.drive.zzdu)
.class final Lcom/google/android/gms/internal/drive/zzdu;
.super Lcom/google/android/gms/internal/drive/zzav;


# instance fields
.field private final synthetic t:Lcom/google/android/gms/internal/drive/zzdp;


# virtual methods
.method protected final synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 4
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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzab;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdu;->t:Lcom/google/android/gms/internal/drive/zzdp;

    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zzdp;->a:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzab;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzgy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzgy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->W9(Lcom/google/android/gms/internal/drive/zzab;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
