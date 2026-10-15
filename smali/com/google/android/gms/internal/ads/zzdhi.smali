###### Class com.google.android.gms.internal.ads.zzdhi (com.google.android.gms.internal.ads.zzdhi)
.class public final Lcom/google/android/gms/internal/ads/zzdhi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field static final k:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final b:Lcom/google/android/gms/internal/ads/zzeyx;

.field private final c:Lcom/google/android/gms/internal/ads/zzdgn;

.field private final d:Lcom/google/android/gms/internal/ads/zzdgi;

.field private final e:Lcom/google/android/gms/internal/ads/zzdhu;

.field private final f:Lcom/google/android/gms/internal/ads/zzdic;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Lcom/google/android/gms/internal/ads/zzbdl;

.field private final j:Lcom/google/android/gms/internal/ads/zzdgf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdhi;->k:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzeyx;Lcom/google/android/gms/internal/ads/zzdgn;Lcom/google/android/gms/internal/ads/zzdgi;Lcom/google/android/gms/internal/ads/zzdhu;Lcom/google/android/gms/internal/ads/zzdic;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdgf;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhi;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhi;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzeyx;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhi;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdhi;->c:Lcom/google/android/gms/internal/ads/zzdgn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdhi;->d:Lcom/google/android/gms/internal/ads/zzdgi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdhi;->e:Lcom/google/android/gms/internal/ads/zzdhu;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdhi;->f:Lcom/google/android/gms/internal/ads/zzdic;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdhi;->g:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdhi;->h:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdhi;->j:Lcom/google/android/gms/internal/ads/zzdgf;

    return-void
.end method

