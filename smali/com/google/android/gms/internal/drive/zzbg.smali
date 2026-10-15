###### Class com.google.android.gms.internal.drive.zzbg (com.google.android.gms.internal.drive.zzbg)
.class final Lcom/google/android/gms/internal/drive/zzbg;
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
.field private final synthetic d:Lcom/google/android/gms/drive/CreateFileActivityOptions;


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzeo;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbg;->d:Lcom/google/android/gms/drive/CreateFileActivityOptions;

    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zzq;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->D()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->W3(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/drive/zzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbg;->d:Lcom/google/android/gms/drive/CreateFileActivityOptions;

    iget-object v3, v1, Lcom/google/android/gms/internal/drive/zzq;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zzq;->b:Ljava/lang/Integer;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbg;->d:Lcom/google/android/gms/drive/CreateFileActivityOptions;

    iget-object v5, v1, Lcom/google/android/gms/internal/drive/zzq;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/drive/zzq;->d:Lcom/google/android/gms/drive/DriveId;

    iget v1, v1, Lcom/google/android/gms/internal/drive/zzq;->e:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/drive/zzu;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;Ljava/lang/Integer;)V

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/drive/zzeo;->X6(Lcom/google/android/gms/internal/drive/zzu;)Landroid/content/IntentSender;

    move-result-object p1

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method
