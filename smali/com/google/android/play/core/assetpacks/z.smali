###### Class com.google.android.play.core.assetpacks.z (com.google.android.play.core.assetpacks.z)
.class public final Lcom/google/android/play/core/assetpacks/z;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv4/c0<",
        "Lcom/google/android/play/core/assetpacks/y;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/w1;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/e1;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/h1;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/r0;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/p2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv4/c0;Lv4/c0;Lv4/c0;Lv4/c0;Lv4/c0;Lv4/c0;Lv4/c0;Lv4/c0;Lv4/c0;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv4/c0<",
            "Landroid/content/Context;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/w1;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/e1;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/h1;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/r0;",
            ">;",
            "Lv4/c0<",
            "Ljava/util/concurrent/Executor;",
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

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/z;->a:Lv4/c0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/z;->b:Lv4/c0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/z;->c:Lv4/c0;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/z;->d:Lv4/c0;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/z;->e:Lv4/c0;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/z;->f:Lv4/c0;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/z;->g:Lv4/c0;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/z;->h:Lv4/c0;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/z;->i:Lv4/c0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/z;->a:Lv4/c0;

    check-cast v0, Lcom/google/android/play/core/assetpacks/r3;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/r3;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/z;->b:Lv4/c0;

    invoke-interface {v0}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/z;->c:Lv4/c0;

    invoke-interface {v1}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/z;->d:Lv4/c0;

    invoke-static {v3}, Lv4/a0;->a(Lv4/c0;)Lv4/y;

    move-result-object v5

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/z;->e:Lv4/c0;

    invoke-interface {v3}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/z;->f:Lv4/c0;

    invoke-interface {v4}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/z;->g:Lv4/c0;

    invoke-static {v6}, Lv4/a0;->a(Lv4/c0;)Lv4/y;

    move-result-object v8

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/z;->h:Lv4/c0;

    invoke-static {v6}, Lv4/a0;->a(Lv4/c0;)Lv4/y;

    move-result-object v9

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/z;->i:Lv4/c0;

    invoke-interface {v6}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v6

    new-instance v11, Lcom/google/android/play/core/assetpacks/y;

    .line 2
    check-cast v0, Lcom/google/android/play/core/assetpacks/w1;

    move-object v7, v1

    check-cast v7, Lcom/google/android/play/core/assetpacks/e1;

    move-object v10, v3

    check-cast v10, Lcom/google/android/play/core/assetpacks/h1;

    move-object v12, v4

    check-cast v12, Lcom/google/android/play/core/assetpacks/r0;

    move-object v13, v6

    check-cast v13, Lcom/google/android/play/core/assetpacks/p2;

    move-object v1, v11

    move-object v3, v0

    move-object v4, v7

    move-object v6, v10

    move-object v7, v12

    move-object v10, v13

    invoke-direct/range {v1 .. v10}, Lcom/google/android/play/core/assetpacks/y;-><init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/w1;Lcom/google/android/play/core/assetpacks/e1;Lv4/y;Lcom/google/android/play/core/assetpacks/h1;Lcom/google/android/play/core/assetpacks/r0;Lv4/y;Lv4/y;Lcom/google/android/play/core/assetpacks/p2;)V

    return-object v11
.end method
