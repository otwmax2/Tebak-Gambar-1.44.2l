###### Class com.google.android.gms.internal.ads.zzebh (com.google.android.gms.internal.ads.zzebh)
.class final Lcom/google/android/gms/internal/ads/zzebh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdee;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbzg;

.field private final b:Lcom/google/android/gms/internal/ads/zzfut;

.field private final c:Lcom/google/android/gms/internal/ads/zzeyc;

.field private final d:Lcom/google/android/gms/internal/ads/zzcei;

.field private final e:Lcom/google/android/gms/internal/ads/zzeyx;

.field private final f:Lcom/google/android/gms/internal/ads/zzbhr;

.field private final g:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzeyx;ZLcom/google/android/gms/internal/ads/zzbhr;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebh;->a:Lcom/google/android/gms/internal/ads/zzbzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebh;->b:Lcom/google/android/gms/internal/ads/zzfut;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzebh;->c:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzebh;->d:Lcom/google/android/gms/internal/ads/zzcei;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzebh;->e:Lcom/google/android/gms/internal/ads/zzeyx;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzebh;->g:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzebh;->f:Lcom/google/android/gms/internal/ads/zzbhr;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvb;)V
    .registers 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzebh;->b:Lcom/google/android/gms/internal/ads/zzfut;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfuj;->p(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcnv;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzebh;->d:Lcom/google/android/gms/internal/ads/zzcei;

    const/4 v3, 0x1

    .line 2
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzcei;->S0(Z)V

    .line 3
    new-instance v2, Lcom/google/android/gms/ads/internal/zzj;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzebh;->g:Z

    if-eqz v4, :cond_1e

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzebh;->f:Lcom/google/android/gms/internal/ads/zzbhr;

    .line 4
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhr;->e(Z)Z

    move-result v4

    move v5, v4

    goto :goto_1f

    :cond_1e
    const/4 v5, 0x1

    :goto_1f
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzebh;->g:Z

    if-eqz v4, :cond_2b

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzebh;->f:Lcom/google/android/gms/internal/ads/zzbhr;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbhr;->d()Z

    move-result v6

    move v7, v6

    goto :goto_2d

    :cond_2b
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2d
    if-eqz v4, :cond_37

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzebh;->f:Lcom/google/android/gms/internal/ads/zzbhr;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbhr;->a()F

    move-result v4

    move v8, v4

    goto :goto_39

    :cond_37
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_39
    const/4 v6, 0x1

    const/4 v9, -0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzebh;->c:Lcom/google/android/gms/internal/ads/zzeyc;

    .line 5
    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/zzeyc;->P:Z

    const/4 v12, 0x0

    move-object v4, v2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/ads/internal/zzj;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_4b

    .line 6
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcvb;->c()V

    .line 7
    :cond_4b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->k()Lcom/google/android/gms/ads/internal/overlay/zzm;

    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcnv;->i()Lcom/google/android/gms/internal/ads/zzddt;

    move-result-object v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzebh;->d:Lcom/google/android/gms/internal/ads/zzcei;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzebh;->c:Lcom/google/android/gms/internal/ads/zzeyc;

    .line 9
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzeyc;->R:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5f

    :goto_5d
    move v9, v1

    goto :goto_7c

    .line 10
    :cond_5f
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzebh;->e:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyx;->j:Lcom/google/android/gms/ads/internal/client/zzw;

    if-eqz v1, :cond_72

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/zzw;->o:I

    if-ne v1, v3, :cond_6c

    const/4 v1, 0x7

    const/4 v9, 0x7

    goto :goto_7c

    :cond_6c
    const/4 v4, 0x2

    if-ne v1, v4, :cond_72

    const/4 v1, 0x6

    const/4 v9, 0x6

    goto :goto_7c

    :cond_72
    const-string v1, "Error setting app open orientation; no targeting orientation available."

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzebh;->c:Lcom/google/android/gms/internal/ads/zzeyc;

    .line 12
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzeyc;->R:I

    goto :goto_5d

    :goto_7c
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 13
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzebh;->a:Lcom/google/android/gms/internal/ads/zzbzg;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzebh;->c:Lcom/google/android/gms/internal/ads/zzeyc;

    .line 14
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzeyc;->C:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyc;->t:Lcom/google/android/gms/internal/ads/zzeyh;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzeyh;->b:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzeyh;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzebh;->e:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyx;->f:Ljava/lang/String;

    move-object v4, v15

    move-object v12, v2

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v16, p3

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/internal/ads/zzcei;ILcom/google/android/gms/internal/ads/zzbzg;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcvb;)V

    move-object/from16 v1, p2

    .line 15
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzm;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
