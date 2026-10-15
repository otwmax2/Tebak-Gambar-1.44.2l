###### Class com.google.android.play.core.assetpacks.x1 (com.google.android.play.core.assetpacks.x1)
.class public final Lcom/google/android/play/core/assetpacks/x1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv4/c0<",
        "Lcom/google/android/play/core/assetpacks/w1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/e0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/h1;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv4/c0;Lv4/c0;Lv4/c0;Lv4/c0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/e0;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/h1;",
            ">;",
            "Lv4/c0<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/x1;->a:Lv4/c0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/x1;->b:Lv4/c0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/x1;->c:Lv4/c0;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/x1;->d:Lv4/c0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/x1;->a:Lv4/c0;

    invoke-interface {v0}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/x1;->b:Lv4/c0;

    invoke-static {v1}, Lv4/a0;->a(Lv4/c0;)Lv4/y;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/x1;->c:Lv4/c0;

    invoke-interface {v2}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/x1;->d:Lv4/c0;

    invoke-static {v3}, Lv4/a0;->a(Lv4/c0;)Lv4/y;

    move-result-object v3

    .line 2
    new-instance v4, Lcom/google/android/play/core/assetpacks/w1;

    check-cast v0, Lcom/google/android/play/core/assetpacks/e0;

    check-cast v2, Lcom/google/android/play/core/assetpacks/h1;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/play/core/assetpacks/w1;-><init>(Lcom/google/android/play/core/assetpacks/e0;Lv4/y;Lcom/google/android/play/core/assetpacks/h1;Lv4/y;)V

    return-object v4
.end method
