###### Class com.google.android.gms.internal.drive.zzbm (com.google.android.gms.internal.drive.zzbm)
.class final Lcom/google/android/gms/internal/drive/zzbm;
.super Lcom/google/android/gms/internal/drive/zzav;


# instance fields
.field private final synthetic t:Lcom/google/android/gms/internal/drive/zzbi;


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
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/drive/zzo;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbm;->t:Lcom/google/android/gms/internal/drive/zzbi;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzbi;->b(Lcom/google/android/gms/internal/drive/zzbi;)Lcom/google/android/gms/drive/Contents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/Contents;->X3()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzo;-><init>(IZ)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzgy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzgy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->O9(Lcom/google/android/gms/internal/drive/zzo;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
