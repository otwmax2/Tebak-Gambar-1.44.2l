###### Class com.google.android.gms.internal.drive.zzcu (com.google.android.gms.internal.drive.zzcu)
.class final Lcom/google/android/gms/internal/drive/zzcu;
.super Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/RegisterListenerMethod<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/drive/events/OpenFileCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic d:Lcom/google/android/gms/drive/DriveFile;

.field private final synthetic e:I

.field private final synthetic f:Lcom/google/android/gms/internal/drive/zzg;

.field private final synthetic g:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field private final synthetic h:Lcom/google/android/gms/internal/drive/zzch;


# virtual methods
.method protected final synthetic d(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgj;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzcu;->d:Lcom/google/android/gms/drive/DriveFile;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveResource;->a()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzcu;->e:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/drive/zzgj;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/drive/zzdk;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzcu;->h:Lcom/google/android/gms/internal/drive/zzch;

    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzcu;->f:Lcom/google/android/gms/internal/drive/zzg;

    iget-object v4, p0, Lcom/google/android/gms/internal/drive/zzcu;->g:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/drive/zzdk;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/events/ListenerToken;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->v5(Lcom/google/android/gms/internal/drive/zzgj;Lcom/google/android/gms/internal/drive/zzeq;)Lcom/google/android/gms/internal/drive/zzec;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcu;->f:Lcom/google/android/gms/internal/drive/zzg;

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzec;->o:Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ICancelToken$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/ICancelToken;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzg;->b(Lcom/google/android/gms/common/internal/ICancelToken;)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method
