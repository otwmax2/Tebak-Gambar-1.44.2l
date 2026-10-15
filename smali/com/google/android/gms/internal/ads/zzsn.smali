###### Class com.google.android.gms.internal.ads.zzsn (com.google.android.gms.internal.ads.zzsn)
.class public final Lcom/google/android/gms/internal/ads/zzsn;
.super Lcom/google/android/gms/internal/ads/zzut;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final l:Z

.field private final m:Lcom/google/android/gms/internal/ads/zzcm;

.field private final n:Lcom/google/android/gms/internal/ads/zzck;

.field private o:Lcom/google/android/gms/internal/ads/zzsl;

.field private p:Lcom/google/android/gms/internal/ads/zzsk;

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsu;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzut;-><init>(Lcom/google/android/gms/internal/ads/zzsu;)V

    if-eqz p2, :cond_a

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzsu;->v()Z

    const/4 p2, 0x1

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    :goto_b
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->l:Z

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcm;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzcm;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->m:Lcom/google/android/gms/internal/ads/zzcm;

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzck;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzck;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->n:Lcom/google/android/gms/internal/ads/zzck;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzsu;->q0()Lcom/google/android/gms/internal/ads/zzcn;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzsu;->T()Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsl;->q(Lcom/google/android/gms/internal/ads/zzbg;)Lcom/google/android/gms/internal/ads/zzsl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    return-void
.end method

.method private final I(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsl;->s(Lcom/google/android/gms/internal/ads/zzsl;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsl;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsl;->s(Lcom/google/android/gms/internal/ads/zzsl;)Ljava/lang/Object;

    move-result-object p1

    :cond_16
    return-object p1
.end method

.method private final J(J)V
    .registers 9
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "unpreparedMaskingMediaPeriod"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->p:Lcom/google/android/gms/internal/ads/zzsk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsk;->o:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzsg;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    return-void

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsn;->n:Lcom/google/android/gms/internal/ads/zzck;

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    iget-wide v1, v3, Lcom/google/android/gms/internal/ads/zzck;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_30

    cmp-long v3, p1, v1

    if-ltz v3, :cond_30

    const-wide/16 p1, 0x0

    const-wide/16 v3, -0x1

    add-long/2addr v1, v3

    .line 3
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 4
    :cond_30
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsk;->q(J)V

    return-void
.end method


# virtual methods
.method protected final C(Lcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zzss;
    .registers 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzsl;->s(Lcom/google/android/gms/internal/ads/zzsl;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzsl;->s(Lcom/google/android/gms/internal/ads/zzsl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsl;->i:Ljava/lang/Object;

    .line 2
    :cond_18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzss;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object p1

    return-object p1
.end method

.method protected final D(Lcom/google/android/gms/internal/ads/zzcn;)V
    .registers 16

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzsl;->p(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzsl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->p:Lcom/google/android/gms/internal/ads/zzsk;

    if-eqz p1, :cond_9b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsk;->k()J

    move-result-wide v2

    .line 2
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzsn;->J(J)V

    goto/16 :goto_9b

    .line 3
    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcn;->o()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->s:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzsl;->p(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzsl;

    move-result-object p1

    goto :goto_33

    .line 5
    :cond_2b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcm;->o:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzsl;->i:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzsl;->r(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzsl;

    move-result-object p1

    .line 6
    :goto_33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    goto :goto_9b

    .line 7
    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->m:Lcom/google/android/gms/internal/ads/zzcm;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 8
    invoke-virtual {p1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->m:Lcom/google/android/gms/internal/ads/zzcm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcm;->a:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzsn;->p:Lcom/google/android/gms/internal/ads/zzsk;

    if-eqz v5, :cond_62

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzsk;->l()J

    move-result-wide v6

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzsk;->o:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzsn;->n:Lcom/google/android/gms/internal/ads/zzck;

    .line 9
    invoke-virtual {v8, v5, v9}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzsn;->m:Lcom/google/android/gms/internal/ads/zzcm;

    .line 10
    invoke-virtual {v5, v2, v8, v3, v4}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    cmp-long v2, v6, v3

    if-eqz v2, :cond_62

    move-wide v12, v6

    goto :goto_63

    :cond_62
    move-wide v12, v3

    :goto_63
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzsn;->m:Lcom/google/android/gms/internal/ads/zzcm;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzsn;->n:Lcom/google/android/gms/internal/ads/zzck;

    const/4 v11, 0x0

    move-object v8, p1

    .line 11
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzcn;->l(Lcom/google/android/gms/internal/ads/zzcm;Lcom/google/android/gms/internal/ads/zzck;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 12
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 13
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->s:Z

    if-eqz v2, :cond_82

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzsl;->p(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzsl;

    move-result-object p1

    goto :goto_86

    .line 15
    :cond_82
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzsl;->r(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzsl;

    move-result-object p1

    .line 16
    :goto_86
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->p:Lcom/google/android/gms/internal/ads/zzsk;

    if-eqz p1, :cond_9b

    .line 17
    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/ads/zzsn;->J(J)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsk;->o:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzsn;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzss;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object v1

    :cond_9b
    :goto_9b
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->s:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->r:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzrt;->t(Lcom/google/android/gms/internal/ads/zzcn;)V

    if-eqz v1, :cond_af

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->p:Lcom/google/android/gms/internal/ads/zzsk;

    .line 21
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzsk;->p(Lcom/google/android/gms/internal/ads/zzss;)V

    :cond_af
    return-void
.end method

.method public final E()V
    .registers 1

    return-void
.end method

.method public final F()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->l:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->q:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzut;->k:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzsb;->x(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzsu;)V

    :cond_d
    return-void
.end method

.method public final G()Lcom/google/android/gms/internal/ads/zzcn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->o:Lcom/google/android/gms/internal/ads/zzsl;

    return-object v0
.end method

.method public final H(Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzwt;J)Lcom/google/android/gms/internal/ads/zzsk;
    .registers 12

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzsk;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzsk;-><init>(Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzwt;J[B)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzut;->k:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/zzsk;->s(Lcom/google/android/gms/internal/ads/zzsu;)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->r:Z

    if-eqz p2, :cond_21

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzsn;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzss;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object p1

    .line 3
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/zzsk;->p(Lcom/google/android/gms/internal/ads/zzss;)V

    goto :goto_30

    :cond_21
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzsn;->p:Lcom/google/android/gms/internal/ads/zzsk;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->q:Z

    if-nez p1, :cond_30

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->q:Z

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzut;->k:Lcom/google/android/gms/internal/ads/zzsu;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsb;->x(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzsu;)V

    :cond_30
    :goto_30
    return-object v6
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzsq;)V
    .registers 3

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsk;->r()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->p:Lcom/google/android/gms/internal/ads/zzsk;

    if-ne p1, v0, :cond_d

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->p:Lcom/google/android/gms/internal/ads/zzsk;

    :cond_d
    return-void
.end method

.method public final bridge synthetic i(Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzwt;J)Lcom/google/android/gms/internal/ads/zzsq;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzsn;->H(Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzwt;J)Lcom/google/android/gms/internal/ads/zzsk;

    move-result-object p1

    return-object p1
.end method

.method public final u()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->r:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->q:Z

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzsb;->u()V

    return-void
.end method
