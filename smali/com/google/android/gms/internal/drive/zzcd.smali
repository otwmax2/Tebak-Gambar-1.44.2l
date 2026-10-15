###### Class com.google.android.gms.internal.drive.zzcd (com.google.android.gms.internal.drive.zzcd)
.class final Lcom/google/android/gms/internal/drive/zzcd;
.super Lcom/google/android/gms/internal/drive/zzav;


# instance fields
.field private final synthetic t:Lcom/google/android/gms/internal/drive/zzei;


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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgu;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzcd;->t:Lcom/google/android/gms/internal/drive/zzei;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzgu;-><init>(Lcom/google/android/gms/internal/drive/zzei;)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzgy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzgy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->u5(Lcom/google/android/gms/internal/drive/zzgu;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
