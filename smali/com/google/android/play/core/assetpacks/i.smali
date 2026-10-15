###### Class com.google.android.play.core.assetpacks.i (com.google.android.play.core.assetpacks.i)
.class final Lcom/google/android/play/core/assetpacks/i;
.super Lv4/b;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field final synthetic p:I

.field final synthetic q:Ljava/lang/String;

.field final synthetic r:Ljava/lang/String;

.field final synthetic s:I

.field final synthetic t:Ly4/p;

.field final synthetic u:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;ILjava/lang/String;Ljava/lang/String;ILy4/p;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/i;->u:Lcom/google/android/play/core/assetpacks/s;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/i;->p:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/i;->q:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/i;->r:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/i;->s:I

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/i;->t:Ly4/p;

    invoke-direct {p0, p2}, Lv4/b;-><init>(Ly4/p;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/i;->u:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/s;->q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;

    move-result-object v0

    invoke-virtual {v0}, Lv4/m;->e()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lv4/i0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/i;->u:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/s;->s(Lcom/google/android/play/core/assetpacks/s;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/i;->p:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/i;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/i;->r:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/play/core/assetpacks/i;->s:I

    .line 2
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/s;->k(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->m()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/m;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/i;->u:Lcom/google/android/play/core/assetpacks/s;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/i;->t:Ly4/p;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/assetpacks/m;-><init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;)V

    .line 4
    invoke-interface {v0, v1, v2, v3, v4}, Lv4/i0;->P7(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lv4/k0;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception v0

    .line 5
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->p()Lv4/a;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/i;->q:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/i;->r:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/play/core/assetpacks/i;->s:I

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/play/core/assetpacks/i;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "getChunkFileDescriptor(%s, %s, %d, session=%d)"

    .line 7
    invoke-virtual {v1, v3, v2}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/i;->t:Ly4/p;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 8
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ly4/p;->d(Ljava/lang/Exception;)Z

    return-void
.end method
