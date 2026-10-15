###### Class com.google.android.gms.internal.drive.zzdf (com.google.android.gms.internal.drive.zzdf)
.class final Lcom/google/android/gms/internal/drive/zzdf;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic d:Lcom/google/android/gms/drive/DriveResource;

.field private final synthetic e:Ljava/util/List;


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgw;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdf;->d:Lcom/google/android/gms/drive/DriveResource;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveResource;->a()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzdf;->e:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzgw;-><init>(Lcom/google/android/gms/drive/DriveId;Ljava/util/List;)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzhr;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/drive/zzhr;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->f2(Lcom/google/android/gms/internal/drive/zzgw;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
