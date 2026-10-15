###### Class com.google.android.gms.internal.ads.zzeeg (com.google.android.gms.internal.ads.zzeeg)
.class final Lcom/google/android/gms/internal/ads/zzeeg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzeyc;

.field final synthetic d:Lcom/google/android/gms/internal/ads/zzeyf;

.field final synthetic e:Lcom/google/android/gms/internal/ads/zzffb;

.field final synthetic f:Lcom/google/android/gms/internal/ads/zzeyo;

.field final synthetic g:Lcom/google/android/gms/internal/ads/zzeeh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeeh;JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyf;Lcom/google/android/gms/internal/ads/zzffb;Lcom/google/android/gms/internal/ads/zzeyo;)V
    .registers 9

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeg;->g:Lcom/google/android/gms/internal/ads/zzeeh;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->a:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeeg;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeeg;->c:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeeg;->d:Lcom/google/android/gms/internal/ads/zzeyf;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeeg;->e:Lcom/google/android/gms/internal/ads/zzffb;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeeg;->f:Lcom/google/android/gms/internal/ads/zzeyo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->g:Lcom/google/android/gms/internal/ads/zzeeh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeeh;->d(Lcom/google/android/gms/internal/ads/zzeeh;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->a:J

    sub-long/2addr v0, v2

    .line 2
    instance-of v2, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v3, 0x6

    const/4 v11, 0x3

    const/4 v12, 0x0

    if-eqz v2, :cond_18

    const/4 v2, 0x2

    move-object v10, v12

    const/4 v3, 0x2

    goto :goto_64

    .line 3
    :cond_18
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzedw;

    if-eqz v2, :cond_1f

    move-object v10, v12

    const/4 v3, 0x3

    goto :goto_64

    .line 4
    :cond_1f
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_27

    const/4 v2, 0x4

    move-object v10, v12

    const/4 v3, 0x4

    goto :goto_64

    .line 5
    :cond_27
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzezc;

    if-eqz v2, :cond_2f

    const/4 v2, 0x5

    move-object v10, v12

    const/4 v3, 0x5

    goto :goto_64

    .line 6
    :cond_2f
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzdtf;

    if-eqz v2, :cond_63

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzezx;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v2

    .line 8
    iget v2, v2, Lcom/google/android/gms/ads/internal/client/zze;->o:I

    if-ne v2, v11, :cond_3c

    const/4 v3, 0x1

    .line 9
    :cond_3c
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->v1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_63

    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzeax;

    if-eqz v2, :cond_63

    .line 12
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeax;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeax;->b()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v2

    if-eqz v2, :cond_63

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/zze;->o:I

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v10, v2

    goto :goto_64

    :cond_63
    move-object v10, v12

    .line 14
    :goto_64
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeeg;->g:Lcom/google/android/gms/internal/ads/zzeeh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeeg;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->c:Lcom/google/android/gms/internal/ads/zzeyc;

    .line 15
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzeyc;->g0:Ljava/lang/String;

    move v6, v3

    move-wide v7, v0

    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzeeh;->g(Lcom/google/android/gms/internal/ads/zzeeh;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->g:Lcom/google/android/gms/internal/ads/zzeeh;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeeh;->h(Lcom/google/android/gms/internal/ads/zzeeh;)Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeeh;->b(Lcom/google/android/gms/internal/ads/zzeeh;)Lcom/google/android/gms/internal/ads/zzeei;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeeg;->d:Lcom/google/android/gms/internal/ads/zzeyf;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeeg;->c:Lcom/google/android/gms/internal/ads/zzeyc;

    .line 16
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzeax;

    if-eqz v2, :cond_8a

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeax;

    move-object v8, v2

    goto :goto_8b

    :cond_8a
    move-object v8, v12

    :goto_8b
    move v7, v3

    move-wide v9, v0

    .line 17
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzeei;->a(Lcom/google/android/gms/internal/ads/zzeyf;Lcom/google/android/gms/internal/ads/zzeyc;ILcom/google/android/gms/internal/ads/zzeax;J)V

    .line 18
    :cond_90
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->I7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->g:Lcom/google/android/gms/internal/ads/zzeeh;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeeh;->c(Lcom/google/android/gms/internal/ads/zzeeh;)Lcom/google/android/gms/internal/ads/zzfff;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeeg;->e:Lcom/google/android/gms/internal/ads/zzffb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeeg;->f:Lcom/google/android/gms/internal/ads/zzeyo;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeeg;->c:Lcom/google/android/gms/internal/ads/zzeyc;

    .line 21
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzeyc;->o:Ljava/util/List;

    .line 22
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzffb;->c(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfff;->d(Ljava/util/List;)V

    .line 24
    :cond_b7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzezx;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    .line 25
    iget v2, p1, Lcom/google/android/gms/ads/internal/client/zze;->o:I

    if-eq v2, v11, :cond_c1

    if-nez v2, :cond_dc

    :cond_c1
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/zze;->r:Lcom/google/android/gms/ads/internal/client/zze;

    if-eqz v2, :cond_dc

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/zze;->q:Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads"

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dc

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeax;

    const/16 v3, 0xd

    .line 27
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->r:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzeax;-><init>(ILcom/google/android/gms/ads/internal/client/zze;)V

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzezx;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    :cond_dc
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->g:Lcom/google/android/gms/internal/ads/zzeeh;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeeh;->a(Lcom/google/android/gms/internal/ads/zzeeh;)Lcom/google/android/gms/internal/ads/zzeay;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeeg;->c:Lcom/google/android/gms/internal/ads/zzeyc;

    .line 29
    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeay;->e(Lcom/google/android/gms/internal/ads/zzeyc;JLcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 13

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeg;->g:Lcom/google/android/gms/internal/ads/zzeeh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeeh;->d(Lcom/google/android/gms/internal/ads/zzeeh;)Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->a:J

    sub-long/2addr v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeeg;->g:Lcom/google/android/gms/internal/ads/zzeeh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeeg;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeg;->c:Lcom/google/android/gms/internal/ads/zzeyc;

    .line 2
    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzeyc;->g0:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-wide v7, v0

    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzeeh;->g(Lcom/google/android/gms/internal/ads/zzeeh;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeg;->g:Lcom/google/android/gms/internal/ads/zzeeh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeeh;->h(Lcom/google/android/gms/internal/ads/zzeeh;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeeh;->b(Lcom/google/android/gms/internal/ads/zzeeh;)Lcom/google/android/gms/internal/ads/zzeei;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeeg;->d:Lcom/google/android/gms/internal/ads/zzeyf;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeeg;->c:Lcom/google/android/gms/internal/ads/zzeyc;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v9, v0

    .line 3
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzeei;->a(Lcom/google/android/gms/internal/ads/zzeyf;Lcom/google/android/gms/internal/ads/zzeyc;ILcom/google/android/gms/internal/ads/zzeax;J)V

    :cond_31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeg;->g:Lcom/google/android/gms/internal/ads/zzeeh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeeh;->a(Lcom/google/android/gms/internal/ads/zzeeh;)Lcom/google/android/gms/internal/ads/zzeay;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->c:Lcom/google/android/gms/internal/ads/zzeyc;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzeay;->f(Lcom/google/android/gms/internal/ads/zzeyc;JLcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
