###### Class com.google.android.gms.internal.drive.zzbc (com.google.android.gms.internal.drive.zzbc)
.class final Lcom/google/android/gms/internal/drive/zzbc;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic d:Ljava/lang/String;


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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzek;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbc;->d:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/drive/DriveId;->Y3(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzek;-><init>(Lcom/google/android/gms/drive/DriveId;Z)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzhl;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/drive/zzhl;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->Z3(Lcom/google/android/gms/internal/drive/zzek;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
