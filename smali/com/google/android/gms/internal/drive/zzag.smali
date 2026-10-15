###### Class com.google.android.gms.internal.drive.zzag (com.google.android.gms.internal.drive.zzag)
.class final Lcom/google/android/gms/internal/drive/zzag;
.super Lcom/google/android/gms/internal/drive/zzar;


# instance fields
.field private final synthetic t:Lcom/google/android/gms/drive/query/Query;


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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgq;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzag;->t:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzgq;-><init>(Lcom/google/android/gms/drive/query/Query;)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzas;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzas;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->E9(Lcom/google/android/gms/internal/drive/zzgq;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
