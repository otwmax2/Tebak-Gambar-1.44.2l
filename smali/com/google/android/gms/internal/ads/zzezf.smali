###### Class com.google.android.gms.internal.ads.zzezf (com.google.android.gms.internal.ads.zzezf)
.class final Lcom/google/android/gms/internal/ads/zzezf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzcei;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzfff;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzeaf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzeaf;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezf;->a:Lcom/google/android/gms/internal/ads/zzcei;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezf;->b:Lcom/google/android/gms/internal/ads/zzfff;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzezf;->c:Lcom/google/android/gms/internal/ads/zzeaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 10

    .line 1
    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzezf;->a:Lcom/google/android/gms/internal/ads/zzcei;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->u()Lcom/google/android/gms/internal/ads/zzeyc;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzeyc;->j0:Z

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzezf;->b:Lcom/google/android/gms/internal/ads/zzfff;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/internal/ads/zzfff;->c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfen;)V

    return-void

    :cond_14
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeah;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezf;->a:Lcom/google/android/gms/internal/ads/zzcei;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcei;->g0()Lcom/google/android/gms/internal/ads/zzeyf;

    move-result-object v0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzezf;->a:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzbyj;->x(Landroid/content/Context;)Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-nez v0, :cond_54

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->Q5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezf;->a:Lcom/google/android/gms/internal/ads/zzcei;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcei;->u()Lcom/google/android/gms/internal/ads/zzeyc;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->T:Z

    if-eqz v0, :cond_55

    :cond_54
    const/4 v5, 0x2

    :cond_55
    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeah;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezf;->c:Lcom/google/android/gms/internal/ads/zzeaf;

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeaf;->e(Lcom/google/android/gms/internal/ads/zzeah;)V

    return-void
.end method
