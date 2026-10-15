###### Class v1.g (v1.g)
.class public Lv1/g;
.super Ljava/lang/Object;
.source "Glide.java"


# static fields
.field private static volatile o:Lv1/g; = null

.field private static p:Z = true


# instance fields
.field private final a:Lg2/c;

.field private final b:Lb2/c;

.field private final c:Lc2/c;

.field private final d:Ld2/h;

.field private final e:Lz1/a;

.field private final f:Lv2/f;

.field private final g:Lp2/d;

.field private final h:Ls2/c;

.field private final i:Lk2/e;

.field private final j:Lo2/f;

.field private final k:Lk2/i;

.field private final l:Lo2/f;

.field private final m:Landroid/os/Handler;

.field private final n:Lf2/a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lb2/c;Ld2/h;Lc2/c;Landroid/content/Context;Lz1/a;)V
    .registers 13

    .line 1
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/Integer;

    const-class v2, Lo2/a;

    const-class v3, Lg2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v4, Lv2/f;

    invoke-direct {v4}, Lv2/f;-><init>()V

    iput-object v4, p0, Lv1/g;->f:Lv2/f;

    .line 3
    new-instance v4, Lp2/d;

    invoke-direct {v4}, Lp2/d;-><init>()V

    iput-object v4, p0, Lv1/g;->g:Lp2/d;

    .line 4
    iput-object p1, p0, Lv1/g;->b:Lb2/c;

    .line 5
    iput-object p3, p0, Lv1/g;->c:Lc2/c;

    .line 6
    iput-object p2, p0, Lv1/g;->d:Ld2/h;

    .line 7
    iput-object p5, p0, Lv1/g;->e:Lz1/a;

    .line 8
    new-instance p1, Lg2/c;

    invoke-direct {p1, p4}, Lg2/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lv1/g;->a:Lg2/c;

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {p1, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lv1/g;->m:Landroid/os/Handler;

    .line 10
    new-instance p1, Lf2/a;

    invoke-direct {p1, p2, p3, p5}, Lf2/a;-><init>(Ld2/h;Lc2/c;Lz1/a;)V

    iput-object p1, p0, Lv1/g;->n:Lf2/a;

    .line 11
    new-instance p1, Ls2/c;

    invoke-direct {p1}, Ls2/c;-><init>()V

    iput-object p1, p0, Lv1/g;->h:Ls2/c;

    .line 12
    new-instance p2, Lk2/p;

    invoke-direct {p2, p3, p5}, Lk2/p;-><init>(Lc2/c;Lz1/a;)V

    .line 13
    const-class v5, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v5, v6, p2}, Ls2/c;->b(Ljava/lang/Class;Ljava/lang/Class;Ls2/b;)V

    .line 14
    new-instance v5, Lk2/g;

    invoke-direct {v5, p3, p5}, Lk2/g;-><init>(Lc2/c;Lz1/a;)V

    .line 15
    const-class p5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p5, v6, v5}, Ls2/c;->b(Ljava/lang/Class;Ljava/lang/Class;Ls2/b;)V

    .line 16
    new-instance p5, Lk2/n;

    invoke-direct {p5, p2, v5}, Lk2/n;-><init>(Ls2/b;Ls2/b;)V

    .line 17
    const-class p2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, p2, p5}, Ls2/c;->b(Ljava/lang/Class;Ljava/lang/Class;Ls2/b;)V

    .line 18
    new-instance p2, Ln2/c;

    invoke-direct {p2, p4, p3}, Ln2/c;-><init>(Landroid/content/Context;Lc2/c;)V

    .line 19
    const-class v5, Ljava/io/InputStream;

    const-class v6, Ln2/b;

    invoke-virtual {p1, v5, v6, p2}, Ls2/c;->b(Ljava/lang/Class;Ljava/lang/Class;Ls2/b;)V

    .line 20
    new-instance v5, Lo2/g;

    invoke-direct {v5, p5, p2, p3}, Lo2/g;-><init>(Ls2/b;Ls2/b;Lc2/c;)V

    invoke-virtual {p1, v3, v2, v5}, Ls2/c;->b(Ljava/lang/Class;Ljava/lang/Class;Ls2/b;)V

    .line 21
    const-class p2, Ljava/io/InputStream;

    const-class p5, Ljava/io/File;

    new-instance v3, Lm2/d;

    invoke-direct {v3}, Lm2/d;-><init>()V

    invoke-virtual {p1, p2, p5, v3}, Ls2/c;->b(Ljava/lang/Class;Ljava/lang/Class;Ls2/b;)V

    .line 22
    const-class p1, Ljava/io/File;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lh2/a$a;

    invoke-direct {p5}, Lh2/a$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lv1/g;->t(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)V

    .line 23
    const-class p1, Ljava/io/File;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Li2/c$a;

    invoke-direct {p5}, Li2/c$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lv1/g;->t(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)V

    .line 24
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lh2/b$a;

    invoke-direct {p5}, Lh2/b$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lv1/g;->t(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)V

    .line 25
    const-class p2, Ljava/io/InputStream;

    new-instance p5, Li2/d$a;

    invoke-direct {p5}, Li2/d$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lv1/g;->t(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)V

    .line 26
    const-class p1, Landroid/os/ParcelFileDescriptor;

    new-instance p2, Lh2/b$a;

    invoke-direct {p2}, Lh2/b$a;-><init>()V

    invoke-virtual {p0, v1, p1, p2}, Lv1/g;->t(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)V

    .line 27
    const-class p1, Ljava/io/InputStream;

    new-instance p2, Li2/d$a;

    invoke-direct {p2}, Li2/d$a;-><init>()V

    invoke-virtual {p0, v1, p1, p2}, Lv1/g;->t(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)V

    .line 28
    const-class p1, Landroid/os/ParcelFileDescriptor;

    new-instance p2, Lh2/c$a;

    invoke-direct {p2}, Lh2/c$a;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lv1/g;->t(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)V

    .line 29
    const-class p1, Ljava/io/InputStream;

    new-instance p2, Li2/e$a;

    invoke-direct {p2}, Li2/e$a;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lv1/g;->t(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)V

    .line 30
    const-class p1, Landroid/net/Uri;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lh2/d$a;

    invoke-direct {p5}, Lh2/d$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lv1/g;->t(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)V

    .line 31
    const-class p1, Landroid/net/Uri;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Li2/f$a;

    invoke-direct {p5}, Li2/f$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lv1/g;->t(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)V

    .line 32
    const-class p1, Ljava/net/URL;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Li2/g$a;

    invoke-direct {p5}, Li2/g$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lv1/g;->t(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)V

    .line 33
    const-class p1, Lg2/d;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Li2/a$a;

    invoke-direct {p5}, Li2/a$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lv1/g;->t(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)V

    .line 34
    const-class p1, [B

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Li2/b$a;

    invoke-direct {p5}, Li2/b$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lv1/g;->t(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)V

    .line 35
    const-class p1, Landroid/graphics/Bitmap;

    const-class p2, Lk2/j;

    new-instance p5, Lp2/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p5, v0, p3}, Lp2/b;-><init>(Landroid/content/res/Resources;Lc2/c;)V

    invoke-virtual {v4, p1, p2, p5}, Lp2/d;->b(Ljava/lang/Class;Ljava/lang/Class;Lp2/c;)V

    .line 36
    const-class p1, Ll2/b;

    new-instance p2, Lp2/a;

    new-instance p5, Lp2/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-direct {p5, p4, p3}, Lp2/b;-><init>(Landroid/content/res/Resources;Lc2/c;)V

    invoke-direct {p2, p5}, Lp2/a;-><init>(Lp2/c;)V

    invoke-virtual {v4, v2, p1, p2}, Lp2/d;->b(Ljava/lang/Class;Ljava/lang/Class;Lp2/c;)V

    .line 37
    new-instance p1, Lk2/e;

    invoke-direct {p1, p3}, Lk2/e;-><init>(Lc2/c;)V

    iput-object p1, p0, Lv1/g;->i:Lk2/e;

    .line 38
    new-instance p2, Lo2/f;

    invoke-direct {p2, p3, p1}, Lo2/f;-><init>(Lc2/c;Lz1/g;)V

    iput-object p2, p0, Lv1/g;->j:Lo2/f;

    .line 39
    new-instance p1, Lk2/i;

    invoke-direct {p1, p3}, Lk2/i;-><init>(Lc2/c;)V

    iput-object p1, p0, Lv1/g;->k:Lk2/i;

    .line 40
    new-instance p2, Lo2/f;

    invoke-direct {p2, p3, p1}, Lo2/f;-><init>(Lc2/c;Lz1/g;)V

    iput-object p2, p0, Lv1/g;->l:Lo2/f;

    return-void
