###### Class com.google.android.gms.internal.ads.zzfhb (com.google.android.gms.internal.ads.zzfhb)
.class public final Lcom/google/android/gms/internal/ads/zzfhb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfgg;


# static fields
.field private static final i:Lcom/google/android/gms/internal/ads/zzfhb;

.field private static final j:Landroid/os/Handler;

.field private static k:Landroid/os/Handler;

.field private static final l:Ljava/lang/Runnable;

.field private static final m:Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/List;

.field private b:I

.field private c:Z

.field private final d:Ljava/util/List;

.field private final e:Lcom/google/android/gms/internal/ads/zzfgi;

.field private final f:Lcom/google/android/gms/internal/ads/zzfgu;

.field private final g:Lcom/google/android/gms/internal/ads/zzfgv;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfhb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->i:Lcom/google/android/gms/internal/ads/zzfhb;

    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->j:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->k:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfgx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfgy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->m:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->d:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgu;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfgu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->f:Lcom/google/android/gms/internal/ads/zzfgu;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfgi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->e:Lcom/google/android/gms/internal/ads/zzfgi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhe;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfhe;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgv;-><init>(Lcom/google/android/gms/internal/ads/zzfhe;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->g:Lcom/google/android/gms/internal/ads/zzfgv;

    return-void
.end method

.method static bridge synthetic b()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzfhb;)Lcom/google/android/gms/internal/ads/zzfgv;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->g:Lcom/google/android/gms/internal/ads/zzfgv;

    return-object p0
.end method

.method public static d()Lcom/google/android/gms/internal/ads/zzfhb;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->i:Lcom/google/android/gms/internal/ads/zzfhb;

    return-object v0
.end method

