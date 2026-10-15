###### Class com.google.android.gms.internal.drive.zzbk (com.google.android.gms.internal.drive.zzbk)
.class final Lcom/google/android/gms/internal/drive/zzbk;
.super Lcom/google/android/gms/internal/drive/zzav;


# instance fields
.field private final synthetic t:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private final synthetic u:Lcom/google/android/gms/drive/zzn;

.field private final synthetic v:Lcom/google/android/gms/internal/drive/zzbi;


# virtual methods
.method protected final synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbk;->t:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->a()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->D()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->W3(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 4
    new-instance v6, Lcom/google/android/gms/internal/drive/zzm;

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbk;->v:Lcom/google/android/gms/internal/drive/zzbi;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzbi;->b(Lcom/google/android/gms/internal/drive/zzbi;)Lcom/google/android/gms/drive/Contents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->V3()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbk;->t:Lcom/google/android/gms/drive/MetadataChangeSet;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->a()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbk;->v:Lcom/google/android/gms/internal/drive/zzbi;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzbi;->b(Lcom/google/android/gms/internal/drive/zzbi;)Lcom/google/android/gms/drive/Contents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->X3()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbk;->v:Lcom/google/android/gms/internal/drive/zzbi;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzbi;->b(Lcom/google/android/gms/internal/drive/zzbi;)Lcom/google/android/gms/drive/Contents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->Y3()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/drive/zzbk;->u:Lcom/google/android/gms/drive/zzn;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/drive/zzm;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IZLcom/google/android/gms/drive/zzn;)V

    new-instance v0, Lcom/google/android/gms/internal/drive/zzgy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzgy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 9
    invoke-interface {p1, v6, v0}, Lcom/google/android/gms/internal/drive/zzeo;->r7(Lcom/google/android/gms/internal/drive/zzm;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
