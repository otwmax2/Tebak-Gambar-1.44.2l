###### Class c2.f (c2.f)
.class public Lc2/f;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lc2/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc2/f$c;,
        Lc2/f$b;
    }
.end annotation


# static fields
.field private static final k:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final a:Lc2/g;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Lc2/f$b;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lc2/f;->k:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 7
    invoke-static {}, Lc2/f;->j()Lc2/g;

    move-result-object v0

    invoke-static {}, Lc2/f;->i()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lc2/f;-><init>(ILc2/g;Ljava/util/Set;)V

    return-void
.end method

.method constructor <init>(ILc2/g;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc2/g;",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc2/f;->c:I

    .line 3
    iput p1, p0, Lc2/f;->e:I

    .line 4
    iput-object p2, p0, Lc2/f;->a:Lc2/g;

    .line 5
    iput-object p3, p0, Lc2/f;->b:Ljava/util/Set;

    .line 6
    new-instance p1, Lc2/f$c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lc2/f$c;-><init>(Lc2/f$a;)V

    iput-object p1, p0, Lc2/f;->d:Lc2/f$b;

    return-void
.end method

.method private f()V
    .registers 3

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    invoke-direct {p0}, Lc2/f;->g()V

    :cond_c
    return-void
.end method

.method private g()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc2/f;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc2/f;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", puts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc2/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", evictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc2/f;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc2/f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc2/f;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc2/f;->a:Lc2/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LruBitmapPool"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private h()V
    .registers 2

    .line 1
    iget v0, p0, Lc2/f;->e:I

    invoke-direct {p0, v0}, Lc2/f;->k(I)V

    return-void
.end method

.method private static i()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1a

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static j()Lc2/g;
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_c

    .line 2
    new-instance v0, Lc2/i;

    invoke-direct {v0}, Lc2/i;-><init>()V

    goto :goto_11

    .line 3
    :cond_c
    new-instance v0, Lc2/a;

    invoke-direct {v0}, Lc2/a;-><init>()V

    :goto_11
    return-object v0
.end method

.method private declared-synchronized k(I)V
    .registers 6

    monitor-enter p0

    .line 1
    :goto_1
    :try_start_1
    iget v0, p0, Lc2/f;->f:I

    if-le v0, p1, :cond_67

    .line 2
    iget-object v0, p0, Lc2/f;->a:Lc2/g;

    invoke-interface {v0}, Lc2/g;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_25

    const-string p1, "LruBitmapPool"

    const/4 v0, 0x5

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_20

    const-string p1, "LruBitmapPool"

    const-string v0, "Size mismatch, resetting"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lc2/f;->g()V

    :cond_20
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lc2/f;->f:I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_69

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_25
    :try_start_25
    iget-object v1, p0, Lc2/f;->d:Lc2/f$b;

    invoke-interface {v1, v0}, Lc2/f$b;->a(Landroid/graphics/Bitmap;)V

    .line 9
    iget v1, p0, Lc2/f;->f:I

    iget-object v2, p0, Lc2/f;->a:Lc2/g;

    invoke-interface {v2, v0}, Lc2/g;->e(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lc2/f;->f:I

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 11
    iget v1, p0, Lc2/f;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc2/f;->j:I

    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_63

    const-string v1, "LruBitmapPool"

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evicting bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc2/f;->a:Lc2/g;

    invoke-interface {v3, v0}, Lc2/g;->f(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_63
    invoke-direct {p0}, Lc2/f;->f()V
    :try_end_66
    .catchall {:try_start_25 .. :try_end_66} :catchall_69

    goto :goto_1

    .line 15
    :cond_67
    monitor-exit p0

    return-void

    :catchall_69
    move-exception p1

    monitor-exit p0

    goto :goto_6d

    :goto_6c
    throw p1

    :goto_6d
    goto :goto_6c
.end method


# virtual methods
.method public declared-synchronized a(Landroid/graphics/Bitmap;)Z
    .registers 6

    monitor-enter p0

    if-eqz p1, :cond_af

    .line 1
    :try_start_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_68

    iget-object v0, p0, Lc2/f;->a:Lc2/g;

    invoke-interface {v0, p1}, Lc2/g;->e(Landroid/graphics/Bitmap;)I

    move-result v0

    iget v2, p0, Lc2/f;->e:I

    if-gt v0, v2, :cond_68

    iget-object v0, p0, Lc2/f;->b:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_68

    .line 2
    :cond_21
    iget-object v0, p0, Lc2/f;->a:Lc2/g;

    invoke-interface {v0, p1}, Lc2/g;->e(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 3
    iget-object v2, p0, Lc2/f;->a:Lc2/g;

    invoke-interface {v2, p1}, Lc2/g;->a(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object v2, p0, Lc2/f;->d:Lc2/f$b;

    invoke-interface {v2, p1}, Lc2/f$b;->b(Landroid/graphics/Bitmap;)V

    .line 5
    iget v2, p0, Lc2/f;->i:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lc2/f;->i:I

    .line 6
    iget v2, p0, Lc2/f;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lc2/f;->f:I

    const-string v0, "LruBitmapPool"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "LruBitmapPool"

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Put bitmap in pool="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc2/f;->a:Lc2/g;

    invoke-interface {v2, p1}, Lc2/g;->f(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_60
    invoke-direct {p0}, Lc2/f;->f()V

    .line 10
    invoke-direct {p0}, Lc2/f;->h()V
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_ad

    .line 11
    monitor-exit p0

    return v3

    :cond_68
    :goto_68
    :try_start_68
    const-string v0, "LruBitmapPool"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_aa

    const-string v0, "LruBitmapPool"

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject bitmap from pool, bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc2/f;->a:Lc2/g;

    invoke-interface {v2, p1}, Lc2/g;->f(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is mutable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is allowed config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc2/f;->b:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_68 .. :try_end_aa} :catchall_ad

    :cond_aa
    const/4 p1, 0x0

    .line 14
    monitor-exit p0

    return p1

    :catchall_ad
    move-exception p1

    goto :goto_b7

    .line 15
    :cond_af
    :try_start_af
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bitmap must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b7
    .catchall {:try_start_af .. :try_end_b7} :catchall_ad

    :goto_b7
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lc2/f;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 3
    :cond_b
    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(I)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimMemory, level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_25

    .line 3
    invoke-virtual {p0}, Lc2/f;->d()V

    goto :goto_30

    :cond_25
    const/16 v0, 0x28

    if-lt p1, v0, :cond_30

    .line 4
    iget p1, p0, Lc2/f;->e:I

    div-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lc2/f;->k(I)V

    :cond_30
    :goto_30
    return-void
.end method

.method public d()V
    .registers 3

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "clearMemory"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lc2/f;->k(I)V

    return-void
.end method

.method public declared-synchronized e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lc2/f;->a:Lc2/g;

    if-eqz p3, :cond_7

    move-object v1, p3

    goto :goto_9

    :cond_7
    sget-object v1, Lc2/f;->k:Landroid/graphics/Bitmap$Config;

    :goto_9
    invoke-interface {v0, p1, p2, v1}, Lc2/g;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_3b

    const-string v2, "LruBitmapPool"

    const/4 v3, 0x3

    .line 2
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "LruBitmapPool"

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing bitmap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc2/f;->a:Lc2/g;

    invoke-interface {v4, p1, p2, p3}, Lc2/g;->d(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_35
    iget v2, p0, Lc2/f;->h:I

    add-int/2addr v2, v1

    iput v2, p0, Lc2/f;->h:I

    goto :goto_59

    .line 5
    :cond_3b
    iget v2, p0, Lc2/f;->g:I

    add-int/2addr v2, v1

    iput v2, p0, Lc2/f;->g:I

    .line 6
    iget v2, p0, Lc2/f;->f:I

    iget-object v3, p0, Lc2/f;->a:Lc2/g;

    invoke-interface {v3, v0}, Lc2/g;->e(Landroid/graphics/Bitmap;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lc2/f;->f:I

    .line 7
    iget-object v2, p0, Lc2/f;->d:Lc2/f$b;

    invoke-interface {v2, v0}, Lc2/f$b;->a(Landroid/graphics/Bitmap;)V

    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_59

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_59
    :goto_59
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7e

    const-string v1, "LruBitmapPool"

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc2/f;->a:Lc2/g;

    invoke-interface {v3, p1, p2, p3}, Lc2/g;->d(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_7e
    invoke-direct {p0}, Lc2/f;->f()V
    :try_end_81
    .catchall {:try_start_1 .. :try_end_81} :catchall_83

    .line 13
    monitor-exit p0

    return-object v0

    :catchall_83
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class c2.f.a (c2.f$a)
.class synthetic Lc2/f$a;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class c2.f.b (c2.f$b)
.class interface abstract Lc2/f$b;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Landroid/graphics/Bitmap;)V
.end method

.method public abstract b(Landroid/graphics/Bitmap;)V
.end method

###### Class c2.f.c (c2.f$c)
.class Lc2/f$c;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lc2/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc2/f$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lc2/f$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .registers 2

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .registers 2

    return-void
.end method