.method private static g(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 7

    const/16 v0, 0x9

    const/16 v1, 0xa

    if-eqz p1, :cond_25

    const/4 v2, 0x2

    const/16 v3, 0xb

    const/16 v4, 0xc

    if-eq p1, v2, :cond_1e

    const/4 v2, 0x3

    if-eq p1, v2, :cond_17

    .line 1
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 3
    :cond_17
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 5
    :cond_1e
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 7
    :cond_25
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method private final h(Landroid/view/ViewGroup;Z)Z
    .registers 6

    if-eqz p2, :cond_9

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhi;->d:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdgi;->P()Landroid/view/View;

    move-result-object p2

    goto :goto_f

    .line 2
    :cond_9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhi;->d:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdgi;->Q()Landroid/view/View;

    move-result-object p2

    :goto_f
    if-nez p2, :cond_13

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_27

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->s3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_42

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 9
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_48

    .line 10
    :cond_42
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    .line 11
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 12
    :goto_48
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method final synthetic a(Landroid/view/ViewGroup;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->d:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->P()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->M()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->M()I

    move-result v2

    if-ne v2, v1, :cond_1c

    goto :goto_3a

    .line 2
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->M()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhi;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyx;->f:Ljava/lang/String;

    const-string v2, "2"

    .line 3
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->L0(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhi;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyx;->f:Ljava/lang/String;

    const-string v2, "1"

    .line 4
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->L0(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 5
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhi;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdhi;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzeyx;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->M()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-interface {v1, v2, v0, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->L0(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4b
    return-void
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/zzdie;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->c:Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgn;->f()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->c:Lcom/google/android/gms/internal/ads/zzdgn;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgn;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    move-object v4, v2

    goto :goto_33

    :cond_15
    :goto_15
    const-string v0, "1098"

    const-string v3, "3011"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1e
    const/4 v4, 0x2

    if-ge v3, v4, :cond_13

    .line 3
    aget-object v4, v0, v3

    .line 4
    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/ads/zzdie;->d0(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 5
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_30

    .line 6
    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_33

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 7
    :goto_33
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdie;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    .line 8
    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdhi;->d:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdgi;->O()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5d

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdgi;->O()Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdhi;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    if-nez v5, :cond_52

    goto :goto_8b

    :cond_52
    if-nez v4, :cond_8b

    .line 9
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzbdl;->s:I

    .line 10
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzdhi;->g(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8b

    :cond_5d
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdgi;->V()Lcom/google/android/gms/internal/ads/zzbdp;

    move-result-object v6

    .line 12
    instance-of v6, v6, Lcom/google/android/gms/internal/ads/zzbdg;

    if-nez v6, :cond_67

    move-object v0, v2

    goto :goto_8b

    :cond_67
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdgi;->V()Lcom/google/android/gms/internal/ads/zzbdp;

    move-result-object v5

    .line 13
    check-cast v5, Lcom/google/android/gms/internal/ads/zzbdg;

    if-nez v4, :cond_76

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbdg;->a()I

    move-result v6

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzdhi;->g(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 15
    :cond_76
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbdh;

    invoke-direct {v6, v0, v5, v3}, Lcom/google/android/gms/internal/ads/zzbdh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdg;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->q3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v0, v6

    :cond_8b
    :goto_8b
    const/4 v3, -0x1

    const/4 v5, 0x1

    if-nez v0, :cond_90

    goto :goto_d2

    .line 19
    :cond_90
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_a1

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a1
    if-eqz v4, :cond_aa

    .line 21
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_cb

    .line 23
    :cond_aa
    new-instance v4, Lcom/google/android/gms/ads/formats/zza;

    .line 24
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdie;->c()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/google/android/gms/ads/formats/zza;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 25
    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 27
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdie;->f()Landroid/widget/FrameLayout;

    move-result-object v6

    if-eqz v6, :cond_cb

    .line 28
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 29
    :cond_cb
    :goto_cb
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdie;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v0, v5}, Lcom/google/android/gms/internal/ads/zzdie;->t1(Ljava/lang/String;Landroid/view/View;Z)V

    .line 30
    :goto_d2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdhe;->C:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :cond_d9
    if-ge v6, v4, :cond_ee

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 32
    check-cast v7, Ljava/lang/String;

    .line 33
    invoke-interface {p1, v7}, Lcom/google/android/gms/internal/ads/zzdie;->d0(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    .line 34
    instance-of v8, v7, Landroid/view/ViewGroup;

    add-int/lit8 v6, v6, 0x1

    if-eqz v8, :cond_d9

    .line 35
    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_ef

    :cond_ee
    move-object v7, v2

    :goto_ef
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->h:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdhf;

    invoke-direct {v4, p0, v7}, Lcom/google/android/gms/internal/ads/zzdhf;-><init>(Lcom/google/android/gms/internal/ads/zzdhi;Landroid/view/ViewGroup;)V

    .line 36
    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-nez v7, :cond_fd

    goto/16 :goto_1ab

    .line 37
    :cond_fd
    invoke-direct {p0, v7, v5}, Lcom/google/android/gms/internal/ads/zzdhi;->h(Landroid/view/ViewGroup;Z)Z

    move-result v0

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->d:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->b0()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v1

    if-eqz v1, :cond_1ab

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->b0()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhh;

    invoke-direct {v1, p1, v7}, Lcom/google/android/gms/internal/ads/zzdhh;-><init>(Lcom/google/android/gms/internal/ads/zzdie;Landroid/view/ViewGroup;)V

    .line 38
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->K(Lcom/google/android/gms/internal/ads/zzbdk;)V

    return-void

    .line 39
    :cond_118
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->T8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 42
    invoke-direct {p0, v7, v1}, Lcom/google/android/gms/internal/ads/zzdhi;->h(Landroid/view/ViewGroup;Z)Z

    move-result v0

    if-eqz v0, :cond_145

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->d:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->Z()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v1

    if-eqz v1, :cond_1ab

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->Z()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhh;

    invoke-direct {v1, p1, v7}, Lcom/google/android/gms/internal/ads/zzdhh;-><init>(Lcom/google/android/gms/internal/ads/zzdie;Landroid/view/ViewGroup;)V

    .line 43
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->K(Lcom/google/android/gms/internal/ads/zzbdk;)V

    return-void

    .line 44
    :cond_145
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 45
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdie;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_152

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :cond_152
    if-eqz v2, :cond_1ab

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->j:Lcom/google/android/gms/internal/ads/zzdgf;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgf;->a()Lcom/google/android/gms/internal/ads/zzbdu;

    move-result-object v0

    if-eqz v0, :cond_1ab

    .line 48
    :try_start_15c
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->g()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_160
    .catch Landroid/os/RemoteException; {:try_start_15c .. :try_end_160} :catch_1a6

    if-eqz v0, :cond_1ab

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1ab

    new-instance v1, Landroid/widget/ImageView;

    .line 50
    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdie;->h()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    if-eqz p1, :cond_195

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->K5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 52
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18b

    goto :goto_195

    .line 54
    :cond_18b
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView$ScaleType;

    .line 55
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_19a

    .line 56
    :cond_195
    :goto_195
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdhi;->k:Landroid/widget/ImageView$ScaleType;

    .line 57
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_19a
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :catch_1a6
    const-string p1, "Could not get main image drawable"

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    :cond_1ab
    :goto_1ab
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzdie;)V
    .registers 3

    if-eqz p1, :cond_2a

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->e:Lcom/google/android/gms/internal/ads/zzdhu;

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdie;->f()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_2a

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->c:Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgn;->g()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    :try_start_16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdie;->f()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->e:Lcom/google/android/gms/internal/ads/zzdhu;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhu;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_23
    .catch Lcom/google/android/gms/internal/ads/zzcet; {:try_start_16 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception p1

    const-string v0, "web view can not be obtained"

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzdie;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdie;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhi;->c:Lcom/google/android/gms/internal/ads/zzdgn;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdgn;->a:Lcom/google/android/gms/internal/ads/zzeyc;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzbx;->h(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzeyc;)Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    .line 3
    :cond_16
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_20

    const-string p1, "Activity context is needed for policy validator."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhi;->f:Lcom/google/android/gms/internal/ads/zzdic;

    if-eqz v1, :cond_4b

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdie;->f()Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_2b

    goto :goto_4b

    :cond_2b
    :try_start_2b
    const-string v1, "window"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdie;->f()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhi;->f:Lcom/google/android/gms/internal/ads/zzdic;

    .line 6
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdic;->a(Landroid/view/View;Landroid/view/WindowManager;)Landroid/view/View;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzbx;->b()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 8
    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_44
    .catch Lcom/google/android/gms/internal/ads/zzcet; {:try_start_2b .. :try_end_44} :catch_45

    return-void

    :catch_45
    move-exception p1

    const-string v0, "web view can not be obtained"

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzdie;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdhg;-><init>(Lcom/google/android/gms/internal/ads/zzdhi;Lcom/google/android/gms/internal/ads/zzdie;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Landroid/view/ViewGroup;)Z
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdhi;->h(Landroid/view/ViewGroup;Z)Z

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzdhf (com.google.android.gms.internal.ads.zzdhf)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzdhi;

.field public final synthetic p:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhi;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhf;->o:Lcom/google/android/gms/internal/ads/zzdhi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhf;->p:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhf;->o:Lcom/google/android/gms/internal/ads/zzdhi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhf;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdhi;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdhg (com.google.android.gms.internal.ads.zzdhg)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzdhi;

.field public final synthetic p:Lcom/google/android/gms/internal/ads/zzdie;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhi;Lcom/google/android/gms/internal/ads/zzdie;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhg;->o:Lcom/google/android/gms/internal/ads/zzdhi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhg;->p:Lcom/google/android/gms/internal/ads/zzdie;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhg;->o:Lcom/google/android/gms/internal/ads/zzdhi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhg;->p:Lcom/google/android/gms/internal/ads/zzdie;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdhi;->b(Lcom/google/android/gms/internal/ads/zzdie;)V

    return-void
.end method
