###### Class com.google.android.gms.internal.drive.zzbu (com.google.android.gms.internal.drive.zzbu)
.class final Lcom/google/android/gms/internal/drive/zzbu;
.super Lcom/google/android/gms/internal/drive/zzca;


# instance fields
.field private final synthetic t:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private final synthetic u:Lcom/google/android/gms/internal/drive/zzbs;


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
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbu;->t:Lcom/google/android/gms/drive/MetadataChangeSet;

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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzy;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbu;->u:Lcom/google/android/gms/internal/drive/zzbs;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzdp;->a()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzbu;->t:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->a()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzy;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzbw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzbw;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->k4(Lcom/google/android/gms/internal/drive/zzy;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
