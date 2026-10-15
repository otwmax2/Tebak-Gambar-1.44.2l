###### Class com.google.android.play.core.assetpacks.d (com.google.android.play.core.assetpacks.d)
.class final Lcom/google/android/play/core/assetpacks/d;
.super Lv4/b;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field final synthetic p:Ljava/util/List;

.field final synthetic q:Ly4/p;

.field final synthetic r:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;Ljava/util/List;Ly4/p;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/d;->r:Lcom/google/android/play/core/assetpacks/s;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/d;->p:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/d;->q:Ly4/p;

    invoke-direct {p0, p2}, Lv4/b;-><init>(Ly4/p;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/d;->p:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/s;->t(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/d;->r:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lv4/m;->e()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lv4/i0;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/d;->r:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/s;->s(Lcom/google/android/play/core/assetpacks/s;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->m()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/l;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/d;->r:Lcom/google/android/play/core/assetpacks/s;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/d;->q:Ly4/p;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/assetpacks/l;-><init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;)V

    .line 4
    invoke-interface {v1, v2, v0, v3, v4}, Lv4/i0;->F2(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lv4/k0;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/d;->p:Ljava/util/List;

    aput-object v4, v2, v3

    const-string v3, "cancelDownloads(%s)"

    .line 5
    invoke-virtual {v1, v0, v3, v2}, Lv4/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
