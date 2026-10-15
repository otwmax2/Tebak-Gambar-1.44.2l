###### Class com.google.android.gms.internal.drive.zzbt (com.google.android.gms.internal.drive.zzbt)
.class final Lcom/google/android/gms/internal/drive/zzbt;
.super Lcom/google/android/gms/internal/drive/zzby;


# instance fields
.field private final synthetic t:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private final synthetic u:I

.field private final synthetic v:I

.field private final synthetic w:Lcom/google/android/gms/drive/ExecutionOptions;

.field private final synthetic x:Lcom/google/android/gms/internal/drive/zzbs;


# virtual methods
.method protected final synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbt;->t:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->a()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->D()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->W3(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/drive/zzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbt;->x:Lcom/google/android/gms/internal/drive/zzbs;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzdp;->a()Lcom/google/android/gms/drive/DriveId;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbt;->t:Lcom/google/android/gms/drive/MetadataChangeSet;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/drive/MetadataChangeSet;->a()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/internal/drive/zzbt;->u:I

    iget v6, p0, Lcom/google/android/gms/internal/drive/zzbt;->v:I

    iget-object v7, p0, Lcom/google/android/gms/internal/drive/zzbt;->w:Lcom/google/android/gms/drive/ExecutionOptions;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/drive/zzw;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/ExecutionOptions;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/drive/zzbv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzbv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->Na(Lcom/google/android/gms/internal/drive/zzw;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
