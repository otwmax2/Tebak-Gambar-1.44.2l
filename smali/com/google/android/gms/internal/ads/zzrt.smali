###### Class com.google.android.gms.internal.ads.zzrt (com.google.android.gms.internal.ads.zzrt)
.class public abstract Lcom/google/android/gms/internal/ads/zzrt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsu;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Ljava/util/HashSet;

.field private final c:Lcom/google/android/gms/internal/ads/zztb;

.field private final d:Lcom/google/android/gms/internal/ads/zzpt;

.field private e:Landroid/os/Looper;

.field private f:Lcom/google/android/gms/internal/ads/zzcn;

.field private g:Lcom/google/android/gms/internal/ads/zzno;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->b:Ljava/util/HashSet;

    new-instance v0, Lcom/google/android/gms/internal/ads/zztb;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->c:Lcom/google/android/gms/internal/ads/zztb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzpt;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzpt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->d:Lcom/google/android/gms/internal/ads/zzpt;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/zzst;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrt;->b:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrt;->b:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrt;->q()V

    :cond_1a
    return-void
.end method

.method public final d(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zztc;)V
    .registers 4

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->c:Lcom/google/android/gms/internal/ads/zztb;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zztb;->b(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zztc;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzst;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrt;->e:Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrt;->f:Lcom/google/android/gms/internal/ads/zzcn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrt;->g:Lcom/google/android/gms/internal/ads/zzno;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrt;->b:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrt;->u()V

    return-void

    .line 5
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzrt;->c(Lcom/google/android/gms/internal/ads/zzst;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zztc;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->c:Lcom/google/android/gms/internal/ads/zztb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zztb;->m(Lcom/google/android/gms/internal/ads/zztc;)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzpu;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->d:Lcom/google/android/gms/internal/ads/zzpt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpt;->c(Lcom/google/android/gms/internal/ads/zzpu;)V

    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/ads/zzst;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->e:Landroid/os/Looper;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrt;->b:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_15

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrt;->r()V

    :cond_15
    return-void
.end method

.method public final j(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpu;)V
    .registers 4

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->d:Lcom/google/android/gms/internal/ads/zzpt;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzpt;->b(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpu;)V

    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/ads/zzst;Lcom/google/android/gms/internal/ads/zzgi;Lcom/google/android/gms/internal/ads/zzno;)V
    .registers 7

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrt;->e:Landroid/os/Looper;

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    if-ne v1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 2
    :cond_d
    :goto_d
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzrt;->g:Lcom/google/android/gms/internal/ads/zzno;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzrt;->f:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrt;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrt;->e:Landroid/os/Looper;

    if-nez v1, :cond_28

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->e:Landroid/os/Looper;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzrt;->b:Ljava/util/HashSet;

    .line 4
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzrt;->s(Lcom/google/android/gms/internal/ads/zzgi;)V

    return-void

    :cond_28
    if-eqz p3, :cond_30

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzrt;->h(Lcom/google/android/gms/internal/ads/zzst;)V

    .line 7
    invoke-interface {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzst;->a(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzcn;)V

    :cond_30
    return-void
.end method

.method protected final l()Lcom/google/android/gms/internal/ads/zzno;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->g:Lcom/google/android/gms/internal/ads/zzno;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected final m(Lcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zzpt;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->d:Lcom/google/android/gms/internal/ads/zzpt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzpt;->a(ILcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zzpt;

    move-result-object p1

    return-object p1
.end method

.method protected final n(ILcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zzpt;
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrt;->d:Lcom/google/android/gms/internal/ads/zzpt;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzpt;->a(ILcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zzpt;

    move-result-object p1

    return-object p1
.end method

.method protected final o(Lcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zztb;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->c:Lcom/google/android/gms/internal/ads/zztb;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zztb;->a(ILcom/google/android/gms/internal/ads/zzss;J)Lcom/google/android/gms/internal/ads/zztb;

    move-result-object p1

    return-object p1
.end method

.method protected final p(ILcom/google/android/gms/internal/ads/zzss;J)Lcom/google/android/gms/internal/ads/zztb;
    .registers 7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrt;->c:Lcom/google/android/gms/internal/ads/zztb;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zztb;->a(ILcom/google/android/gms/internal/ads/zzss;J)Lcom/google/android/gms/internal/ads/zztb;

    move-result-object p1

    return-object p1
.end method

.method protected q()V
    .registers 1

    return-void
.end method

.method public synthetic q0()Lcom/google/android/gms/internal/ads/zzcn;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected r()V
    .registers 1

    return-void
.end method

.method protected abstract s(Lcom/google/android/gms/internal/ads/zzgi;)V
.end method

.method protected final t(Lcom/google/android/gms/internal/ads/zzcn;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrt;->f:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1
    check-cast v3, Lcom/google/android/gms/internal/ads/zzst;

    .line 2
    invoke-interface {v3, p0, p1}, Lcom/google/android/gms/internal/ads/zzst;->a(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzcn;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method protected abstract u()V
.end method

.method public synthetic v()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final w()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrt;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
