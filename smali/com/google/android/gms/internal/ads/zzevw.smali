###### Class com.google.android.gms.internal.ads.zzevw (com.google.android.gms.internal.ads.zzevw)
.class public final Lcom/google/android/gms/internal/ads/zzevw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final b:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final c:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevw;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzevw;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzevw;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzevt;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevw;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevw;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfaf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzevw;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfax;

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->T5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/util/zzg;->f()Lcom/google/android/gms/internal/ads/zzbyd;

    move-result-object v3

    goto :goto_43

    .line 6
    :cond_37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/util/zzg;->g()Lcom/google/android/gms/internal/ads/zzbyd;

    move-result-object v3

    :goto_43
    const/4 v4, 0x0

    if-eqz v3, :cond_4d

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbyd;->h()Z

    move-result v3

    if-eqz v3, :cond_4d

    const/4 v4, 0x1

    :cond_4d
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->V5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_a7

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->S5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_73

    if-eqz v4, :cond_a7

    :cond_73
    new-instance v3, Lcom/google/android/gms/internal/ads/zzeuu;

    .line 12
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzeuu;-><init>()V

    .line 13
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfan;->o:Lcom/google/android/gms/internal/ads/zzfan;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzeux;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/zzeux;-><init>(Lcom/google/android/gms/internal/ads/zzevt;)V

    .line 14
    invoke-virtual {v2, v4, v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzfax;->a(Lcom/google/android/gms/internal/ads/zzfan;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfaf;Lcom/google/android/gms/internal/ads/zzfbd;)Lcom/google/android/gms/internal/ads/zzfaw;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzeuz;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzevj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzevi;-><init>()V

    .line 15
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzevj;-><init>(Lcom/google/android/gms/internal/ads/zzevt;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzevf;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfaw;->a:Lcom/google/android/gms/internal/ads/zzfaj;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-direct {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zzevf;-><init>(Lcom/google/android/gms/internal/ads/zzfaj;Ljava/util/concurrent/Executor;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfaw;->b:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfaw;->a:Lcom/google/android/gms/internal/ads/zzfaj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfaj;->zza()Lcom/google/android/gms/internal/ads/zzfaq;

    move-result-object v0

    .line 16
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfaq;->v:Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzeuz;-><init>(Lcom/google/android/gms/internal/ads/zzevt;Lcom/google/android/gms/internal/ads/zzevt;Lcom/google/android/gms/internal/ads/zzfbf;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    goto :goto_ac

    :cond_a7
    new-instance v7, Lcom/google/android/gms/internal/ads/zzevi;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzevi;-><init>()V

    :goto_ac
    return-object v7
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzevw;->a()Lcom/google/android/gms/internal/ads/zzevt;

    move-result-object v0

    return-object v0
.end method