.end method

.method public static b(Ljava/lang/Class;Landroid/content/Context;)Lg2/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lg2/l<",
            "TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lv1/g;->d(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lg2/l;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lg2/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lg2/l<",
            "TT;TY;>;"
        }
    .end annotation

    if-nez p0, :cond_12

    const/4 p0, 0x3

    const-string p1, "Glide"

    .line 1
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "Unable to load null model, setting placeholder only"

    .line 2
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_12
    invoke-static {p2}, Lv1/g;->i(Landroid/content/Context;)Lv1/g;

    move-result-object p2

    invoke-direct {p2}, Lv1/g;->q()Lg2/c;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lg2/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lg2/l;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Class;Landroid/content/Context;)Lg2/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lg2/l<",
            "TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lv1/g;->d(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lg2/l;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lv2/j;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/j<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lx2/h;->b()V

    .line 2
    invoke-interface {p0}, Lv2/j;->k()Lt2/c;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 3
    invoke-interface {v0}, Lt2/c;->clear()V

    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Lv2/j;->m(Lt2/c;)V

    :cond_10
    return-void
.end method

.method public static i(Landroid/content/Context;)Lv1/g;
    .registers 6

    .line 1
    sget-object v0, Lv1/g;->o:Lv1/g;

    if-nez v0, :cond_4d

    .line 2
    const-class v0, Lv1/g;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lv1/g;->o:Lv1/g;

    if-nez v1, :cond_48

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    new-instance v1, Lv1/h;

    invoke-direct {v1, p0}, Lv1/h;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-static {p0}, Lv1/g;->s(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/a;

    .line 8
    invoke-interface {v4, p0, v1}, Lr2/a;->b(Landroid/content/Context;Lv1/h;)V

    goto :goto_1c

    .line 9
    :cond_2c
    invoke-virtual {v1}, Lv1/h;->a()Lv1/g;

    move-result-object v1

    sput-object v1, Lv1/g;->o:Lv1/g;

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/a;

    .line 11
    sget-object v3, Lv1/g;->o:Lv1/g;

    invoke-interface {v2, p0, v3}, Lr2/a;->a(Landroid/content/Context;Lv1/g;)V

    goto :goto_36

    .line 12
    :cond_48
    monitor-exit v0

    goto :goto_4d

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw p0

    .line 13
    :cond_4d
    :goto_4d
    sget-object p0, Lv1/g;->o:Lv1/g;

    return-object p0
.end method

.method private q()Lg2/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lv1/g;->a:Lg2/c;

    return-object v0
.end method

.method private static s(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lr2/a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lv1/g;->p:Z

    if-eqz v0, :cond_e

    .line 2
    new-instance v0, Lr2/b;

    invoke-direct {v0, p0}, Lr2/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lr2/b;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/content/Context;)Lv1/j;
    .registers 2

    .line 1
    invoke-static {}, Lq2/k;->c()Lq2/k;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lq2/k;->e(Landroid/content/Context;)Lv1/j;

    move-result-object p0

    return-object p0
.end method

.method public static w(Landroidx/fragment/app/e;)Lv1/j;
    .registers 2

    .line 1
    invoke-static {}, Lq2/k;->c()Lq2/k;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lq2/k;->f(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/Class;Ljava/lang/Class;)Ls2/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Ls2/b<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv1/g;->h:Ls2/c;

    invoke-virtual {v0, p1, p2}, Ls2/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Ls2/b;

    move-result-object p1

    return-object p1
.end method

.method c(Landroid/widget/ImageView;Ljava/lang/Class;)Lv2/j;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lv2/j<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv1/g;->f:Lv2/f;

    invoke-virtual {v0, p1, p2}, Lv2/f;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lv2/j;

    move-result-object p1

    return-object p1
.end method

.method f(Ljava/lang/Class;Ljava/lang/Class;)Lp2/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lp2/c<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv1/g;->g:Lp2/d;

    invoke-virtual {v0, p1, p2}, Lp2/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lp2/c;

    move-result-object p1

    return-object p1
.end method

.method public h()V
    .registers 2

    .line 1
    invoke-static {}, Lx2/h;->b()V

    .line 2
    iget-object v0, p0, Lv1/g;->d:Ld2/h;

    invoke-interface {v0}, Ld2/h;->d()V

    .line 3
    iget-object v0, p0, Lv1/g;->c:Lc2/c;

    invoke-interface {v0}, Lc2/c;->d()V

    return-void
.end method

.method j()Lk2/e;
    .registers 2

    .line 1
    iget-object v0, p0, Lv1/g;->i:Lk2/e;

    return-object v0
.end method

.method k()Lk2/i;
    .registers 2

    .line 1
    iget-object v0, p0, Lv1/g;->k:Lk2/i;

    return-object v0
.end method

.method public l()Lc2/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lv1/g;->c:Lc2/c;

    return-object v0
.end method

.method m()Lz1/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lv1/g;->e:Lz1/a;

    return-object v0
.end method

.method n()Lo2/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lv1/g;->j:Lo2/f;

    return-object v0
.end method

.method o()Lo2/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lv1/g;->l:Lo2/f;

    return-object v0
.end method

.method p()Lb2/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lv1/g;->b:Lb2/c;

    return-object v0
.end method

.method r()Landroid/os/Handler;
    .registers 2

    .line 1
    iget-object v0, p0, Lv1/g;->m:Landroid/os/Handler;

    return-object v0
.end method

.method public t(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lg2/m<",
            "TT;TY;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv1/g;->a:Lg2/c;

    invoke-virtual {v0, p1, p2, p3}, Lg2/c;->f(Ljava/lang/Class;Ljava/lang/Class;Lg2/m;)Lg2/m;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2
    invoke-interface {p1}, Lg2/m;->b()V

    :cond_b
    return-void
.end method

.method public u(I)V
    .registers 3

    .line 1
    invoke-static {}, Lx2/h;->b()V

    .line 2
    iget-object v0, p0, Lv1/g;->d:Ld2/h;

    invoke-interface {v0, p1}, Ld2/h;->c(I)V

    .line 3
    iget-object v0, p0, Lv1/g;->c:Lc2/c;

    invoke-interface {v0, p1}, Lc2/c;->c(I)V

    return-void
.end method
