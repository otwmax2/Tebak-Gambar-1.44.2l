###### Class com.google.android.play.core.assetpacks.j (com.google.android.play.core.assetpacks.j)
.class final Lcom/google/android/play/core/assetpacks/j;
.super Lv4/b;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field final synthetic p:Ly4/p;

.field final synthetic q:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;Ly4/p;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/j;->q:Lcom/google/android/play/core/assetpacks/s;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/j;->p:Ly4/p;

    invoke-direct {p0, p2}, Lv4/b;-><init>(Ly4/p;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/j;->q:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/s;->r(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object v0

    invoke-virtual {v0}, Lv4/m;->e()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lv4/i0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/j;->q:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/s;->s(Lcom/google/android/play/core/assetpacks/s;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->m()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/assetpacks/o;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/j;->q:Lcom/google/android/play/core/assetpacks/s;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/j;->p:Ly4/p;

    invoke-direct {v3, v4, v5}, Lcom/google/android/play/core/assetpacks/o;-><init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;)V

    invoke-interface {v0, v1, v2, v3}, Lv4/i0;->R8(Ljava/lang/String;Landroid/os/Bundle;Lv4/k0;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    .line 3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "keepAlive"

    invoke-virtual {v1, v0, v3, v2}, Lv4/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
