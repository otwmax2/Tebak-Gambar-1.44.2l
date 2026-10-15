###### Class com.google.android.gms.internal.ads.zzecw (com.google.android.gms.internal.ads.zzecw)
.class final Lcom/google/android/gms/internal/ads/zzecw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdee;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzbzg;

.field private final c:Lcom/google/android/gms/internal/ads/zzfut;

.field private final d:Lcom/google/android/gms/internal/ads/zzeyc;

.field private final e:Lcom/google/android/gms/internal/ads/zzcei;

.field private final f:Lcom/google/android/gms/internal/ads/zzeyx;

.field private final g:Lcom/google/android/gms/internal/ads/zzbhr;

.field private final h:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzeyx;ZLcom/google/android/gms/internal/ads/zzbhr;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecw;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzecw;->b:Lcom/google/android/gms/internal/ads/zzbzg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzecw;->c:Lcom/google/android/gms/internal/ads/zzfut;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzecw;->d:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzecw;->e:Lcom/google/android/gms/internal/ads/zzcei;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzecw;->f:Lcom/google/android/gms/internal/ads/zzeyx;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzecw;->g:Lcom/google/android/gms/internal/ads/zzbhr;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzecw;->h:Z

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvb;)V
    .registers 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzecw;->c:Lcom/google/android/gms/internal/ads/zzfut;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfuj;->p(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdcw;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzecw;->e:Lcom/google/android/gms/internal/ads/zzcei;

    const/4 v3, 0x1

    .line 2
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzcei;->S0(Z)V

    .line 3
    new-instance v2, Lcom/google/android/gms/ads/internal/zzj;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzecw;->h:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1f

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzecw;->g:Lcom/google/android/gms/internal/ads/zzbhr;

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzbhr;->e(Z)Z

    move-result v4

    move v6, v4

    goto :goto_20

    :cond_1f
    const/4 v6, 0x0

    .line 5
    :goto_20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzecw;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->e(Landroid/content/Context;)Z

    move-result v7

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzecw;->h:Z

    if-eqz v4, :cond_35

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzecw;->g:Lcom/google/android/gms/internal/ads/zzbhr;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbhr;->d()Z

    move-result v5

    move v8, v5

    goto :goto_36

    :cond_35
    const/4 v8, 0x0

    :goto_36
    if-eqz v4, :cond_40

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzecw;->g:Lcom/google/android/gms/internal/ads/zzbhr;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbhr;->a()F

    move-result v4

    move v9, v4

    goto :goto_42

    :cond_40
    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_42
    const/4 v10, -0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzecw;->d:Lcom/google/android/gms/internal/ads/zzeyc;

    .line 6
    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/zzeyc;->P:Z

    const/4 v12, 0x0

    move-object v4, v2

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/ads/internal/zzj;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_58

    .line 7
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcvb;->c()V

    .line 8
    :cond_58
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->k()Lcom/google/android/gms/ads/internal/overlay/zzm;

    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v5, 0x0

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdcw;->j()Lcom/google/android/gms/internal/ads/zzddt;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzecw;->e:Lcom/google/android/gms/internal/ads/zzcei;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzecw;->d:Lcom/google/android/gms/internal/ads/zzeyc;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzeyc;->R:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzecw;->b:Lcom/google/android/gms/internal/ads/zzbzg;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzeyc;->C:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyc;->t:Lcom/google/android/gms/internal/ads/zzeyh;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzeyh;->b:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzeyh;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzecw;->f:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyx;->f:Ljava/lang/String;

    move-object v4, v15

    move-object v12, v2

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v16, p3

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/internal/ads/zzcei;ILcom/google/android/gms/internal/ads/zzbzg;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcvb;)V

    move-object/from16 v1, p2

    .line 10
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzm;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
