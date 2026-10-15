###### Class com.google.android.gms.internal.ads.zzezg (com.google.android.gms.internal.ads.zzezg)
.class public final Lcom/google/android/gms/internal/ads/zzezg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzeyc;

.field private final b:Lcom/google/android/gms/internal/ads/zzeyf;

.field private final c:Lcom/google/android/gms/internal/ads/zzeaf;

.field private final d:Lcom/google/android/gms/internal/ads/zzfff;

.field private final e:Lcom/google/android/gms/internal/ads/zzfen;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeaf;Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyf;Lcom/google/android/gms/internal/ads/zzfen;)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzezg;->a:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzezg;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezg;->c:Lcom/google/android/gms/internal/ads/zzeaf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezg;->d:Lcom/google/android/gms/internal/ads/zzfff;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzezg;->e:Lcom/google/android/gms/internal/ads/zzfen;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .registers 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzezg;->b(Ljava/lang/String;I)V

    goto :goto_4

    :cond_15
    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezg;->a:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->j0:Z

    if-nez v0, :cond_e

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzezg;->d:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezg;->e:Lcom/google/android/gms/internal/ads/zzfen;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzfff;->c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfen;)V

    return-void

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeah;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezg;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    move-object v1, v0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzeah;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzezg;->c:Lcom/google/android/gms/internal/ads/zzeaf;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeaf;->e(Lcom/google/android/gms/internal/ads/zzeah;)V

    return-void
.end method

.method public final c(Ljava/util/List;I)V
    .registers 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzezg;->b(Ljava/lang/String;I)V

    goto :goto_4

    :cond_14
    return-void
.end method
