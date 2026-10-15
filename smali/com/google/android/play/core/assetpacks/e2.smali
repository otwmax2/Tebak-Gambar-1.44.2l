###### Class com.google.android.play.core.assetpacks.e2 (com.google.android.play.core.assetpacks.e2)
.class public final Lcom/google/android/play/core/assetpacks/e2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv4/c0<",
        "Lcom/google/android/play/core/assetpacks/d2;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/y;",
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
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/r2;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/p2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv4/c0;Lv4/c0;Lv4/c0;Lv4/c0;Lv4/c0;Lv4/c0;Lv4/c0;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv4/c0<",
            "Ljava/lang/String;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/y;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/h1;",
            ">;",
            "Lv4/c0<",
            "Landroid/content/Context;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/r2;",
            ">;",
            "Lv4/c0<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/p2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/e2;->a:Lv4/c0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/e2;->b:Lv4/c0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/e2;->c:Lv4/c0;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/e2;->d:Lv4/c0;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/e2;->e:Lv4/c0;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/e2;->f:Lv4/c0;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/e2;->g:Lv4/c0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/e2;->a:Lv4/c0;

    invoke-interface {v0}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/e2;->b:Lv4/c0;

    invoke-interface {v1}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/e2;->c:Lv4/c0;

    invoke-interface {v2}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/e2;->d:Lv4/c0;

    check-cast v3, Lcom/google/android/play/core/assetpacks/r3;

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/r3;->a()Landroid/content/Context;

    move-result-object v8

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/e2;->e:Lv4/c0;

    invoke-interface {v3}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/e2;->f:Lv4/c0;

    invoke-static {v4}, Lv4/a0;->a(Lv4/c0;)Lv4/y;

    move-result-object v10

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/e2;->g:Lv4/c0;

    invoke-interface {v4}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v4

    .line 2
    new-instance v12, Lcom/google/android/play/core/assetpacks/d2;

    move-object v6, v1

    check-cast v6, Lcom/google/android/play/core/assetpacks/y;

    move-object v7, v2

    check-cast v7, Lcom/google/android/play/core/assetpacks/h1;

    move-object v9, v3

    check-cast v9, Lcom/google/android/play/core/assetpacks/r2;

    move-object v11, v4

    check-cast v11, Lcom/google/android/play/core/assetpacks/p2;

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    new-instance v2, Ljava/io/File;

    .line 3
    invoke-virtual {v8, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_4f

    .line 4
    :cond_4a
    invoke-virtual {v8, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v5, v0

    :goto_4f
    move-object v4, v12

    .line 5
    invoke-direct/range {v4 .. v11}, Lcom/google/android/play/core/assetpacks/d2;-><init>(Ljava/io/File;Lcom/google/android/play/core/assetpacks/y;Lcom/google/android/play/core/assetpacks/h1;Landroid/content/Context;Lcom/google/android/play/core/assetpacks/r2;Lv4/y;Lcom/google/android/play/core/assetpacks/p2;)V

    return-object v12
.end method
