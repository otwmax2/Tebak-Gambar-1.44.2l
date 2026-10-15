###### Class com.google.android.play.core.assetpacks.k (com.google.android.play.core.assetpacks.k)
.class Lcom/google/android/play/core/assetpacks/k;
.super Lv4/j0;
.source "com.google.android.play:core@@1.10.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv4/j0;"
    }
.end annotation


# instance fields
.field final o:Ly4/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic p:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/p<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/k;->p:Lcom/google/android/play/core/assetpacks/s;

    invoke-direct {p0}, Lv4/j0;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    return-void
.end method


# virtual methods
.method public F9(ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/k;->p:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    invoke-virtual {p2, v0}, Lv4/m;->s(Ly4/p;)V

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onStartDownload(%d)"

    invoke-virtual {p2, p1, v0}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public G1(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/k;->p:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    invoke-virtual {p1, p2}, Lv4/m;->s(Ly4/p;)V

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onGetChunkFileDescriptor"

    .line 2
    invoke-virtual {p1, v0, p2}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final H4(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/k;->p:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    invoke-virtual {p1, p2}, Lv4/m;->s(Ly4/p;)V

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onRemoveModule()"

    .line 2
    invoke-virtual {p1, v0, p2}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final Qa(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/k;->p:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    invoke-virtual {p2, v0}, Lv4/m;->s(Ly4/p;)V

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object p2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "module_name"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "slice_id"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "chunk_number"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "session_id"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const-string p1, "onNotifyChunkTransferred(%s, %s, %d, session=%d)"

    .line 6
    invoke-virtual {p2, p1, v0}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public W5(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/k;->p:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    invoke-virtual {p1, p2}, Lv4/m;->s(Ly4/p;)V

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onRequestDownloadInfo()"

    .line 2
    invoke-virtual {p1, v0, p2}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public X(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k;->p:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    invoke-virtual {v0, v1}, Lv4/m;->s(Ly4/p;)V

    const-string v0, "error_code"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onError(%d)"

    invoke-virtual {v0, v2, v1}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    new-instance v1, Lcom/google/android/play/core/assetpacks/a;

    .line 4
    invoke-direct {v1, p1}, Lcom/google/android/play/core/assetpacks/a;-><init>(I)V

    invoke-virtual {v0, v1}, Ly4/p;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final Y7(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/k;->p:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    invoke-virtual {p2, v0}, Lv4/m;->s(Ly4/p;)V

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "session_id"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onNotifySessionFailed(%d)"

    .line 3
    invoke-virtual {p2, p1, v0}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public g2(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/k;->p:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    invoke-virtual {p1, v0}, Lv4/m;->s(Ly4/p;)V

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetSessionStates"

    .line 2
    invoke-virtual {p1, v1, v0}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final l7(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/k;->p:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    invoke-virtual {p2, v0}, Lv4/m;->s(Ly4/p;)V

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "module_name"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "session_id"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "onNotifyModuleCompleted(%s, sessionId=%d)"

    .line 4
    invoke-virtual {p2, p1, v0}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final ma(ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/k;->p:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    invoke-virtual {p2, v0}, Lv4/m;->s(Ly4/p;)V

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onGetSession(%d)"

    invoke-virtual {p2, p1, v0}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public o9(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/k;->p:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    invoke-virtual {p2, v0}, Lv4/m;->s(Ly4/p;)V

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "keep_alive"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onKeepAlive(%b)"

    invoke-virtual {p2, p1, v0}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final p0(ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/k;->p:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    invoke-virtual {p2, v0}, Lv4/m;->s(Ly4/p;)V

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onCancelDownload(%d)"

    invoke-virtual {p2, p1, v0}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final v6(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/k;->p:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    invoke-virtual {p1, v0}, Lv4/m;->s(Ly4/p;)V

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onCancelDownloads()"

    .line 2
    invoke-virtual {p1, v1, v0}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
