###### Class com.google.android.gms.internal.drive.zzdh (com.google.android.gms.internal.drive.zzdh)
.class final Lcom/google/android/gms/internal/drive/zzdh;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/drive/DriveFile;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lcom/google/android/gms/drive/DriveFolder;

.field private final e:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private final f:Lcom/google/android/gms/drive/DriveContents;

.field private g:Lcom/google/android/gms/drive/ExecutionOptions;

.field private h:Lcom/google/android/gms/drive/metadata/internal/zzk;


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdh;->g:Lcom/google/android/gms/drive/ExecutionOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/ExecutionOptions;->a(Lcom/google/android/gms/internal/drive/zzaw;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdh;->e:Lcom/google/android/gms/drive/MetadataChangeSet;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->a()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->D()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->W3(Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdh;->f:Lcom/google/android/gms/drive/DriveContents;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzdh;->h:Lcom/google/android/gms/drive/metadata/internal/zzk;

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/drive/zzbs;->b(Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/metadata/internal/zzk;)I

    move-result v6

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdh;->h:Lcom/google/android/gms/drive/metadata/internal/zzk;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lcom/google/android/gms/drive/metadata/internal/zzk;->a()Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_2b

    :cond_29
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 8
    :goto_2b
    new-instance v1, Lcom/google/android/gms/internal/drive/zzw;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzdh;->d:Lcom/google/android/gms/drive/DriveFolder;

    .line 9
    invoke-interface {v2}, Lcom/google/android/gms/drive/DriveResource;->a()Lcom/google/android/gms/drive/DriveId;

    move-result-object v4

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->a()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v5

    iget-object v8, p0, Lcom/google/android/gms/internal/drive/zzdh;->g:Lcom/google/android/gms/drive/ExecutionOptions;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/drive/zzw;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/ExecutionOptions;)V

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/drive/zzhj;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/drive/zzhj;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 13
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/drive/zzeo;->Na(Lcom/google/android/gms/internal/drive/zzw;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
