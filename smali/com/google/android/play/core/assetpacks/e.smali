###### Class com.google.android.play.core.assetpacks.e (com.google.android.play.core.assetpacks.e)
.class final Lcom/google/android/play/core/assetpacks/e;
.super Lv4/b;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field final synthetic p:Ljava/util/Map;

.field final synthetic q:Ly4/p;

.field final synthetic r:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;Ljava/util/Map;Ly4/p;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/e;->r:Lcom/google/android/play/core/assetpacks/s;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/e;->p:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/e;->q:Ly4/p;

    invoke-direct {p0, p2}, Lv4/b;-><init>(Ly4/p;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/e;->r:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object v0

    invoke-virtual {v0}, Lv4/m;->e()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lv4/i0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/e;->r:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/s;->s(Lcom/google/android/play/core/assetpacks/s;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/e;->p:Ljava/util/Map;

    .line 2
    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/s;->n(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/assetpacks/n;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/e;->r:Lcom/google/android/play/core/assetpacks/s;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/e;->q:Ly4/p;

    invoke-direct {v3, v4, v5}, Lcom/google/android/play/core/assetpacks/n;-><init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;)V

    .line 3
    invoke-interface {v0, v1, v2, v3}, Lv4/i0;->H9(Ljava/lang/String;Landroid/os/Bundle;Lv4/k0;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception v0

    .line 4
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "syncPacks"

    invoke-virtual {v1, v0, v3, v2}, Lv4/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/e;->q:Ly4/p;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 5
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ly4/p;->d(Ljava/lang/Exception;)Z

    return-void
.end method
