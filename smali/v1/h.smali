###### Class v1.h (v1.h)
.class public Lv1/h;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lb2/c;

.field private c:Lc2/c;

.field private d:Ld2/h;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Lz1/a;

.field private h:Ld2/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lv1/h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a()Lv1/g;
    .registers 8

    .line 1
    iget-object v0, p0, Lv1/h;->e:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    new-instance v2, Le2/a;

    invoke-direct {v2, v0}, Le2/a;-><init>(I)V

    iput-object v2, p0, Lv1/h;->e:Ljava/util/concurrent/ExecutorService;

    .line 4
    :cond_18
    iget-object v0, p0, Lv1/h;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_23

    .line 5
    new-instance v0, Le2/a;

    invoke-direct {v0, v1}, Le2/a;-><init>(I)V

    iput-object v0, p0, Lv1/h;->f:Ljava/util/concurrent/ExecutorService;

    .line 6
    :cond_23
    new-instance v0, Ld2/i;

    iget-object v1, p0, Lv1/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ld2/i;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v1, p0, Lv1/h;->c:Lc2/c;

    if-nez v1, :cond_47

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_40

    .line 9
    invoke-virtual {v0}, Ld2/i;->a()I

    move-result v1

    .line 10
    new-instance v2, Lc2/f;

    invoke-direct {v2, v1}, Lc2/f;-><init>(I)V

    iput-object v2, p0, Lv1/h;->c:Lc2/c;

    goto :goto_47

    .line 11
    :cond_40
    new-instance v1, Lc2/d;

    invoke-direct {v1}, Lc2/d;-><init>()V

    iput-object v1, p0, Lv1/h;->c:Lc2/c;

    .line 12
    :cond_47
    :goto_47
    iget-object v1, p0, Lv1/h;->d:Ld2/h;

    if-nez v1, :cond_56

    .line 13
    new-instance v1, Ld2/g;

    invoke-virtual {v0}, Ld2/i;->c()I

    move-result v0

    invoke-direct {v1, v0}, Ld2/g;-><init>(I)V

    iput-object v1, p0, Lv1/h;->d:Ld2/h;

    .line 14
    :cond_56
    iget-object v0, p0, Lv1/h;->h:Ld2/a$a;

    if-nez v0, :cond_63

    .line 15
    new-instance v0, Ld2/f;

    iget-object v1, p0, Lv1/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ld2/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lv1/h;->h:Ld2/a$a;

    .line 16
    :cond_63
    iget-object v0, p0, Lv1/h;->b:Lb2/c;

    if-nez v0, :cond_76

    .line 17
    new-instance v0, Lb2/c;

    iget-object v1, p0, Lv1/h;->d:Ld2/h;

    iget-object v2, p0, Lv1/h;->h:Ld2/a$a;

    iget-object v3, p0, Lv1/h;->f:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lv1/h;->e:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lb2/c;-><init>(Ld2/h;Ld2/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lv1/h;->b:Lb2/c;

    .line 18
    :cond_76
    iget-object v0, p0, Lv1/h;->g:Lz1/a;

    if-nez v0, :cond_7e

    .line 19
    sget-object v0, Lz1/a;->r:Lz1/a;

    iput-object v0, p0, Lv1/h;->g:Lz1/a;

    .line 20
    :cond_7e
    new-instance v0, Lv1/g;

    iget-object v2, p0, Lv1/h;->b:Lb2/c;

    iget-object v3, p0, Lv1/h;->d:Ld2/h;

    iget-object v4, p0, Lv1/h;->c:Lc2/c;

    iget-object v5, p0, Lv1/h;->a:Landroid/content/Context;

    iget-object v6, p0, Lv1/h;->g:Lz1/a;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lv1/g;-><init>(Lb2/c;Ld2/h;Lc2/c;Landroid/content/Context;Lz1/a;)V

    return-object v0
.end method

.method public b(Ld2/a$a;)Lv1/h;
    .registers 2

    .line 1
    iput-object p1, p0, Lv1/h;->h:Ld2/a$a;

    return-object p0
.end method
