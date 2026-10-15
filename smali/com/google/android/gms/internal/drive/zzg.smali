###### Class com.google.android.gms.internal.drive.zzg (com.google.android.gms.internal.drive.zzg)
.class public final Lcom/google/android/gms/internal/drive/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/events/ListenerToken;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

.field private b:Lcom/google/android/gms/common/internal/ICancelToken;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzg;->b:Lcom/google/android/gms/common/internal/ICancelToken;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzg;->a:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzg;->b:Lcom/google/android/gms/common/internal/ICancelToken;

    if-eqz v0, :cond_9

    .line 2
    :try_start_4
    invoke-interface {v0}, Lcom/google/android/gms/common/internal/ICancelToken;->cancel()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    const/4 v0, 0x1

    return v0

    :catch_9
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/google/android/gms/common/internal/ICancelToken;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzg;->b:Lcom/google/android/gms/common/internal/ICancelToken;

    return-void
.end method

.method public final c()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzg;->a:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    return-object v0
.end method
