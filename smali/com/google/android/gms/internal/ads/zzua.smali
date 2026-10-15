###### Class com.google.android.gms.internal.ads.zzua (com.google.android.gms.internal.ads.zzua)
.class public final Lcom/google/android/gms/internal/ads/zzua;
.super Lcom/google/android/gms/internal/ads/zzrt;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztr;


# instance fields
.field private final h:Lcom/google/android/gms/internal/ads/zzbg;

.field private final i:Lcom/google/android/gms/internal/ads/zzay;

.field private final j:Lcom/google/android/gms/internal/ads/zzff;

.field private final k:Lcom/google/android/gms/internal/ads/zzpz;

.field private final l:I

.field private m:Z

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Lcom/google/android/gms/internal/ads/zzgi;

.field private final r:Lcom/google/android/gms/internal/ads/zztx;

.field private final s:Lcom/google/android/gms/internal/ads/zzwx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbg;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zztx;Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zzwx;ILcom/google/android/gms/internal/ads/zztz;[B)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrt;-><init>()V

    iget-object p7, p1, Lcom/google/android/gms/internal/ads/zzbg;->b:Lcom/google/android/gms/internal/ads/zzay;

    .line 2
    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzua;->i:Lcom/google/android/gms/internal/ads/zzay;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzua;->h:Lcom/google/android/gms/internal/ads/zzbg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzua;->j:Lcom/google/android/gms/internal/ads/zzff;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzua;->r:Lcom/google/android/gms/internal/ads/zztx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzua;->k:Lcom/google/android/gms/internal/ads/zzpz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzua;->s:Lcom/google/android/gms/internal/ads/zzwx;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzua;->l:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzua;->m:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzua;->n:J

    return-void
.end method

.method private final x()V
    .registers 26

    move-object/from16 v0, p0

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/zzun;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzua;->n:J

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzua;->o:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzua;->p:Z

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzua;->h:Lcom/google/android/gms/internal/ads/zzbg;

    if-eqz v1, :cond_11

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzbg;->d:Lcom/google/android/gms/internal/ads/zzaw;

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    move-object/from16 v21, v1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v2, v6

    move-wide v4, v6

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v20, v14

    move-wide v14, v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v1, v10

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v16, v11

    move-wide/from16 v10, v22

    .line 2
    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/internal/ads/zzun;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzbg;Lcom/google/android/gms/internal/ads/zzaw;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzua;->m:Z

    if-eqz v1, :cond_40

    new-instance v10, Lcom/google/android/gms/internal/ads/zztw;

    move-object/from16 v1, v24

    .line 3
    invoke-direct {v10, v0, v1}, Lcom/google/android/gms/internal/ads/zztw;-><init>(Lcom/google/android/gms/internal/ads/zzua;Lcom/google/android/gms/internal/ads/zzcn;)V

    goto :goto_43

    :cond_40
    move-object/from16 v1, v24

    move-object v10, v1

    .line 4
    :goto_43
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzrt;->t(Lcom/google/android/gms/internal/ads/zzcn;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 1

    return-void
.end method

.method public final T()Lcom/google/android/gms/internal/ads/zzbg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua;->h:Lcom/google/android/gms/internal/ads/zzbg;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzsq;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zztv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zztv;->z()V

    return-void
.end method

.method public final b(JZZ)V
    .registers 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    .line 1
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzua;->n:J

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzua;->m:Z

    if-nez v0, :cond_1e

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzua;->n:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1e

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzua;->o:Z

    if-ne v0, p3, :cond_1e

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzua;->p:Z

    if-ne v0, p4, :cond_1e

    return-void

    :cond_1e
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzua;->n:J

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzua;->o:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzua;->p:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzua;->m:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzua;->x()V

    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzwt;J)Lcom/google/android/gms/internal/ads/zzsq;
    .registers 20

    move-object v13, p0

    .line 1
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzua;->j:Lcom/google/android/gms/internal/ads/zzff;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzff;->zza()Lcom/google/android/gms/internal/ads/zzfg;

    move-result-object v2

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzua;->q:Lcom/google/android/gms/internal/ads/zzgi;

    if-eqz v0, :cond_e

    .line 2
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzfg;->f(Lcom/google/android/gms/internal/ads/zzgi;)V

    .line 3
    :cond_e
    new-instance v14, Lcom/google/android/gms/internal/ads/zztv;

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzua;->i:Lcom/google/android/gms/internal/ads/zzay;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzay;->a:Landroid/net/Uri;

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzua;->r:Lcom/google/android/gms/internal/ads/zztx;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrt;->l()Lcom/google/android/gms/internal/ads/zzno;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztx;->a:Lcom/google/android/gms/internal/ads/zzaab;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzrv;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzrv;-><init>(Lcom/google/android/gms/internal/ads/zzaab;)V

    iget-object v4, v13, Lcom/google/android/gms/internal/ads/zzua;->k:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzrt;->m(Lcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zzpt;

    move-result-object v5

    iget-object v6, v13, Lcom/google/android/gms/internal/ads/zzua;->s:Lcom/google/android/gms/internal/ads/zzwx;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzrt;->o(Lcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zztb;

    move-result-object v7

    const/4 v10, 0x0

    iget v11, v13, Lcom/google/android/gms/internal/ads/zzua;->l:I

    const/4 v12, 0x0

    move-object v0, v14

    move-object v8, p0

    move-object/from16 v9, p2

    .line 5
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zztv;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zzpt;Lcom/google/android/gms/internal/ads/zzwx;Lcom/google/android/gms/internal/ads/zztb;Lcom/google/android/gms/internal/ads/zztr;Lcom/google/android/gms/internal/ads/zzwt;Ljava/lang/String;I[B)V

    return-object v14
.end method

.method protected final s(Lcom/google/android/gms/internal/ads/zzgi;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzua;->q:Lcom/google/android/gms/internal/ads/zzgi;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrt;->l()Lcom/google/android/gms/internal/ads/zzno;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzua;->x()V

    return-void
.end method

.method protected final u()V
    .registers 1

    return-void
.end method
