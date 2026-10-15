###### Class com.google.android.gms.internal.ads.zzpl (com.google.android.gms.internal.ads.zzpl)
.class public final Lcom/google/android/gms/internal/ads/zzpl;
.super Lcom/google/android/gms/internal/ads/zzra;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjq;


# instance fields
.field private final P0:Landroid/content/Context;

.field private final Q0:Lcom/google/android/gms/internal/ads/zzob;

.field private final R0:Lcom/google/android/gms/internal/ads/zzoi;

.field private S0:I

.field private T0:Z

.field private U0:Lcom/google/android/gms/internal/ads/zzaf;

.field private V0:J

.field private W0:Z

.field private X0:Z

.field private Y0:Z

.field private Z0:Lcom/google/android/gms/internal/ads/zzkm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzrc;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzoc;Lcom/google/android/gms/internal/ads/zzoi;)V
    .registers 14

    const/4 v1, 0x1

    const/4 v4, 0x0

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzra;-><init>(ILcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzrc;ZF)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->P0:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzob;

    invoke-direct {p1, p5, p6}, Lcom/google/android/gms/internal/ads/zzob;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzoc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->Q0:Lcom/google/android/gms/internal/ads/zzob;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(Lcom/google/android/gms/internal/ads/zzpl;Lcom/google/android/gms/internal/ads/zzpj;)V

    .line 3
    invoke-interface {p7, p1}, Lcom/google/android/gms/internal/ads/zzoi;->W0(Lcom/google/android/gms/internal/ads/zzof;)V

    return-void
.end method

