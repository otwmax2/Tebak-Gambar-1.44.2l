###### Class com.google.android.gms.internal.drive.zzdq (com.google.android.gms.internal.drive.zzdq)
.class final Lcom/google/android/gms/internal/drive/zzdq;
.super Lcom/google/android/gms/internal/drive/zzea;


# instance fields
.field private final synthetic t:Z

.field private final synthetic u:Lcom/google/android/gms/internal/drive/zzdp;


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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzek;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdq;->u:Lcom/google/android/gms/internal/drive/zzdp;

    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zzdp;->a:Lcom/google/android/gms/drive/DriveId;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/drive/zzdq;->t:Z

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzek;-><init>(Lcom/google/android/gms/drive/DriveId;Z)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzdy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzdy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->Z3(Lcom/google/android/gms/internal/drive/zzek;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
