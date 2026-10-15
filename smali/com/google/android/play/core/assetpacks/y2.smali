###### Class com.google.android.play.core.assetpacks.y2 (com.google.android.play.core.assetpacks.y2)
.class final Lcom/google/android/play/core/assetpacks/y2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/e0;

.field private final b:Lv4/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/play/core/assetpacks/w1;

.field private final d:Lv4/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/y<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/play/core/assetpacks/h1;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/e0;Lv4/y;Lcom/google/android/play/core/assetpacks/w1;Lv4/y;Lcom/google/android/play/core/assetpacks/h1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/e0;",
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/w1;",
            "Lv4/y<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/h1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/y2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/y2;->b:Lv4/y;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/y2;->c:Lcom/google/android/play/core/assetpacks/w1;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/y2;->d:Lv4/y;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/y2;->e:Lcom/google/android/play/core/assetpacks/h1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/w2;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/w2;->c:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/w2;->e:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/e0;->u(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_7d

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/y2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v6, p1, Lcom/google/android/play/core/assetpacks/w2;->d:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/w2;->e:J

    .line 4
    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/google/android/play/core/assetpacks/e0;->u(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 7
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y2;->d:Lv4/y;

    .line 8
    invoke-interface {v0}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/x2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/assetpacks/x2;-><init>(Lcom/google/android/play/core/assetpacks/y2;Lcom/google/android/play/core/assetpacks/w2;)V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y2;->c:Lcom/google/android/play/core/assetpacks/w1;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/w2;->d:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/w2;->e:J

    .line 10
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/w1;->i(Ljava/lang/String;IJ)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y2;->e:Lcom/google/android/play/core/assetpacks/h1;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/h1;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y2;->b:Lv4/y;

    .line 12
    invoke-interface {v0}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/u3;

    iget v1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/u3;->a(ILjava/lang/String;)V

    return-void

    .line 13
    :cond_5c
    new-instance v5, Lcom/google/android/play/core/assetpacks/d1;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    const-string v0, "Cannot promote pack %s from %s to %s"

    .line 15
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {v5, v0, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 16
    :cond_7d
    new-instance v1, Lcom/google/android/play/core/assetpacks/d1;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Cannot find pack files to promote for pack %s at %s"

    .line 18
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {v1, v0, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method final synthetic b(Lcom/google/android/play/core/assetpacks/w2;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/w2;->d:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/w2;->e:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/e0;->b(Ljava/lang/String;IJ)V

    return-void
.end method

###### Class com.google.android.play.core.assetpacks.x2 (com.google.android.play.core.assetpacks.x2)
.class public final synthetic Lcom/google/android/play/core/assetpacks/x2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/play/core/assetpacks/y2;

.field public final synthetic p:Lcom/google/android/play/core/assetpacks/w2;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/y2;Lcom/google/android/play/core/assetpacks/w2;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/x2;->o:Lcom/google/android/play/core/assetpacks/y2;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/x2;->p:Lcom/google/android/play/core/assetpacks/w2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/x2;->o:Lcom/google/android/play/core/assetpacks/y2;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/x2;->p:Lcom/google/android/play/core/assetpacks/w2;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/y2;->b(Lcom/google/android/play/core/assetpacks/w2;)V

    return-void
.end method
