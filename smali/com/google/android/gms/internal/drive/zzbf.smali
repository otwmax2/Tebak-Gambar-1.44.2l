###### Class com.google.android.gms.internal.drive.zzbf (com.google.android.gms.internal.drive.zzbf)
.class final Lcom/google/android/gms/internal/drive/zzbf;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Landroid/content/IntentSender;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic d:Lcom/google/android/gms/drive/OpenFileActivityOptions;


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 8
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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgm;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbf;->d:Lcom/google/android/gms/drive/OpenFileActivityOptions;

    iget-object v2, v1, Lcom/google/android/gms/drive/OpenFileActivityOptions;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/drive/OpenFileActivityOptions;->b:[Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/drive/OpenFileActivityOptions;->d:Lcom/google/android/gms/drive/DriveId;

    iget-object v1, v1, Lcom/google/android/gms/drive/OpenFileActivityOptions;->c:Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/drive/zzgm;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/query/internal/FilterHolder;)V

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/drive/zzeo;->a5(Lcom/google/android/gms/internal/drive/zzgm;)Landroid/content/IntentSender;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method
