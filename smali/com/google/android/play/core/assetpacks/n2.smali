###### Class com.google.android.play.core.assetpacks.n2 (com.google.android.play.core.assetpacks.n2)
.class final Lcom/google/android/play/core/assetpacks/n2;
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

.field private final f:Lu4/b;

.field private final g:Lcom/google/android/play/core/assetpacks/p2;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/e0;Lv4/y;Lcom/google/android/play/core/assetpacks/w1;Lv4/y;Lcom/google/android/play/core/assetpacks/h1;Lu4/b;Lcom/google/android/play/core/assetpacks/p2;)V
    .registers 8
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
            "Lu4/b;",
            "Lcom/google/android/play/core/assetpacks/p2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/n2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/n2;->b:Lv4/y;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/n2;->c:Lcom/google/android/play/core/assetpacks/w1;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/n2;->d:Lv4/y;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/n2;->e:Lcom/google/android/play/core/assetpacks/h1;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/n2;->f:Lu4/b;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/n2;->g:Lcom/google/android/play/core/assetpacks/p2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/k2;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/k2;->c:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/k2;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/e0;->w(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/n2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/k2;->c:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/k2;->d:J

    .line 2
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/e0;->y(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_f5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 4
    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/n2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v6, p1, Lcom/google/android/play/core/assetpacks/k2;->c:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/k2;->d:J

    .line 5
    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/google/android/play/core/assetpacks/e0;->u(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 7
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 8
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v5, p1, Lcom/google/android/play/core/assetpacks/k2;->c:I

    iget-wide v6, p1, Lcom/google/android/play/core/assetpacks/k2;->d:J

    new-instance v8, Ljava/io/File;

    .line 9
    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/google/android/play/core/assetpacks/e0;->u(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    const-string v2, "merge.tmp"

    .line 10
    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v5, p1, Lcom/google/android/play/core/assetpacks/k2;->c:I

    iget-wide v6, p1, Lcom/google/android/play/core/assetpacks/k2;->d:J

    .line 11
    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/google/android/play/core/assetpacks/e0;->v(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 13
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 14
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n2;->f:Lu4/b;

    const-string v1, "assetOnlyUpdates"

    .line 15
    invoke-virtual {v0, v1}, Lu4/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    :try_start_70
    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/n2;->g:Lcom/google/android/play/core/assetpacks/p2;

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v7, p1, Lcom/google/android/play/core/assetpacks/k2;->c:I

    iget-wide v8, p1, Lcom/google/android/play/core/assetpacks/k2;->d:J

    iget-object v10, p1, Lcom/google/android/play/core/assetpacks/k2;->e:Ljava/lang/String;

    .line 16
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/play/core/assetpacks/p2;->b(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7d} :catch_8e

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n2;->d:Lv4/y;

    .line 17
    invoke-interface {v0}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/m2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/assetpacks/m2;-><init>(Lcom/google/android/play/core/assetpacks/n2;Lcom/google/android/play/core/assetpacks/k2;)V

    .line 18
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_bf

    :catch_8e
    move-exception v0

    .line 19
    new-instance v1, Lcom/google/android/play/core/assetpacks/d1;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    aput-object v5, v2, v3

    .line 20
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "Could not write asset pack version tag for pack %s: %s"

    .line 21
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {v1, v0, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_aa
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n2;->d:Lv4/y;

    .line 22
    invoke-interface {v0}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/n2;->a:Lcom/google/android/play/core/assetpacks/e0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/play/core/assetpacks/l2;

    invoke-direct {v2, v1}, Lcom/google/android/play/core/assetpacks/l2;-><init>(Lcom/google/android/play/core/assetpacks/e0;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    :goto_bf
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n2;->c:Lcom/google/android/play/core/assetpacks/w1;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/k2;->c:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/k2;->d:J

    .line 24
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/w1;->i(Ljava/lang/String;IJ)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n2;->e:Lcom/google/android/play/core/assetpacks/h1;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/h1;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n2;->b:Lv4/y;

    .line 26
    invoke-interface {v0}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/u3;

    iget v1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/u3;->a(ILjava/lang/String;)V

    return-void

    .line 27
    :cond_e1
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    const-string v1, "Cannot move metadata files to final location."

    .line 28
    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 29
    :cond_eb
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    const-string v1, "Cannot move merged pack files to final location."

    .line 30
    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 31
    :cond_f5
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "Cannot find pack files to move for pack %s."

    .line 32
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final synthetic b(Lcom/google/android/play/core/assetpacks/k2;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/k2;->c:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/k2;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/e0;->b(Ljava/lang/String;IJ)V

    return-void
.end method

###### Class com.google.android.play.core.assetpacks.l2 (com.google.android.play.core.assetpacks.l2)
.class public final synthetic Lcom/google/android/play/core/assetpacks/l2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/play/core/assetpacks/e0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/e0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/l2;->o:Lcom/google/android/play/core/assetpacks/e0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/l2;->o:Lcom/google/android/play/core/assetpacks/e0;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/e0;->I()V

    return-void
.end method

###### Class com.google.android.play.core.assetpacks.m2 (com.google.android.play.core.assetpacks.m2)
.class public final synthetic Lcom/google/android/play/core/assetpacks/m2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/play/core/assetpacks/n2;

.field public final synthetic p:Lcom/google/android/play/core/assetpacks/k2;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/n2;Lcom/google/android/play/core/assetpacks/k2;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/m2;->o:Lcom/google/android/play/core/assetpacks/n2;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/m2;->p:Lcom/google/android/play/core/assetpacks/k2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m2;->o:Lcom/google/android/play/core/assetpacks/n2;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/m2;->p:Lcom/google/android/play/core/assetpacks/k2;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/n2;->b(Lcom/google/android/play/core/assetpacks/k2;)V

    return-void
.end method