.method private final J0()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->Y()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzoi;->M0(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpl;->X0:Z

    if-eqz v2, :cond_15

    goto :goto_1b

    :cond_15
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpl;->V0:J

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 3
    :goto_1b
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->V0:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->X0:Z

    :cond_20
    return-void
.end method

.method static bridge synthetic K0(Lcom/google/android/gms/internal/ads/zzpl;)Lcom/google/android/gms/internal/ads/zzkm;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzpl;->Z0:Lcom/google/android/gms/internal/ads/zzkm;

    return-object p0
.end method

.method static bridge synthetic L0(Lcom/google/android/gms/internal/ads/zzpl;)Lcom/google/android/gms/internal/ads/zzob;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzpl;->Q0:Lcom/google/android/gms/internal/ads/zzob;

    return-object p0
.end method

.method private final M0(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;)I
    .registers 4

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 2
    sget p1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1e

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->P0:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzew;->y(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1e

    :cond_1c
    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1e
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzaf;->m:I

    return p1
.end method

.method private static N0(Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;ZLcom/google/android/gms/internal/ads/zzoi;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzrj;
        }
    .end annotation

    .line 1
    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    if-nez p0, :cond_9

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p0

    return-object p0

    .line 3
    :cond_9
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzoi;->Q0(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzrp;->d()Lcom/google/android/gms/internal/ads/zzqx;

    move-result-object p2

    if-nez p2, :cond_16

    goto :goto_1b

    .line 5
    :cond_16
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfqk;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p0

    return-object p0

    :cond_1b
    :goto_1b
    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p2, p2}, Lcom/google/android/gms/internal/ads/zzrp;->f(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrp;->e(Lcom/google/android/gms/internal/ads/zzaf;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2b

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfqk;->s(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2b
    invoke-static {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzrp;->f(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->o()Lcom/google/android/gms/internal/ads/zzfqh;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzfqh;->i(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfqh;

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfqh;->i(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfqh;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfqh;->j()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final D()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->Y0:Z

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoi;->b()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    .line 2
    :try_start_8
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzra;->D()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->Q0:Lcom/google/android/gms/internal/ads/zzob;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzob;->e(Lcom/google/android/gms/internal/ads/zzhb;)V

    return-void

    :catchall_13
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpl;->Q0:Lcom/google/android/gms/internal/ads/zzob;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzob;->e(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 6
    throw v0

    :catchall_1c
    move-exception v0

    .line 7
    :try_start_1d
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzra;->D()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_28

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpl;->Q0:Lcom/google/android/gms/internal/ads/zzob;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzob;->e(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 10
    throw v0

    :catchall_28
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpl;->Q0:Lcom/google/android/gms/internal/ads/zzob;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzob;->e(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 12
    throw v0
.end method

.method protected final E(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzra;->E(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->Q0:Lcom/google/android/gms/internal/ads/zzob;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzob;->f(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->A()Lcom/google/android/gms/internal/ads/zzkp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->C()Lcom/google/android/gms/internal/ads/zzno;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzoi;->T0(Lcom/google/android/gms/internal/ads/zzno;)V

    return-void
.end method

.method protected final F(JZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzra;->F(JZ)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzoi;->b()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->V0:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->W0:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->X0:Z

    return-void
.end method

.method protected final G()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzra;->G()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpl;->Y0:Z

    if-eqz v1, :cond_f

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->Y0:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoi;->h()V

    :cond_f
    return-void

    :catchall_10
    move-exception v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpl;->Y0:Z

    if-nez v2, :cond_16

    goto :goto_1d

    .line 3
    :cond_16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->Y0:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoi;->h()V

    .line 5
    :goto_1d
    throw v1
.end method

.method protected final I()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoi;->f()V

    return-void
.end method

.method public final J()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoi;->v()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzra;->J()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method protected final K()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpl;->J0()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoi;->e()V

    return-void
.end method

.method protected final N(FLcom/google/android/gms/internal/ads/zzaf;[Lcom/google/android/gms/internal/ads/zzaf;)F
    .registers 7

    const/4 p2, -0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    :goto_3
    array-length v2, p3

    if-ge v0, v2, :cond_13

    aget-object v2, p3, v0

    .line 2
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    if-eq v2, p2, :cond_10

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_13
    if-ne v1, p2, :cond_18

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_18
    int-to-float p2, v1

    mul-float p2, p2, p1

    return p2
.end method

.method protected final O(Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzrj;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbt;->g(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x80

    if-nez v0, :cond_b

    return v1

    .line 2
    :cond_b
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v0, v2, :cond_15

    const/16 v0, 0x20

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 3
    :goto_16
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzaf;->E:I

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzra;->G0(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 5
    invoke-interface {v5, p2}, Lcom/google/android/gms/internal/ads/zzoi;->Q0(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v5

    if-eqz v5, :cond_32

    if-eqz v2, :cond_2f

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzrp;->d()Lcom/google/android/gms/internal/ads/zzqx;

    move-result-object v2

    if-nez v2, :cond_2f

    goto :goto_32

    :cond_2f
    or-int/lit16 p1, v0, 0x8c

    return p1

    .line 7
    :cond_32
    :goto_32
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v5, "audio/raw"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x81

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzoi;->Q0(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_48

    :cond_47
    return v5

    :cond_48
    :goto_48
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    const/4 v6, 0x2

    .line 8
    iget v7, p2, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    iget v8, p2, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    .line 9
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzew;->f(III)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v6

    .line 10
    invoke-interface {v2, v6}, Lcom/google/android/gms/internal/ads/zzoi;->Q0(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v2

    if-nez v2, :cond_5a

    return v5

    :cond_5a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 11
    invoke-static {p1, p2, v3, v2}, Lcom/google/android/gms/internal/ads/zzpl;->N0(Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;ZLcom/google/android/gms/internal/ads/zzoi;)Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_67

    return v5

    :cond_67
    if-nez v4, :cond_6c

    const/16 p1, 0x82

    return p1

    .line 13
    :cond_6c
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzqx;

    .line 14
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzqx;->e(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_93

    const/4 v6, 0x1

    .line 15
    :goto_7a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_93

    .line 16
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzqx;

    .line 17
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/zzqx;->e(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v8

    if-eqz v8, :cond_90

    move-object v2, v7

    const/4 p1, 0x0

    const/4 v4, 0x1

    goto :goto_94

    :cond_90
    add-int/lit8 v6, v6, 0x1

    goto :goto_7a

    :cond_93
    const/4 p1, 0x1

    :goto_94
    if-eq v5, v4, :cond_98

    const/4 v6, 0x3

    goto :goto_99

    :cond_98
    const/4 v6, 0x4

    :goto_99
    const/16 v7, 0x8

    if-eqz v4, :cond_a5

    .line 18
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzqx;->f(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result p2

    if-eqz p2, :cond_a5

    const/16 v7, 0x10

    .line 19
    :cond_a5
    iget-boolean p2, v2, Lcom/google/android/gms/internal/ads/zzqx;->g:Z

    if-eq v5, p2, :cond_ab

    const/4 p2, 0x0

    goto :goto_ad

    :cond_ab
    const/16 p2, 0x40

    :goto_ad
    if-eq v5, p1, :cond_b0

    const/4 v1, 0x0

    :cond_b0
    or-int p1, v6, v7

    or-int/2addr p1, v0

    or-int/2addr p1, p2

    or-int/2addr p1, v1

    return p1
.end method

.method protected final P(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;)Lcom/google/android/gms/internal/ads/zzhc;
    .registers 13

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzqx;->b(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;)Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhc;->e:I

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzpl;->M0(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpl;->S0:I

    if-le v2, v3, :cond_10

    or-int/lit8 v1, v1, 0x40

    :cond_10
    new-instance v8, Lcom/google/android/gms/internal/ads/zzhc;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v1, :cond_1a

    move v7, v1

    const/4 v6, 0x0

    goto :goto_1e

    .line 4
    :cond_1a
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzhc;->d:I

    move v6, v0

    const/4 v7, 0x0

    :goto_1e
    move-object v2, v8

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;II)V

    return-object v8
.end method

.method protected final Q(Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzhc;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzra;->Q(Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpl;->Q0:Lcom/google/android/gms/internal/ads/zzob;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzjo;->a:Lcom/google/android/gms/internal/ads/zzaf;

    .line 2
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzob;->g(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzhc;)V

    return-object v0
.end method

.method protected final T(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzqs;
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->u()[Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p3

    array-length v0, p3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzpl;->M0(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_e

    goto :goto_26

    :cond_e
    const/4 v4, 0x0

    :goto_f
    if-ge v4, v0, :cond_26

    .line 3
    aget-object v5, p3, v4

    .line 4
    invoke-virtual {p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzqx;->b(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;)Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object v6

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzhc;->d:I

    if-eqz v6, :cond_23

    .line 5
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzpl;->M0(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 6
    :cond_26
    :goto_26
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpl;->S0:I

    .line 7
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    .line 8
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_5e

    const-string v4, "OMX.SEC.aac.dec"

    .line 9
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5e

    sget-object p3, Lcom/google/android/gms/internal/ads/zzew;->c:Ljava/lang/String;

    const-string v4, "samsung"

    .line 10
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5e

    sget-object p3, Lcom/google/android/gms/internal/ads/zzew;->b:Ljava/lang/String;

    const-string v4, "zeroflte"

    .line 11
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5c

    const-string v4, "herolte"

    .line 12
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5c

    const-string v4, "heroqlte"

    .line 13
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5e

    :cond_5c
    const/4 p3, 0x1

    goto :goto_5f

    :cond_5e
    const/4 p3, 0x0

    :goto_5f
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzpl;->T0:Z

    .line 14
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzqx;->c:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpl;->S0:I

    .line 15
    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5}, Landroid/media/MediaFormat;-><init>()V

    const-string v6, "mime"

    .line 16
    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    const-string v6, "channel-count"

    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 18
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    const-string v6, "sample-rate"

    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 19
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzaf;->n:Ljava/util/List;

    invoke-static {v5, p3}, Lcom/google/android/gms/internal/ads/zzeg;->b(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p3, "max-input-size"

    .line 20
    invoke-static {v5, p3, v4}, Lcom/google/android/gms/internal/ads/zzeg;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/16 p3, 0x17

    if-lt v0, p3, :cond_af

    const-string v4, "priority"

    .line 21
    invoke-virtual {v5, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_af

    if-ne v0, p3, :cond_aa

    sget-object p3, Lcom/google/android/gms/internal/ads/zzew;->d:Ljava/lang/String;

    const-string v2, "ZTE B2017G"

    .line 22
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    const-string v2, "AXON 7 mini"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_af

    :cond_aa
    const-string p3, "operating-rate"

    .line 23
    invoke-virtual {v5, p3, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_af
    const/16 p3, 0x1c

    if-gt v0, p3, :cond_c2

    .line 24
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string p4, "audio/ac4"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c2

    const-string p3, "ac4-is-sync"

    .line 25
    invoke-virtual {v5, p3, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_c2
    if-lt v0, v1, :cond_db

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 26
    iget p4, p2, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    const/4 v2, 0x4

    .line 27
    invoke-static {v2, p4, v1}, Lcom/google/android/gms/internal/ads/zzew;->f(III)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p4

    .line 28
    invoke-interface {p3, p4}, Lcom/google/android/gms/internal/ads/zzoi;->N0(Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_db

    const-string p3, "pcm-encoding"

    .line 29
    invoke-virtual {v5, p3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_db
    const/16 p3, 0x20

    if-lt v0, p3, :cond_e6

    const/16 p3, 0x63

    const-string p4, "max-output-channel-count"

    .line 30
    invoke-virtual {v5, p4, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 31
    :cond_e6
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzqx;->b:Ljava/lang/String;

    const-string p4, "audio/raw"

    .line 32
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_fb

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    .line 33
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_fb

    move-object p3, p2

    goto :goto_fc

    :cond_fb
    move-object p3, v0

    :goto_fc
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpl;->U0:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-static {p1, v5, p2, v0}, Lcom/google/android/gms/internal/ads/zzqs;->a(Lcom/google/android/gms/internal/ads/zzqx;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zzqs;

    move-result-object p1

    return-object p1
.end method

.method protected final U(Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzrj;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzpl;->N0(Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;ZLcom/google/android/gms/internal/ads/zzoi;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzrp;->g(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzaf;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final W(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzee;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->Q0:Lcom/google/android/gms/internal/ads/zzob;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzob;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final X(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzqs;JJ)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->Q0:Lcom/google/android/gms/internal/ads/zzob;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzob;->c(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final Y()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzra;->Y()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoi;->t()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method protected final Z(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->Q0:Lcom/google/android/gms/internal/ads/zzob;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzob;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final a()Lcom/google/android/gms/internal/ads/zzby;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoi;->a()Lcom/google/android/gms/internal/ads/zzby;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzby;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzoi;->Z0(Lcom/google/android/gms/internal/ads/zzby;)V

    return-void
.end method

.method public final g()Lcom/google/android/gms/internal/ads/zzjq;
    .registers 1

    return-object p0
.end method

.method protected final k0(Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaFormat;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->U0:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move-object p1, v0

    goto/16 :goto_88

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->t0()Lcom/google/android/gms/internal/ads/zzqu;

    move-result-object v0

    if-nez v0, :cond_11

    goto/16 :goto_88

    .line 2
    :cond_11
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->A:I

    goto :goto_43

    .line 4
    :cond_1e
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_31

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 5
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_43

    :cond_31
    const-string v0, "v-bits-per-sample"

    .line 6
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 7
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->Y(I)I

    move-result v0

    goto :goto_43

    :cond_42
    const/4 v0, 0x2

    .line 8
    :goto_43
    new-instance v4, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 9
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 10
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzad;->n(I)Lcom/google/android/gms/internal/ads/zzad;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->B:I

    .line 11
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzad;->c(I)Lcom/google/android/gms/internal/ads/zzad;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->C:I

    .line 12
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzad;->d(I)Lcom/google/android/gms/internal/ads/zzad;

    const-string v0, "channel-count"

    .line 13
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    const-string v0, "sample-rate"

    .line 14
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->T0:Z

    if-eqz v0, :cond_87

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_87

    .line 16
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    if-ge v0, v3, :cond_87

    .line 17
    new-array v2, v0, [I

    const/4 v0, 0x0

    .line 18
    :goto_7e
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    if-ge v0, v3, :cond_87

    .line 19
    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    :cond_87
    move-object p1, p2

    .line 20
    :goto_88
    :try_start_88
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-interface {p2, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzoi;->P0(Lcom/google/android/gms/internal/ads/zzaf;I[I)V
    :try_end_8d
    .catch Lcom/google/android/gms/internal/ads/zzod; {:try_start_88 .. :try_end_8d} :catch_8e

    return-void

    :catch_8e
    move-exception p1

    .line 21
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzod;->o:Lcom/google/android/gms/internal/ads/zzaf;

    const/16 v0, 0x1389

    .line 22
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzha;->x(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object p1

    .line 23
    goto :goto_99

    :goto_98
    throw p1

    :goto_99
    goto :goto_98
.end method

.method protected final l0()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->X0:Z

    return-void
.end method

.method protected final m0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoi;->c()V

    return-void
.end method

.method public final n(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_46

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3e

    const/4 v0, 0x6

    if-eq p1, v0, :cond_36

    packed-switch p1, :pswitch_data_52

    goto :goto_18

    .line 1
    :pswitch_d
    sget p1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_18

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzpi;->a(Lcom/google/android/gms/internal/ads/zzoi;Ljava/lang/Object;)V

    :cond_18
    :goto_18
    return-void

    .line 3
    :pswitch_19
    check-cast p2, Lcom/google/android/gms/internal/ads/zzkm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpl;->Z0:Lcom/google/android/gms/internal/ads/zzkm;

    return-void

    :pswitch_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzoi;->R0(I)V

    return-void

    :pswitch_2a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzoi;->U0(Z)V

    return-void

    .line 6
    :cond_36
    check-cast p2, Lcom/google/android/gms/internal/ads/zzl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzoi;->Y0(Lcom/google/android/gms/internal/ads/zzl;)V

    return-void

    .line 8
    :cond_3e
    check-cast p2, Lcom/google/android/gms/internal/ads/zzk;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 9
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzoi;->S0(Lcom/google/android/gms/internal/ads/zzk;)V

    return-void

    .line 10
    :cond_46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 11
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzoi;->V0(F)V

    return-void

    :pswitch_data_52
    .packed-switch 0x9
        :pswitch_2a
        :pswitch_1e
        :pswitch_19
        :pswitch_d
    .end packed-switch
.end method

.method protected final n0(Lcom/google/android/gms/internal/ads/zzgr;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->W0:Z

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgl;->f()Z

    move-result v0

    if-nez v0, :cond_21

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzgr;->e:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpl;->V0:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_1e

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzgr;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->V0:J

    :cond_1e
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->W0:Z

    :cond_21
    return-void
.end method

.method protected final o0()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoi;->g()V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzoh; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzoh;->q:Lcom/google/android/gms/internal/ads/zzaf;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzoh;->p:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzha;->x(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object v0

    throw v0
.end method

.method protected final p0(JJLcom/google/android/gms/internal/ads/zzqu;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->U0:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_14

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_14

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzqu;->n(IZ)V

    return p2

    :cond_14
    if-eqz p12, :cond_28

    if-eqz p5, :cond_1b

    .line 4
    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzqu;->n(IZ)V

    :cond_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 5
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzhb;->f:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzhb;->f:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzoi;->c()V

    return p2

    :cond_28
    :try_start_28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    .line 7
    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/android/gms/internal/ads/zzoi;->O0(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_2e
    .catch Lcom/google/android/gms/internal/ads/zzoe; {:try_start_28 .. :try_end_2e} :catch_48
    .catch Lcom/google/android/gms/internal/ads/zzoh; {:try_start_28 .. :try_end_2e} :catch_3e

    if-eqz p1, :cond_3d

    if-eqz p5, :cond_35

    .line 8
    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzqu;->n(IZ)V

    :cond_35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 9
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzhb;->e:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzhb;->e:I

    return p2

    :cond_3d
    return p3

    :catch_3e
    move-exception p1

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzoh;->p:Z

    const/16 p3, 0x138a

    .line 10
    invoke-virtual {p0, p1, p14, p2, p3}, Lcom/google/android/gms/internal/ads/zzha;->x(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object p1

    throw p1

    :catch_48
    move-exception p1

    .line 11
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzoe;->q:Lcom/google/android/gms/internal/ads/zzaf;

    iget-boolean p3, p1, Lcom/google/android/gms/internal/ads/zzoe;->p:Z

    const/16 p4, 0x1389

    .line 12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzha;->x(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object p1

    throw p1
.end method

.method protected final q0(Lcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->R0:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzoi;->Q0(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result p1

    return p1
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public final zza()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->f()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpl;->J0()V

    :cond_a
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->V0:J

    return-wide v0
.end method
