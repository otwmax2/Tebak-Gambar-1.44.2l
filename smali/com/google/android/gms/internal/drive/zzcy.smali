###### Class com.google.android.gms.internal.drive.zzcy (com.google.android.gms.internal.drive.zzcy)
.class final Lcom/google/android/gms/internal/drive/zzcy;
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
.field private final synthetic d:Lcom/google/android/gms/drive/zzn;

.field private final synthetic e:Lcom/google/android/gms/drive/DriveContents;

.field private final synthetic f:Lcom/google/android/gms/drive/MetadataChangeSet;


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcy;->d:Lcom/google/android/gms/drive/zzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/ExecutionOptions;->a(Lcom/google/android/gms/internal/drive/zzaw;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 3
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Exception;)V

    .line 4
    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcy;->e:Lcom/google/android/gms/drive/DriveContents;

    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->h()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcy;->f:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->a()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->D()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->W3(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 7
    new-instance v6, Lcom/google/android/gms/internal/drive/zzm;

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcy;->e:Lcom/google/android/gms/drive/DriveContents;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->a()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcy;->f:Lcom/google/android/gms/drive/MetadataChangeSet;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->a()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcy;->e:Lcom/google/android/gms/drive/DriveContents;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->g()Lcom/google/android/gms/drive/Contents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->X3()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcy;->e:Lcom/google/android/gms/drive/DriveContents;

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->g()Lcom/google/android/gms/drive/Contents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->Y3()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/drive/zzcy;->d:Lcom/google/android/gms/drive/zzn;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zzm;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IZLcom/google/android/gms/drive/zzn;)V

    new-instance v0, Lcom/google/android/gms/internal/drive/zzhr;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/drive/zzhr;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 12
    invoke-interface {p1, v6, v0}, Lcom/google/android/gms/internal/drive/zzeo;->r7(Lcom/google/android/gms/internal/drive/zzm;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
