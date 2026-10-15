###### Class com.google.android.gms.internal.ads.zzgsa (com.google.android.gms.internal.ads.zzgsa)
.class final Lcom/google/android/gms/internal/ads/zzgsa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgsp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgrw;

.field private final b:Lcom/google/android/gms/internal/ads/zzgtg;

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/ads/zzgpz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgtg;Lcom/google/android/gms/internal/ads/zzgpz;Lcom/google/android/gms/internal/ads/zzgrw;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsa;->b:Lcom/google/android/gms/internal/ads/zzgtg;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzgpz;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgsa;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgsa;->d:Lcom/google/android/gms/internal/ads/zzgpz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgsa;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    return-void
.end method

.method static k(Lcom/google/android/gms/internal/ads/zzgtg;Lcom/google/android/gms/internal/ads/zzgpz;Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgsa;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsa;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgsa;-><init>(Lcom/google/android/gms/internal/ads/zzgtg;Lcom/google/android/gms/internal/ads/zzgpz;Lcom/google/android/gms/internal/ads/zzgrw;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->b:Lcom/google/android/gms/internal/ads/zzgtg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgtg;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtg;->b(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgsa;->c:Z

    if-nez v1, :cond_f

    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->d:Lcom/google/android/gms/internal/ads/zzgpz;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgqd;

    const/4 p1, 0x0

    throw p1
.end method

.method public final b()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgqm;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v0

    return-object v0

    .line 3
    :cond_d
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgrw;->a()Lcom/google/android/gms/internal/ads/zzgrv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgrv;->f1()Lcom/google/android/gms/internal/ads/zzgrw;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->b:Lcom/google/android/gms/internal/ads/zzgtg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgtg;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgsa;->c:Z

    if-nez v1, :cond_f

    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->d:Lcom/google/android/gms/internal/ads/zzgpz;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgqd;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final d(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->d:Lcom/google/android/gms/internal/ads/zzgpz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgqd;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->b:Lcom/google/android/gms/internal/ads/zzgtg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgtg;->m(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->d:Lcom/google/android/gms/internal/ads/zzgpz;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpz;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->b:Lcom/google/android/gms/internal/ads/zzgtg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgsr;->f(Lcom/google/android/gms/internal/ads/zzgtg;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->d:Lcom/google/android/gms/internal/ads/zzgpz;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgsr;->e(Lcom/google/android/gms/internal/ads/zzgpz;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->b:Lcom/google/android/gms/internal/ads/zzgtg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgtg;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgsa;->b:Lcom/google/android/gms/internal/ads/zzgtg;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzgtg;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->c:Z

    if-nez v0, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->d:Lcom/google/android/gms/internal/ads/zzgpz;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgqd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsa;->d:Lcom/google/android/gms/internal/ads/zzgpz;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgpz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgqd;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final h(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgoq;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgqm;

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzgqm;->zzc:Lcom/google/android/gms/internal/ads/zzgth;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgth;->c()Lcom/google/android/gms/internal/ads/zzgth;

    move-result-object p4

    if-eq p3, p4, :cond_c

    goto :goto_12

    .line 2
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgth;->f()Lcom/google/android/gms/internal/ads/zzgth;

    move-result-object p3

    .line 3
    iput-object p3, p2, Lcom/google/android/gms/internal/ads/zzgqm;->zzc:Lcom/google/android/gms/internal/ads/zzgth;

    .line 4
    :goto_12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgqj;

    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final i(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgsh;Lcom/google/android/gms/internal/ads/zzgpy;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsa;->b:Lcom/google/android/gms/internal/ads/zzgtg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgsa;->d:Lcom/google/android/gms/internal/ads/zzgpz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgtg;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgpz;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgqd;

    move-result-object v3

    .line 3
    :cond_c
    :goto_c
    :try_start_c
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->a()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_8a

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->d()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_3f

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_35

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgsa;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    ushr-int/lit8 v4, v4, 0x3

    .line 4
    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/ads/zzgpz;->c(Lcom/google/android/gms/internal/ads/zzgpy;Lcom/google/android/gms/internal/ads/zzgrw;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 5
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/ads/zzgpz;->f(Lcom/google/android/gms/internal/ads/zzgsh;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgpy;Lcom/google/android/gms/internal/ads/zzgqd;)V

    goto :goto_c

    .line 6
    :cond_30
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/ads/zzgtg;->p(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgsh;)Z

    move-result v4

    goto :goto_39

    .line 7
    :cond_35
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->M()Z

    move-result v4
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_8e

    :goto_39
    if-nez v4, :cond_c

    .line 8
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgtg;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3f
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    .line 9
    :cond_42
    :goto_42
    :try_start_42
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->a()I

    move-result v8

    if-ne v8, v5, :cond_49

    goto :goto_71

    .line 10
    :cond_49
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->d()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_5c

    .line 11
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->h()I

    move-result v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgsa;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    .line 12
    invoke-virtual {v1, p3, v6, v4}, Lcom/google/android/gms/internal/ads/zzgpz;->c(Lcom/google/android/gms/internal/ads/zzgpy;Lcom/google/android/gms/internal/ads/zzgrw;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_42

    :cond_5c
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_6b

    if-eqz v6, :cond_66

    .line 13
    invoke-virtual {v1, p2, v6, p3, v3}, Lcom/google/android/gms/internal/ads/zzgpz;->f(Lcom/google/android/gms/internal/ads/zzgsh;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgpy;Lcom/google/android/gms/internal/ads/zzgqd;)V

    goto :goto_42

    .line 14
    :cond_66
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->n()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v7

    goto :goto_42

    .line 15
    :cond_6b
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->M()Z

    move-result v8

    if-nez v8, :cond_42

    .line 16
    :goto_71
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->d()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_85

    if-eqz v7, :cond_c

    if-eqz v6, :cond_81

    .line 17
    invoke-virtual {v1, v7, v6, p3, v3}, Lcom/google/android/gms/internal/ads/zzgpz;->g(Lcom/google/android/gms/internal/ads/zzgpe;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgpy;Lcom/google/android/gms/internal/ads/zzgqd;)V

    goto :goto_c

    .line 18
    :cond_81
    invoke-virtual {v0, v2, v4, v7}, Lcom/google/android/gms/internal/ads/zzgtg;->k(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgpe;)V

    goto :goto_c

    .line 19
    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->b()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p2

    throw p2
    :try_end_8a
    .catchall {:try_start_42 .. :try_end_8a} :catchall_8e

    .line 20
    :cond_8a
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgtg;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_8e
    move-exception p2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgtg;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    goto :goto_94

    :goto_93
    throw p2

    :goto_94
    goto :goto_93
.end method

.method public final j(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgpu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgsa;->d:Lcom/google/android/gms/internal/ads/zzgpz;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgpz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgqd;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
