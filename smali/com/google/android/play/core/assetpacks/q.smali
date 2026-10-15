###### Class com.google.android.play.core.assetpacks.q (com.google.android.play.core.assetpacks.q)
.class final Lcom/google/android/play/core/assetpacks/q;
.super Lcom/google/android/play/core/assetpacks/k;
.source "com.google.android.play:core@@1.10.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/assetpacks/k<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final q:I

.field final r:Ljava/lang/String;

.field final s:I

.field final synthetic t:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;ILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/p<",
            "Ljava/lang/Void;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/q;->t:Lcom/google/android/play/core/assetpacks/s;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/k;-><init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;)V

    iput p3, p0, Lcom/google/android/play/core/assetpacks/q;->q:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/q;->r:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/play/core/assetpacks/q;->s:I

    return-void
.end method


# virtual methods
.method public final X(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q;->t:Lcom/google/android/play/core/assetpacks/s;

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

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onError(%d), retrying notifyModuleCompleted..."

    invoke-virtual {v0, p1, v1}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget p1, p0, Lcom/google/android/play/core/assetpacks/q;->s:I

    if-lez p1, :cond_33

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q;->t:Lcom/google/android/play/core/assetpacks/s;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/q;->q:I

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/q;->r:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    .line 4
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/play/core/assetpacks/s;->w(Lcom/google/android/play/core/assetpacks/s;ILjava/lang/String;I)V

    :cond_33
    return-void
.end method