.method static bridge synthetic e()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method static bridge synthetic f()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method static bridge synthetic g(Lcom/google/android/gms/internal/ads/zzfhb;)V
    .registers 11

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhb;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->c:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffz;->a()Lcom/google/android/gms/internal/ads/zzffz;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzffz;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzffo;

    goto :goto_16

    .line 4
    :cond_23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzfhb;->h:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhb;->f:Lcom/google/android/gms/internal/ads/zzfgu;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgu;->i()V

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhb;->e:Lcom/google/android/gms/internal/ads/zzfgi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfgi;->a()Lcom/google/android/gms/internal/ads/zzfgh;

    move-result-object v6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhb;->f:Lcom/google/android/gms/internal/ads/zzfgu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfgu;->e()Ljava/util/HashSet;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_90

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhb;->f:Lcom/google/android/gms/internal/ads/zzfgu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfgu;->e()Ljava/util/HashSet;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-static {v0, v0, v0, v0}, Lcom/google/android/gms/internal/ads/zzfgp;->a(IIII)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfhb;->f:Lcom/google/android/gms/internal/ads/zzfgu;

    .line 10
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzfgu;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfhb;->e:Lcom/google/android/gms/internal/ads/zzfgi;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfgi;->b()Lcom/google/android/gms/internal/ads/zzfgh;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfhb;->f:Lcom/google/android/gms/internal/ads/zzfgu;

    .line 11
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzfgu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7f

    .line 12
    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/ads/zzfgh;->b(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    .line 13
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/ads/zzfgp;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 14
    invoke-static {v7, v9}, Lcom/google/android/gms/internal/ads/zzfgp;->f(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 15
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzfgp;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 16
    :cond_7f
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfgp;->i(Lorg/json/JSONObject;)V

    new-instance v7, Ljava/util/HashSet;

    .line 17
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 18
    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfhb;->g:Lcom/google/android/gms/internal/ads/zzfgv;

    .line 19
    invoke-virtual {v4, v5, v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzfgv;->c(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_4e

    :cond_90
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhb;->f:Lcom/google/android/gms/internal/ads/zzfgu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfgu;->f()Ljava/util/HashSet;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_b7

    .line 21
    invoke-static {v0, v0, v0, v0}, Lcom/google/android/gms/internal/ads/zzfgp;->a(IIII)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v7, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfhb;->k(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfgh;Lorg/json/JSONObject;IZ)V

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfgp;->i(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhb;->g:Lcom/google/android/gms/internal/ads/zzfgv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfhb;->f:Lcom/google/android/gms/internal/ads/zzfgu;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfgu;->f()Ljava/util/HashSet;

    move-result-object v4

    .line 23
    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzfgv;->d(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_bc

    .line 24
    :cond_b7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->g:Lcom/google/android/gms/internal/ads/zzfgv;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgv;->b()V

    .line 26
    :goto_bc
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->f:Lcom/google/android/gms/internal/ads/zzfgu;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgu;->g()V

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfhb;->h:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfhb;->a:Ljava/util/List;

    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f4

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->a:Ljava/util/List;

    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d6
    :goto_d6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfha;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfha;->zzb()V

    .line 32
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzfgz;

    if-eqz v3, :cond_d6

    .line 33
    check-cast v2, Lcom/google/android/gms/internal/ads/zzfgz;

    .line 34
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfgz;->zza()V

    goto :goto_d6

    :cond_f4
    return-void
.end method

.method private final k(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfgh;Lorg/json/JSONObject;IZ)V
    .registers 13

    const/4 v0, 0x1

    if-ne p4, v0, :cond_5

    const/4 v5, 0x1

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_7
    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p0

    move v6, p5

    .line 1
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfgh;->a(Landroid/view/View;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfgg;ZZ)V

    return-void
.end method

.method private static final l()V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->k:Landroid/os/Handler;

    if-eqz v0, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhb;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->k:Landroid/os/Handler;

    :cond_c
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfgh;Lorg/json/JSONObject;Z)V
    .registers 12

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfgs;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->f:Lcom/google/android/gms/internal/ads/zzfgu;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgu;->k(Landroid/view/View;)I

    move-result v5

    const/4 v0, 0x3

    if-ne v5, v0, :cond_10

    return-void

    .line 3
    :cond_10
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzfgh;->b(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 4
    invoke-static {p3, v4}, Lcom/google/android/gms/internal/ads/zzfgp;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhb;->f:Lcom/google/android/gms/internal/ads/zzfgu;

    .line 5
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfgu;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    if-eqz p3, :cond_36

    .line 6
    invoke-static {v4, p3}, Lcom/google/android/gms/internal/ads/zzfgp;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhb;->f:Lcom/google/android/gms/internal/ads/zzfgu;

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfgu;->j(Landroid/view/View;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/zzfgp;->e(Lorg/json/JSONObject;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhb;->f:Lcom/google/android/gms/internal/ads/zzfgu;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgu;->h()V

    goto :goto_53

    :cond_36
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhb;->f:Lcom/google/android/gms/internal/ads/zzfgu;

    .line 9
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfgu;->b(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzfgt;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_44

    .line 10
    invoke-static {v4, p3}, Lcom/google/android/gms/internal/ads/zzfgp;->d(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfgt;)V

    const/4 p3, 0x1

    goto :goto_45

    :cond_44
    const/4 p3, 0x0

    :goto_45
    if-nez p4, :cond_4c

    if-eqz p3, :cond_4a

    goto :goto_4c

    :cond_4a
    const/4 v6, 0x0

    goto :goto_4d

    :cond_4c
    :goto_4c
    const/4 v6, 0x1

    :goto_4d
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfhb;->k(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfgh;Lorg/json/JSONObject;IZ)V

    .line 12
    :goto_53
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfhb;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfhb;->b:I

    :cond_58
    return-void
.end method

.method public final h()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhb;->l()V

    return-void
.end method

.method public final i()V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->k:Landroid/os/Handler;

    if-nez v0, :cond_1d

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->k:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhb;->l:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->k:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhb;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    return-void
.end method

.method public final j()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhb;->l()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhb;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhb;->j:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgw;-><init>(Lcom/google/android/gms/internal/ads/zzfhb;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
