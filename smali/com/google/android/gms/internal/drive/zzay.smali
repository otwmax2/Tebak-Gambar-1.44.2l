###### Class com.google.android.gms.internal.drive.zzay (com.google.android.gms.internal.drive.zzay)
.class final Lcom/google/android/gms/internal/drive/zzay;
.super Lcom/google/android/gms/internal/drive/zzav;


# instance fields
.field private final synthetic t:Lcom/google/android/gms/internal/drive/zzgs;

.field private final synthetic u:Lcom/google/android/gms/internal/drive/zzee;


# virtual methods
.method protected final synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 6
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
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzay;->t:Lcom/google/android/gms/internal/drive/zzgs;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzay;->u:Lcom/google/android/gms/internal/drive/zzee;

    new-instance v2, Lcom/google/android/gms/internal/drive/zzgy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/drive/zzgy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    const/4 v3, 0x0

    .line 4
    invoke-interface {p1, v0, v1, v3, v2}, Lcom/google/android/gms/internal/drive/zzeo;->p3(Lcom/google/android/gms/internal/drive/zzgs;Lcom/google/android/gms/internal/drive/zzes;Ljava/lang/String;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
