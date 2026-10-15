###### Class com.google.android.gms.internal.ads.zzhh (com.google.android.gms.internal.ads.zzhh)
.class final Lcom/google/android/gms/internal/ads/zzhh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjq;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzkt;

.field private final p:Lcom/google/android/gms/internal/ads/zzhg;

.field private q:Lcom/google/android/gms/internal/ads/zzkn;

.field private r:Lcom/google/android/gms/internal/ads/zzjq;

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhg;Lcom/google/android/gms/internal/ads/zzdm;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->p:Lcom/google/android/gms/internal/ads/zzhg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzkt;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzkt;-><init>(Lcom/google/android/gms/internal/ads/zzdm;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->s:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzby;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->r:Lcom/google/android/gms/internal/ads/zzjq;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzjq;->a()Lcom/google/android/gms/internal/ads/zzby;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkt;->a()Lcom/google/android/gms/internal/ads/zzby;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public final b(Z)J
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->q:Lcom/google/android/gms/internal/ads/zzkn;

    if-eqz v0, :cond_66

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkn;->Y()Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->q:Lcom/google/android/gms/internal/ads/zzkn;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkn;->J()Z

    move-result v0

    if-nez v0, :cond_1d

    if-nez p1, :cond_66

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->q:Lcom/google/android/gms/internal/ads/zzkn;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzkn;->V()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_66

    .line 4
    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->r:Lcom/google/android/gms/internal/ads/zzjq;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjq;->zza()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhh;->s:Z

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkt;->zza()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_3a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzkt;->d()V

    goto :goto_72

    :cond_3a
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhh;->s:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhh;->t:Z

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkt;->c()V

    :cond_46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    .line 10
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzkt;->b(J)V

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjq;->a()Lcom/google/android/gms/internal/ads/zzby;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkt;->a()Lcom/google/android/gms/internal/ads/zzby;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzby;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->e(Lcom/google/android/gms/internal/ads/zzby;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->p:Lcom/google/android/gms/internal/ads/zzhg;

    .line 15
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhg;->a(Lcom/google/android/gms/internal/ads/zzby;)V

    goto :goto_72

    :cond_66
    :goto_66
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->s:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->t:Z

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzkt;->c()V

    :cond_72
    :goto_72
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->s:Z

    if-eqz p1, :cond_7d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzkt;->zza()J

    move-result-wide v0

    goto :goto_86

    :cond_7d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->r:Lcom/google/android/gms/internal/ads/zzjq;

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjq;->zza()J

    move-result-wide v0

    :goto_86
    return-wide v0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzkn;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->q:Lcom/google/android/gms/internal/ads/zzkn;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->r:Lcom/google/android/gms/internal/ads/zzjq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->q:Lcom/google/android/gms/internal/ads/zzkn;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->s:Z

    :cond_c
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzkn;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzkn;->g()Lcom/google/android/gms/internal/ads/zzjq;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhh;->r:Lcom/google/android/gms/internal/ads/zzjq;

    if-eq v0, v1, :cond_28

    if-nez v1, :cond_1a

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->r:Lcom/google/android/gms/internal/ads/zzjq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->q:Lcom/google/android/gms/internal/ads/zzkn;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzkt;->a()Lcom/google/android/gms/internal/ads/zzby;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzjq;->e(Lcom/google/android/gms/internal/ads/zzby;)V

    return-void

    .line 4
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhj;->d(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object p1

    .line 7
    throw p1

    :cond_28
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzby;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->r:Lcom/google/android/gms/internal/ads/zzjq;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzjq;->e(Lcom/google/android/gms/internal/ads/zzby;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->r:Lcom/google/android/gms/internal/ads/zzjq;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjq;->a()Lcom/google/android/gms/internal/ads/zzby;

    move-result-object p1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->e(Lcom/google/android/gms/internal/ads/zzby;)V

    return-void
.end method

.method public final f(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzkt;->b(J)V

    return-void
.end method

.method public final g()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->t:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkt;->c()V

    return-void
.end method

.method public final h()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->t:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->o:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkt;->d()V

    return-void
.end method

.method public final zza()J
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method
