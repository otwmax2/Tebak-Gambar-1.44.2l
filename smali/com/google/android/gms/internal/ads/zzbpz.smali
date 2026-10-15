###### Class com.google.android.gms.internal.ads.zzbpz (com.google.android.gms.internal.ads.zzbpz)
.class public final Lcom/google/android/gms/internal/ads/zzbpz;
.super Lcom/google/android/gms/internal/ads/zzbqf;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field static final u:Ljava/util/Set;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:Ljava/lang/Object;

.field private final l:Lcom/google/android/gms/internal/ads/zzcei;

.field private final m:Landroid/app/Activity;

.field private n:Lcom/google/android/gms/internal/ads/zzcfx;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/LinearLayout;

.field private final q:Lcom/google/android/gms/internal/ads/zzbqg;

.field private r:Landroid/widget/PopupWindow;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "top-left"

    const-string v1, "top-right"

    const-string v2, "top-center"

    const-string v3, "center"

    const-string v4, "bottom-left"

    const-string v5, "bottom-right"

    const-string v6, "bottom-center"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->g([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbpz;->u:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzbqg;)V
    .registers 5

    const-string v0, "resize"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbqf;-><init>(Lcom/google/android/gms/internal/ads/zzcei;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpz;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbpz;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbpz;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbpz;->f:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbpz;->h:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbpz;->i:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->j:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpz;->k:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->g()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpz;->q:Lcom/google/android/gms/internal/ads/zzbqg;

    return-void
.end method


# virtual methods
.method public final h(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpz;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->r:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->s:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    check-cast v2, Landroid/view/View;

    .line 2
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->t:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbpz;->o:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->t:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    check-cast v2, Landroid/view/View;

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbpz;->n:Lcom/google/android/gms/internal/ads/zzcfx;

    .line 5
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzcei;->C0(Lcom/google/android/gms/internal/ads/zzcfx;)V

    :cond_2c
    if-eqz p1, :cond_3a

    const-string p1, "default"

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbqf;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->q:Lcom/google/android/gms/internal/ads/zzbqg;

    if-eqz p1, :cond_3a

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbqg;->zzb()V

    :cond_3a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->r:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->s:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->t:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->p:Landroid/widget/LinearLayout;

    .line 8
    :cond_43
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw p1
.end method

.method public final i(Ljava/util/Map;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbpz;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    if-nez v3, :cond_12

    const-string v0, "Not an activity context. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    .line 2
    monitor-exit v2

    return-void

    :cond_12
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcei;->M()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v3

    if-nez v3, :cond_21

    const-string v0, "Webview is not yet available, size is not set."

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    .line 5
    monitor-exit v2

    return-void

    :cond_21
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcei;->M()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcfx;->i()Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    .line 8
    monitor-exit v2

    return-void

    :cond_34
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    .line 9
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcei;->B()Z

    move-result v3

    if-nez v3, :cond_476

    const-string v3, "width"

    .line 10
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->k(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->j:I

    :cond_5b
    const-string v3, "height"

    .line 12
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->k(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->g:I

    :cond_7a
    const-string v3, "offsetX"

    .line 14
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_99

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->k(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->h:I

    :cond_99
    const-string v3, "offsetY"

    .line 16
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b8

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->k(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->i:I

    :cond_b8
    const-string v3, "allowOffscreen"

    .line 18
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d4

    const-string v3, "allowOffscreen"

    .line 19
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->d:Z

    :cond_d4
    const-string v3, "customClosePosition"

    .line 20
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e4

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbpz;->c:Ljava/lang/String;

    :cond_e4
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbpz;->j:I

    if-ltz v0, :cond_46f

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbpz;->g:I

    if-ltz v0, :cond_46f

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_468

    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_fc

    goto/16 :goto_468

    .line 24
    :cond_fc
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->s(Landroid/app/Activity;)[I

    move-result-object v3

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->o(Landroid/app/Activity;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v6, v3, v5

    const/4 v7, 0x1

    aget v3, v3, v7

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->j:I

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v13, 0x2

    const/16 v14, 0x32

    if-lt v8, v14, :cond_24f

    if-le v8, v6, :cond_122

    goto/16 :goto_24f

    .line 26
    :cond_122
    iget v15, v1, Lcom/google/android/gms/internal/ads/zzbpz;->g:I

    if-lt v15, v14, :cond_249

    if-le v15, v3, :cond_12a

    goto/16 :goto_249

    :cond_12a
    if-ne v15, v3, :cond_135

    if-ne v8, v6, :cond_135

    const-string v3, "Cannot resize to a full-screen ad."

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    goto/16 :goto_254

    :cond_135
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->d:Z

    if-eqz v3, :cond_208

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->c:Ljava/lang/String;

    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v16
    :try_end_13f
    .catchall {:try_start_7 .. :try_end_13f} :catchall_47d

    sparse-switch v16, :sswitch_data_482

    goto :goto_17f

    :sswitch_143
    const-string v12, "top-center"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17f

    const/4 v3, 0x1

    goto :goto_180

    :sswitch_14d
    const-string v12, "bottom-center"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17f

    const/4 v3, 0x4

    goto :goto_180

    :sswitch_157
    const-string v12, "bottom-right"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17f

    const/4 v3, 0x5

    goto :goto_180

    :sswitch_161
    const-string v12, "bottom-left"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17f

    const/4 v3, 0x3

    goto :goto_180

    :sswitch_16b
    const-string v12, "top-left"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17f

    const/4 v3, 0x0

    goto :goto_180

    :sswitch_175
    const-string v12, "center"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17f

    const/4 v3, 0x2

    goto :goto_180

    :cond_17f
    :goto_17f
    const/4 v3, -0x1

    :goto_180
    if-eqz v3, :cond_1df

    if-eq v3, v7, :cond_1d1

    if-eq v3, v13, :cond_1bd

    if-eq v3, v11, :cond_1b0

    if-eq v3, v10, :cond_1a2

    if-eq v3, v9, :cond_197

    :try_start_18c
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->e:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbpz;->h:I

    add-int/2addr v3, v12

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x32

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->f:I

    goto :goto_1dc

    :cond_197
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->e:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbpz;->h:I

    add-int/2addr v3, v12

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x32

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->f:I

    goto :goto_1ad

    :cond_1a2
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->e:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbpz;->h:I

    add-int/2addr v3, v12

    shr-int/2addr v8, v7

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->f:I

    :goto_1ad
    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbpz;->i:I

    goto :goto_1b8

    :cond_1b0
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->e:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->h:I

    add-int/2addr v3, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->f:I

    goto :goto_1ad

    :goto_1b8
    add-int/2addr v8, v12

    add-int/2addr v8, v15

    add-int/lit8 v8, v8, -0x32

    goto :goto_1e8

    :cond_1bd
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->e:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbpz;->h:I

    add-int/2addr v3, v12

    shr-int/2addr v8, v7

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->f:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbpz;->i:I

    add-int/2addr v8, v12

    shr-int/lit8 v12, v15, 0x1

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, -0x19

    goto :goto_1e8

    :cond_1d1
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->e:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbpz;->h:I

    add-int/2addr v3, v12

    shr-int/2addr v8, v7

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->f:I

    :goto_1dc
    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbpz;->i:I

    goto :goto_1e7

    :cond_1df
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->e:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->h:I

    add-int/2addr v3, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->f:I

    goto :goto_1dc

    :goto_1e7
    add-int/2addr v8, v12

    :goto_1e8
    if-ltz v3, :cond_254

    add-int/2addr v3, v14

    if-gt v3, v6, :cond_254

    aget v3, v4, v5

    if-lt v8, v3, :cond_254

    add-int/2addr v8, v14

    aget v3, v4, v7

    if-le v8, v3, :cond_1f7

    goto :goto_254

    :cond_1f7
    new-array v15, v13, [I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->e:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbpz;->h:I

    add-int/2addr v3, v4

    aput v3, v15, v5

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->f:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbpz;->i:I

    add-int/2addr v3, v4

    aput v3, v15, v7

    goto :goto_255

    .line 29
    :cond_208
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->s(Landroid/app/Activity;)[I

    move-result-object v3

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->o(Landroid/app/Activity;)[I

    move-result-object v4

    aget v3, v3, v5

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->e:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->h:I

    add-int/2addr v6, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->f:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbpz;->i:I

    add-int/2addr v8, v12

    if-gez v6, :cond_22a

    const/4 v6, 0x0

    goto :goto_232

    :cond_22a
    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbpz;->j:I

    add-int v15, v6, v12

    if-le v15, v3, :cond_232

    sub-int v6, v3, v12

    :cond_232
    :goto_232
    aget v3, v4, v5

    if-ge v8, v3, :cond_238

    move v8, v3

    goto :goto_242

    :cond_238
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->g:I

    add-int v12, v8, v3

    aget v4, v4, v7

    if-le v12, v4, :cond_242

    sub-int v8, v4, v3

    :cond_242
    :goto_242
    new-array v15, v13, [I

    aput v6, v15, v5

    aput v8, v15, v7

    goto :goto_255

    :cond_249
    :goto_249
    const-string v3, "Height is too small or too large."

    .line 31
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    goto :goto_254

    :cond_24f
    :goto_24f
    const-string v3, "Width is too small or too large."

    .line 32
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    :cond_254
    :goto_254
    const/4 v15, 0x0

    :goto_255
    if-nez v15, :cond_25e

    const-string v0, "Resize location out of screen or close button is not visible."

    .line 33
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    .line 34
    monitor-exit v2

    return-void

    .line 35
    :cond_25e
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbpz;->j:I

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzbyt;->D(Landroid/content/Context;I)I

    move-result v3

    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->g:I

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzbyt;->D(Landroid/content/Context;I)I

    move-result v4

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    check-cast v6, Landroid/view/View;

    .line 37
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_461

    .line 38
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_461

    .line 39
    check-cast v6, Landroid/view/ViewGroup;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    check-cast v8, Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->r:Landroid/widget/PopupWindow;

    if-nez v8, :cond_2c8

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->t:Landroid/view/ViewGroup;

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    move-object v8, v6

    check-cast v8, Landroid/view/View;

    .line 41
    invoke-virtual {v8, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    move-object v8, v6

    check-cast v8, Landroid/view/View;

    .line 42
    invoke-virtual {v8}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    check-cast v6, Landroid/view/View;

    .line 43
    invoke-virtual {v6, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v6, Landroid/widget/ImageView;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    .line 44
    invoke-direct {v6, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->o:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    .line 46
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcei;->M()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->n:Lcom/google/android/gms/internal/ads/zzcfx;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->t:Landroid/view/ViewGroup;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->o:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2cb

    .line 48
    :cond_2c8
    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 49
    :goto_2cb
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    .line 50
    invoke-direct {v6, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->s:Landroid/widget/RelativeLayout;

    .line 51
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->s:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 52
    invoke-direct {v8, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->s:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/widget/PopupWindow;

    .line 54
    invoke-direct {v8, v6, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->r:Landroid/widget/PopupWindow;

    .line 55
    invoke-virtual {v8, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->r:Landroid/widget/PopupWindow;

    .line 56
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->r:Landroid/widget/PopupWindow;

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->d:Z

    xor-int/2addr v8, v7

    .line 57
    invoke-virtual {v6, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->s:Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    check-cast v8, Landroid/view/View;

    const/4 v12, -0x1

    .line 58
    invoke-virtual {v6, v8, v12, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    .line 59
    invoke-direct {v6, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->p:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 60
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    invoke-static {v8, v14}, Lcom/google/android/gms/internal/ads/zzbyt;->D(Landroid/content/Context;I)I

    move-result v8

    .line 61
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    invoke-static {v12, v14}, Lcom/google/android/gms/internal/ads/zzbyt;->D(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v6, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->c:Ljava/lang/String;

    .line 62
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v12
    :try_end_32d
    .catchall {:try_start_18c .. :try_end_32d} :catchall_47d

    sparse-switch v12, :sswitch_data_49c

    goto :goto_36d

    :sswitch_331
    const-string v12, "top-center"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36d

    const/4 v12, 0x1

    goto :goto_36e

    :sswitch_33b
    const-string v12, "bottom-center"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36d

    const/4 v12, 0x4

    goto :goto_36e

    :sswitch_345
    const-string v12, "bottom-right"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36d

    const/4 v12, 0x5

    goto :goto_36e

    :sswitch_34f
    const-string v12, "bottom-left"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36d

    const/4 v12, 0x3

    goto :goto_36e

    :sswitch_359
    const-string v12, "top-left"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36d

    const/4 v12, 0x0

    goto :goto_36e

    :sswitch_363
    const-string v12, "center"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36d

    const/4 v12, 0x2

    goto :goto_36e

    :cond_36d
    :goto_36d
    const/4 v12, -0x1

    :goto_36e
    const/16 v8, 0x9

    const/16 v14, 0xa

    if-eqz v12, :cond_3ad

    const/16 v5, 0xe

    if-eq v12, v7, :cond_3a6

    if-eq v12, v13, :cond_3a0

    const/16 v13, 0xc

    if-eq v12, v11, :cond_399

    if-eq v12, v10, :cond_392

    const/16 v5, 0xb

    if-eq v12, v9, :cond_38b

    .line 63
    :try_start_384
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 64
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3b3

    .line 65
    :cond_38b
    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3b3

    .line 67
    :cond_392
    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3b3

    .line 69
    :cond_399
    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3b3

    :cond_3a0
    const/16 v5, 0xd

    .line 71
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3b3

    .line 72
    :cond_3a6
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3b3

    .line 74
    :cond_3ad
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    :goto_3b3
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbpz;->p:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbpy;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzbpy;-><init>(Lcom/google/android/gms/internal/ads/zzbpz;)V

    .line 77
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbpz;->p:Landroid/widget/LinearLayout;

    const-string v8, "Close button"

    .line 78
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbpz;->s:Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->p:Landroid/widget/LinearLayout;

    .line 79
    invoke-virtual {v5, v8, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3cb
    .catchall {:try_start_384 .. :try_end_3cb} :catchall_47d

    :try_start_3cb
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbpz;->r:Landroid/widget/PopupWindow;

    .line 80
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    const/4 v8, 0x0

    aget v9, v15, v8

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/ads/zzbyt;->D(Landroid/content/Context;I)I

    move-result v6

    .line 82
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    aget v9, v15, v7

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzbyt;->D(Landroid/content/Context;I)I

    move-result v8

    const/4 v9, 0x0

    .line 83
    invoke-virtual {v5, v0, v9, v6, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_3ec
    .catch Ljava/lang/RuntimeException; {:try_start_3cb .. :try_end_3ec} :catch_424
    .catchall {:try_start_3cb .. :try_end_3ec} :catchall_47d

    :try_start_3ec
    aget v0, v15, v9

    aget v5, v15, v7

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbpz;->q:Lcom/google/android/gms/internal/ads/zzbqg;

    if-eqz v6, :cond_3fb

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbpz;->j:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbpz;->g:I

    .line 84
    invoke-interface {v6, v0, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzbqg;->b(IIII)V

    :cond_3fb
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzcfx;->b(II)Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v3

    .line 85
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzcei;->C0(Lcom/google/android/gms/internal/ads/zzcfx;)V

    const/4 v0, 0x0

    aget v3, v15, v0

    aget v0, v15, v7

    .line 86
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbpz;->m:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->o(Landroid/app/Activity;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v0, v4

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbpz;->j:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbpz;->g:I

    .line 87
    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbqf;->f(IIII)V

    const-string v0, "resized"

    .line 88
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->g(Ljava/lang/String;)V

    .line 89
    monitor-exit v2

    return-void

    :catch_424
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot show popup window: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbpz;->s:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    check-cast v3, Landroid/view/View;

    .line 91
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbpz;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_45f

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->o:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbpz;->t:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    check-cast v3, Landroid/view/View;

    .line 93
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbpz;->l:Lcom/google/android/gms/internal/ads/zzcei;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbpz;->n:Lcom/google/android/gms/internal/ads/zzcfx;

    .line 94
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzcei;->C0(Lcom/google/android/gms/internal/ads/zzcfx;)V

    .line 95
    :cond_45f
    monitor-exit v2

    return-void

    :cond_461
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    .line 96
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    .line 97
    monitor-exit v2

    return-void

    :cond_468
    :goto_468
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    .line 98
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    .line 99
    monitor-exit v2

    return-void

    :cond_46f
    const-string v0, "Invalid width and height options. Cannot resize."

    .line 100
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    .line 101
    monitor-exit v2

    return-void

    :cond_476
    const-string v0, "Cannot resize an expanded banner."

    .line 102
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    .line 103
    monitor-exit v2

    return-void

    :catchall_47d
    move-exception v0

    .line 104
    monitor-exit v2
    :try_end_47f
    .catchall {:try_start_3ec .. :try_end_47f} :catchall_47d

    goto :goto_481

    :goto_480
    throw v0

    :goto_481
    goto :goto_480

    :sswitch_data_482
    .sparse-switch
        -0x514d33ab -> :sswitch_175
        -0x3c587281 -> :sswitch_16b
        -0x27103597 -> :sswitch_161
        0x455fe3fa -> :sswitch_157
        0x4ccee637 -> :sswitch_14d
        0x68a23bcd -> :sswitch_143
    .end sparse-switch

    :sswitch_data_49c
    .sparse-switch
        -0x514d33ab -> :sswitch_363
        -0x3c587281 -> :sswitch_359
        -0x27103597 -> :sswitch_34f
        0x455fe3fa -> :sswitch_345
        0x4ccee637 -> :sswitch_33b
        0x68a23bcd -> :sswitch_331
    .end sparse-switch
.end method

.method public final j(IIZ)V
    .registers 4

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbpz;->k:Ljava/lang/Object;

    monitor-enter p3

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->e:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbpz;->f:I

    monitor-exit p3

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p3
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public final k(II)V
    .registers 3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->e:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbpz;->f:I

    return-void
.end method

.method public final l()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpz;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpz;->r:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
