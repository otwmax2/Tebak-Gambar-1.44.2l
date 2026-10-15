###### Class com.google.android.play.core.assetpacks.n (com.google.android.play.core.assetpacks.n)
.class final Lcom/google/android/play/core/assetpacks/n;
.super Lcom/google/android/play/core/assetpacks/k;
.source "com.google.android.play:core@@1.10.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/assetpacks/k<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic q:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/p<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/n;->q:Lcom/google/android/play/core/assetpacks/s;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/k;-><init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;)V

    return-void
.end method


# virtual methods
.method public final g2(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/play/core/assetpacks/k;->g2(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n;->q:Lcom/google/android/play/core/assetpacks/s;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/play/core/assetpacks/s;->u(Lcom/google/android/play/core/assetpacks/s;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k;->o:Ly4/p;

    .line 3
    invoke-virtual {v0, p1}, Ly4/p;->e(Ljava/lang/Object;)Z

    return-void
.end method
