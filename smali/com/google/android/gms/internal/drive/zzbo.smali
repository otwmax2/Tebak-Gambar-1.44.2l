###### Class com.google.android.gms.internal.drive.zzbo (com.google.android.gms.internal.drive.zzbo)
.class final Lcom/google/android/gms/internal/drive/zzbo;
.super Lcom/google/android/gms/internal/drive/zzam;


# instance fields
.field private final synthetic t:I

.field private final synthetic u:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

.field private final synthetic v:Lcom/google/android/gms/internal/drive/zzbn;


# virtual methods
.method protected final synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgj;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbo;->v:Lcom/google/android/gms/internal/drive/zzbn;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzdp;->a()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzbo;->t:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/drive/zzgj;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzgl;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzbo;->u:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/drive/zzgl;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->v5(Lcom/google/android/gms/internal/drive/zzgj;Lcom/google/android/gms/internal/drive/zzeq;)Lcom/google/android/gms/internal/drive/zzec;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzec;->o:Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ICancelToken$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/ICancelToken;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j(Lcom/google/android/gms/common/internal/ICancelToken;)V

    return-void
.end method
